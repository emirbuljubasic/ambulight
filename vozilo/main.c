#include "./delay.h"
#include "./stm32f4xx.h"
#include "./usart.h"

#include "./dac.h"
#include "cs43l22.h"
#include "math.h"
#include "mp45dt02.h"
#include "pdm_filter.h"

#define IR_50 500
#define IR_25 250

#define PI 3.14159
#define DAC_BUFF_SIZE 1000
#define T1 1e-3
#define T2 3e-3
#define T3 4e-3

#define IR_50 500
#define IR_25 250
#define IR_MARGIN_0 150
#define IR_MARGIN_1 350
#define IR_MARGIN_2 600
#define PERIOD_MARGIN_LOW 900
#define PERIOD_MARGIN_HIGH 1100

void init_TIM3();
void init_DMA1(void);

volatile int irq_counter = 0;
uint16_t pwm_recieved_bits = 0x0000;
uint16_t ambulance_id = 0xCA3A;

uint8_t pwm_cnt = 0;
uint8_t pwm_arr_size = 16;

uint16_t pwm[16] = {IR_25, IR_50, IR_25, IR_50, IR_50, IR_50,
                    IR_25, IR_25, IR_25, IR_50, IR_25, IR_50,
                    IR_25, IR_25, IR_50, IR_50}; // LSB FIRST!!

uint8_t lights_on = 0;
void getData4DAC(uint16_t *dac_buff, uint8_t type);

/// IR LED:             +(anode) PB6 |^| GND (cathode)-
/// IR PHOTODIODE:      +(anode) +5V |^| PA8 (chatode)-

void init_TIM1();

int main(void) {
  uint16_t dac_buff1[DAC_BUFF_SIZE];
  uint16_t dac_buff2[DAC_BUFF_SIZE];

  uint32_t k = 0;
  int temp = 0;

  init_TIM1();
  initUSART2(USART2_BAUDRATE_921600);

  initDAC1();
  initCS43L22(30, 48000);

  getData4DAC(dac_buff1, 1);
  getData4DAC(dac_buff2, 2);

  uint8_t pwm_cnt = 0;
  uint8_t pwm_arr_size = 16;
  //
  // Initializing PA0
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
  GPIOA->MODER &= ~0x00000003;
  GPIOA->PUPDR &= ~0x00000003;
  GPIOA->PUPDR |= 0x00000002;

  // // Initializing PD15 to mirror IR output
  // RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;
  // GPIOD->MODER |= 0x02000000;
  // GPIOD->OTYPER |= 0x00000000;
  // GPIOD->AFR[1] |= 0x00020000;
  // //
  // printUSART2("\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");
  // printUSART2(" Starting vehicle...");
  // printUSART2("\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");

  while (1) {
    //

    if (irq_counter == pwm_arr_size) {
      // GPIOC->ODR |= 0x0004;
      // TIM8->CNT |= 0xFFFF;
      // GPIOD->ODR |= 0x8000;
      // TIM8->CNT |= 0xFFFF;
      irq_counter = 0;
      // pwm_recieved_bits = 0x0000;

      printUSARTMOJ("GREAT SUCCESS!\n");
      printUSARTMOJ("%xw\n", pwm_recieved_bits);
      printUSARTMOJ("%xw\n\n", ambulance_id);
      pwm_recieved_bits = 0x0000;
      // irq_counter = 0;
      // time = getSYSTIMER();
      // printUSART2("TIME = %xw\n\n", time);
    }

    if ((GPIOA->IDR & 0x0001) == 0x0001) {
      // printUSART2("Button pressed!\n");
      delay_ms(500);
      if (!lights_on) {
        // printUSART2("IR -> Turning on...\n\n");
        lights_on = 1;
        init_TIM3();
        init_DMA1();
        DAC->CR |= DAC_CR_EN1; //
      } else {
        // printUSART2("IR -> Turning off...\n\n");
        lights_on = 0;
        pwm_cnt = 0;
        TIM3->CCR1 = 1;

        delay_ms(1);

        DMA1_Stream4->CR &= ~DMA_SxCR_EN;
        TIM3->CR1 &= ~TIM_CR1_CEN;
        DAC->CR &= ~DAC_CR_EN1;
        delay_ms(100);
      }
    }
    //
    // if (lights_on) {
    //   TIM3->CCR1 = pwm[pwm_cnt];
    //   delay_ms(50);
    //   pwm_cnt++;
    //   if (pwm_cnt == pwm_arr_size) {
    //     pwm_cnt = 0;
    //   }
    // }

    // send dummy data causing the I2S interface to generate the MCK
    //

    while ((SPI3->SR & 0x00000002) == 0)
      ;
    SPI3->DR = 0x00;

    if (temp == 0) {
      setDAC1(dac_buff1[k]);

      k++;
    }

    if (temp == 1) {
      setDAC1(dac_buff2[k]);
      k++;
    }

    if (k >= DAC_BUFF_SIZE) {

      k = 0;
      if (temp == 0)
        temp = 1;
      else
        temp = 0;
    }

    delay_us(500);
  }
}

