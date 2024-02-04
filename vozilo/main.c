#include "./delay.h"
#include "./stm32f4xx.h"
#include "./usart.h"

#define IR_50 5000
#define IR_25 2500

void init_TIM4();
void init_TIM1();

/// wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
/// IR LED:             +(anode) PD12 |^| GND (cathode)-
/// IR PHOTOTRANSISTOR: +(collector) +5V |^| PA8 (emitter)-

int main(void) {
  /// wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
  GPIOA->MODER &= ~0x00000003;
  GPIOA->PUPDR &= ~0x00000003;
  GPIOA->PUPDR |= 0x00000002;

  GPIOA->MODER &= ~0x0000000C;
  GPIOA->PUPDR &= ~0x00030000;
  GPIOA->PUPDR |= 0x00020000;
  /// wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
  uint32_t cnt = 0, time;
  const uint8_t pwm_arr_size = 15;
  uint16_t pwm[15] = {IR_25, IR_25, IR_25, IR_50, IR_50, IR_50, IR_25, IR_50,
                      IR_25, IR_50, IR_25, IR_50, IR_50, IR_25, IR_25};
  uint8_t pwm_cnt = 0;
  uint8_t lights_on = 0;

  initUSART2(USART2_BAUDRATE_115200);
  printUSART2("\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");
  printUSART2("w Starting test app...");
  printUSART2("\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");

  /// wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
  ///  setup PWM on TIM4 CH1, CH2, CH3 & CH4 -> PD12, PD13, PD14 & PD15
  ///----------------------------------------------------------------
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;
  GPIOD->MODER |= 0x12000000;
  GPIOD->OTYPER |= 0x00000000;
  GPIOD->OSPEEDR |= 0x30000000;
  GPIOD->AFR[1] |= 0x00020000;
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN;
  GPIOB->MODER |= 0x00002000;
  GPIOB->OTYPER |= 0x00000000;
  GPIOB->AFR[0] |= 0x02000000;

  init_TIM1();
  init_TIM4();

  while (1) {
    // printUSART2("-> SW: test [%d]\n",cnt);
    // uint32_t utmp32 = TIM4->CNT;
    // printUSART2("-> TIM4->CNT: [%d]\n",utmp32);
    // cnt++;

    if ((GPIOA->IDR & 0x0001) == 0x0001) {
      printUSART2("Button pressed!\n");
      if (!lights_on) {
        printUSART2("Turning on...\n\n");
        lights_on = 1;
        init_TIM4();
      } else {
        printUSART2("Turning off...\n\n");
        lights_on = 0;
        pwm_cnt = 0;
        TIM4->CCR1 = 1;
        TIM4->EGR |= TIM_EGR_UG;
        delay_ms(1);
        TIM4->CR1 &= ~TIM_CR1_CEN;
        delay_ms(300);
      }
    }

    if (lights_on) {
      TIM4->CCR1 = pwm[pwm_cnt];
      delay_ms(500);
      pwm_cnt++;
      if (pwm_cnt == pwm_arr_size) {
        pwm_cnt = 0;
      }
    }

    if ((GPIOA->IDR & 0x0002) == 0x0002) {
      GPIOD->ODR |= 0x4000;
    } else {
      GPIOD->ODR &= ~0x4000;
    }
  }
}

void init_TIM4() {
  RCC->APB1ENR |= RCC_APB1ENR_TIM4EN;
  TIM4->PSC = 0x20d0 - 0x0001; // psc = 8400 -> clock: 10000
  TIM4->ARR = 0x02710;         // arr = 10000 -> period: 1s
  TIM4->CCMR1 |= (TIM_CCMR1_OC1PE) | (TIM_CCMR1_OC1M_2) | (TIM_CCMR1_OC1M_1);
  TIM4->CCER &= ~(TIM_CCER_CC1P);
  TIM4->CR1 |= (TIM_CR1_ARPE) | (TIM_CR1_URS);

  TIM4->CCR1 = 0x1388; // ccr = 500  | duty cycle 50%
  // TIM4->CCR1 = 0x09c4; // ccr = 250 | duty cycle 25%

  TIM4->EGR |= TIM_EGR_UG;       // update event, reload all config
  TIM4->CCER |= (TIM_CCER_CC1E); // activate capture compare mode
  TIM4->CR1 |= TIM_CR1_CEN;      // start counter
                                 // GPIOD->ODR &= ~0x0040;
}

void init_TIM1() {
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN; // enable clock for GPIOA
  GPIOA->MODER &= ~GPIO_MODER_MODER8;
  GPIOA->MODER |= GPIO_MODER_MODER8_1; // activate alternate function on PA8
  GPIOA->AFR[1] |= 0x00000001;

  RCC->APB2ENR |= RCC_APB2ENR_TIM1EN; // enable TIM1 on APB2
  TIM1->PSC = 0x41a0 - 0x0001;        // psc = 16800 -> clock: 10000
  TIM1->ARR = 0x4e20;                 // arr = 20000 period: 2s
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
  printUSART2("IRQ\n");
  if (TIM1->SR & TIM_SR_CC1IF) {
    // Your code to handle the captured data
    uint16_t capturedValue = TIM1->CCR1;
    uint16_t capturedValue2 = TIM1->CCR2;
    // Do something with capturedValue
    printUSART2("Period: ");
    printUSART2("%xw\n", capturedValue);
    printUSART2("Duty C: ");
    printUSART2("%xw", capturedValue2);
    printUSART2("\n\n");
  }
  // Clear the interrupt flag
  TIM1->SR &= ~TIM_SR_CC1IF;
}
