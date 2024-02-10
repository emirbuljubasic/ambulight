#include "./delay.h"
#include "./stm32f4xx.h"
#include "./usart.h"

#define IR_50 500
#define IR_25 250

void init_TIM4();

/// IR LED:             +(anode) PB6 |^| GND (cathode)-
/// IR PHOTODIODE:      +(anode) +5V |^| PA8 (chatode)-

int main(void) {
  uint16_t pwm[16] = {IR_25, IR_50, IR_25, IR_50, 
                      IR_50, IR_50, IR_25, IR_25, 
                      IR_25, IR_50, IR_25, IR_50, 
                      IR_25, IR_25, IR_50, IR_50}; // LSB FIRST!!
  uint8_t pwm_cnt = 0;
  uint8_t pwm_arr_size = 16;
  uint8_t lights_on = 0;

  /// Initializing PA0
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
  GPIOA->MODER &= ~0x00000003;
  GPIOA->PUPDR &= ~0x00000003;
  GPIOA->PUPDR |= 0x00000002;

  // Initializing PD15 to mirror IR output
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;
  GPIOD->MODER |= 0x02000000;
  GPIOD->OTYPER |= 0x00000000;
  GPIOD->AFR[1] |= 0x00020000;


  initUSART2(USART2_BAUDRATE_921600);
  printUSART2("\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");
  printUSART2(" Starting vehicle...");
  printUSART2("\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");

  while (1) {

    if ((GPIOA->IDR & 0x0001) == 0x0001) {
      delay_ms(500);
      printUSART2("Button pressed!\n");
      if (!lights_on) {
        printUSART2("IR -> Turning on...\n\n");
        lights_on = 1;
        init_TIM4();
      } else {
        printUSART2("IR -> Turning off...\n\n");
        lights_on = 0;
        pwm_cnt = 0;
        TIM4->CCR1 = 1;
        TIM4->EGR |= TIM_EGR_UG;
        delay_ms(1);
        TIM4->CR1 &= ~TIM_CR1_CEN;
        delay_ms(100);
      }
    }

    if (lights_on) {
      TIM4->CCR1 = pwm[pwm_cnt];
      delay_ms(50);
      pwm_cnt++;
      if (pwm_cnt == pwm_arr_size) {
        pwm_cnt = 0;
      }
    }
  }
}

void init_TIM4() {
  // Initializing PB6 as TIM4 Channel 1 
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN;
  GPIOB->MODER |= 0x00002000;
  GPIOB->OTYPER |= 0x00000000;
  GPIOB->AFR[0] |= 0x02000000;
  GPIOA->PUPDR &= ~0x00030000;
  GPIOA->PUPDR |= 0x00020000;

  // Initializing TIM4 in PWM mode
  RCC->APB1ENR |= RCC_APB1ENR_TIM4EN;
  TIM4->PSC = 0x1068 - 0x0001;        // psc = 4200 -> clock: 20000
  TIM4->ARR = 0x03E8;                 // arr = 1000 -> period: 50ms
  TIM4->CCMR1 |= (TIM_CCMR1_OC1PE) | (TIM_CCMR1_OC1M_2) | (TIM_CCMR1_OC1M_1);
  TIM4->CCER &= ~(TIM_CCER_CC1P);
  TIM4->CR1 |= (TIM_CR1_ARPE) | (TIM_CR1_URS);

  TIM4->EGR |= TIM_EGR_UG;        // update event, reload all config
  TIM4->CCER |= TIM_CCER_CC1E;    // activate capture compare mode
  TIM4->CR1 |= TIM_CR1_CEN;       // start counter
}