void init_TIM3() {
  // Initializing PA6 as TIM3 Channel 1
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
  GPIOA->MODER |= GPIO_MODER_MODER6_1;
  GPIOA->OTYPER |= 0x00000000;
  GPIOA->AFR[0] |= 0x02000000;
  // GPIOA->PUPDR &= ~GPIO_PUPDR_PUPDR5;
  // GPIOA->PUPDR |= GPIO_PUPDR_PUPDR5_1;

  // Initializing TIM3 in PWM mode
  RCC->APB1ENR |= RCC_APB1ENR_TIM3EN;
  TIM3->PSC = 0x1068 - 0x0001; // psc = 4200 -> clock: 20000
  TIM3->ARR = 0x03E8;          // arr = 1000 -> period: 50ms
  TIM3->CCMR1 |= (TIM_CCMR1_OC1PE) | (TIM_CCMR1_OC1M_2) | (TIM_CCMR1_OC1M_1);
  TIM3->CCER &= ~(TIM_CCER_CC1P);
  TIM3->CR1 |= (TIM_CR1_ARPE) | (TIM_CR1_URS);

  TIM3->DIER |= TIM_DIER_CC1DE | TIM_DIER_TDE;
  TIM3->DIER |= TIM_DIER_UDE;

  TIM3->EGR |= TIM_EGR_UG;     // update event, reload all config
  TIM3->CCER |= TIM_CCER_CC1E; // activate capture compare mode
  TIM3->CR1 |= TIM_CR1_CEN;    // start counter
}

void init_DMA1(void) {
  // Channel 2 Stream 7 -> TIM4->CH3
  RCC->AHB1ENR |= RCC_AHB1ENR_DMA1EN;

  DMA1_Stream4->CR &= ~DMA_SxCR_EN;
  while (DMA1_Stream4->CR & DMA_SxCR_EN)
    ;

  DMA1_Stream4->CR &= 0xF0100000; // keep reserved bits

  // DMA1_Stream7->PAR = (uint32_t) & (TIM4->DMAR);
  // TIM4->DCR |= 0x010F;

  DMA1_Stream4->PAR = (uint32_t) & (TIM3->CCR1);
  DMA1_Stream4->M0AR = (uint32_t)pwm;

  DMA1_Stream4->NDTR = 16;

  DMA1_Stream4->CR |= 0x0A000000;    // Channel 5
  DMA1_Stream4->CR |= DMA_SxCR_PL_1; // priority high

  DMA1_Stream4->CR |= DMA_SxCR_DIR_0;
  DMA1_Stream4->CR |= DMA_SxCR_MINC;
  DMA1_Stream4->CR |= DMA_SxCR_TCIE;

  DMA1_Stream4->CR |= DMA_SxCR_MSIZE_0;
  DMA1_Stream4->CR |= DMA_SxCR_PSIZE_0;

  DMA1_Stream4->CR |= DMA_SxCR_CIRC;

  DMA1_Stream4->CR |= DMA_SxCR_EN;
  NVIC_SetPriority(DMA1_Stream4_IRQn, 0); // mozda?
  NVIC_EnableIRQ(DMA1_Stream4_IRQn);      // mozda?
}

void DMA1_Stream4_IRQHandler(void) {
  lights_on = 1;
  DMA1->HIFCR |= DMA_HIFCR_CTCIF4;
  // DMA1_Stream4->NDTR = 16;
}

void getData4DAC(uint16_t *dac_buff, uint8_t type) {
  uint16_t n;
  float y, t = 0;
  for (n = 0; n < (DAC_BUFF_SIZE); n++) {
    if (type == 0x01)
      y = 0.4 * sinf(2 * PI * 5000 * t) + 0.5;
    else if (type == 0x02)
      y = 0.4 * sinf(2 * PI * 4000 * t) + 0.5;
    dac_buff[n] = (uint16_t)(y * 4095);
    t = t + 0.5e-4;
  }
}

void init_TIM1() {
  // Initializing PA8 as TIM8 Channel 1
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
  GPIOA->MODER &= ~GPIO_MODER_MODER8;
  GPIOA->MODER |= GPIO_MODER_MODER8_1;
  GPIOA->AFR[1] |= 0x00000001;
  GPIOA->PUPDR &= ~GPIO_PUPDR_PUPDR8;
  GPIOA->PUPDR |= GPIO_PUPDR_PUPDR8_1;

  // Initializing TIM1 in input PWM mode
  RCC->APB2ENR |= RCC_APB2ENR_TIM1EN;
  TIM1->PSC = 0x20D0 - 0x0001; // psc = 8400 -> clock: 20000
  TIM1->ARR = 0x07D0;          // arr = 2000 period: 100ms
  // TIM1->PSC = 0x20D0 - 0x0001;        // psc = 8400 -> clock: 20000
  // TIM1->ARR = 0x4E20;                 // arr = 20000 period: 1000ms
  TIM1->CR1 = 0x0000;
  TIM1->CR2 = 0x0000;

  TIM1->CCMR1 &= ~(TIM_CCMR1_CC1S);
  TIM1->CCMR1 &= ~(TIM_CCMR1_CC2S);
  TIM1->CCMR1 |= (TIM_CCMR1_CC1S_0) | (TIM_CCMR1_CC2S_1);

  TIM1->CCER &= ~(TIM_CCER_CC1P);
  TIM1->CCER &= ~(TIM_CCER_CC1NP);
  TIM1->CCER &= ~(TIM_CCER_CC2NP);
  TIM1->CCER |= (TIM_CCER_CC2P);
  TIM1->CCER |= (TIM_CCER_CC1E) | (TIM_CCER_CC2E);

  TIM1->SMCR &= ~(TIM_SMCR_TS);
  TIM1->SMCR &= ~(TIM_SMCR_SMS);
  TIM1->SMCR |= (TIM_SMCR_TS_2) | (TIM_SMCR_TS_0) | (TIM_SMCR_SMS_2);

  TIM1->DIER |= TIM_DIER_CC1IE;
  NVIC_EnableIRQ(TIM1_CC_IRQn);
  TIM1->CR1 |= TIM_CR1_CEN;
}

void TIM1_CC_IRQHandler(void) {
  printUSARTMOJ("interrupt");
  if (TIM1->SR & TIM_SR_CC1IF) {
    printUSARTMOJ("Period: %xw\nDuty C: %xw\n\n", TIM1->CCR1, TIM1->CCR2);
    uint16_t current_bit = ambulance_id & (0x0001 << irq_counter);
    if (TIM1->CCR1 >= PERIOD_MARGIN_LOW && TIM1->CCR1 <= PERIOD_MARGIN_HIGH &&
        TIM1->CCR2 >= IR_MARGIN_0 && TIM1->CCR2 <= IR_MARGIN_2) {
      if ((TIM1->CCR2 >= IR_MARGIN_1 && current_bit) ||
          (TIM1->CCR2 <= IR_MARGIN_1 && !current_bit)) {
        if (current_bit) {
          pwm_recieved_bits |= (0x0001 << irq_counter);
        }
        irq_counter++;
        // if (irq_counter == 16) {
        //   printUSART2("GREAT SUCCESS!\n");
        //   GPIOC->ODR |= 0x0004;
        //   delay_ms(100);
        //   irq_counter = 0;
        //   pwm_cnt = 0;
        // }
      } else {
        irq_counter = 0;
        // pwm_recieved_bits = 0;
      }
    }
  }

  // Clear the interrupt flag
  TIM1->SR &= ~TIM_SR_CC1IF;
}
