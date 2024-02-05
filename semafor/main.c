#include "delay.h"
#include "stm32f4xx.h"
#include "usart.h"

#define PWM_CNT_ARRAY_SIZE 24
#define ledHIGH 0x2F
#define ledLOW 0x22

uint16_t pwm[2] = {34, 67};
void send_pixel(uint32_t *pixels, uint8_t size);
int main(void) {
  uint32_t cnt = 0, time;
  // uint16_t pwm[PWM_CNT_ARRAY_SIZE] = {ledHIGH, ledHIGH, ledHIGH, ledHIGH,
  // ledHIGH, ledHIGH, ledHIGH, ledHIGH, ledHIGH, ledHIGH, ledHIGH, ledHIGH,
  // ledHIGH, ledHIGH, ledHIGH, ledHIGH, ledHIGH, ledHIGH, ledHIGH, ledHIGH,
  // ledHIGH, ledHIGH, ledHIGH, ledHIGH};
  uint8_t pwm_cnt = 0;

  initUSART2(USART2_BAUDRATE_115200);
  printUSART2("\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");
  printUSART2("w Starting test app...");
  printUSART2("\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");

  /// wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
  ///  setup PWM on TIM4 CH1, CH2, CH3 & CH4 -> PD12, PD13, PD14 & PD15
  ///----------------------------------------------------------------
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN; //
  GPIOD->MODER |= 0xAA000000;          //
  GPIOD->OTYPER |= 0x00000000;         //
  GPIOD->AFR[1] |= 0x22220000;         //

  {
    RCC->APB1ENR |= RCC_APB1ENR_TIM4EN; // enable TIM4 on APB1
    TIM4->PSC = 1 - 1;                  // set TIM4 counting prescaler
    // 1 - 1
    // 84MHz/84 = 1MHz -> count each 1us
    TIM4->ARR = 105; // period of the PWM 1ms
    // 105
    TIM4->CCR1 = 0x0000; // duty cycle for the PWM set to 0%
    TIM4->CCR2 = 0x0000;
    TIM4->CCR3 = 0x0000;
    TIM4->CCR4 = 0x0000;

    TIM4->CCMR1 |= (TIM_CCMR1_OC1PE) | (TIM_CCMR1_OC1M_2) | (TIM_CCMR1_OC1M_1);
    TIM4->CCMR1 |= (TIM_CCMR1_OC2PE) | (TIM_CCMR1_OC2M_2) | (TIM_CCMR1_OC2M_1);
    TIM4->CCMR2 |= (TIM_CCMR2_OC3PE) | (TIM_CCMR2_OC3M_2) | (TIM_CCMR2_OC3M_1);
    TIM4->CCMR2 |= (TIM_CCMR2_OC4PE) | (TIM_CCMR2_OC4M_2) | (TIM_CCMR2_OC4M_1);
    // set PWM 1 mod, enable OC1PE preload mode

    // set active mode high for pulse polarity
    TIM4->CCER &= ~((TIM_CCER_CC1P) | (TIM_CCER_CC2P) | (TIM_CCER_CC3P) |
                    (TIM_CCER_CC4P));
    TIM4->CR1 |= (TIM_CR1_ARPE) | (TIM_CR1_URS);

    // update event, reload all config
    TIM4->EGR |= TIM_EGR_UG;
    // activate capture compare mode
    TIM4->CCER |=
        (TIM_CCER_CC1E) | (TIM_CCER_CC2E) | (TIM_CCER_CC3E) | (TIM_CCER_CC4E);
    // start counter
    TIM4->CR1 |= TIM_CR1_CEN;
  }
  // int i = 0;

  // uint8_t rgb_first[3] = {255, 0, 0};
  // uint8_t rgb_second[3] = {0, 255, 0};
  while (1) {
    // uint32_t pixels[] = {0x000000FF, 0x0000FF00};
    // send_pixel(pixels, 2);
    // delay_us(50);
    // PRVA DIDOA
    // GREEN
    int i = 0;
    for (; i < 16; ++i) {
      TIM4->CCR1 = pwm[1];
      TIM4->CCR2 = pwm[1];
      TIM4->CCR3 = pwm[1];
      TIM4->CCR4 = pwm[1];
      delay_us(8);
      // RED
      //
      TIM4->CCR1 = pwm[0];
      TIM4->CCR2 = pwm[0];
      TIM4->CCR3 = pwm[0];
      TIM4->CCR4 = pwm[0];
      delay_us(8);
      //
      // BLUE
      //
      TIM4->CCR1 = pwm[0];
      TIM4->CCR2 = pwm[0];
      TIM4->CCR3 = pwm[0];
      TIM4->CCR4 = pwm[0];
      delay_us(8);
    }

    TIM4->CCR4 = 0;
    delay_us(50);

    //
    // DRUGA DIODA
    //
    // GREEN

    // TIM4->CCR1 = pwm[1];
    // TIM4->CCR2 = pwm[1];
    // TIM4->CCR3 = pwm[1];
    // TIM4->CCR4 = pwm[1];
    // delay_us(8);
    //
    // // RED
    // TIM4->CCR1 = pwm[0];
    // TIM4->CCR2 = pwm[0];
    // TIM4->CCR3 = pwm[0];
    // TIM4->CCR4 = pwm[0];
    // delay_us(8);
    //
    // // BLUE
    // TIM4->CCR1 = pwm[0];
    // TIM4->CCR2 = pwm[0];
    // TIM4->CCR3 = pwm[0];
    // TIM4->CCR4 = pwm[0];
    // delay_us(8);

    // printUSART2("-> SW: test [%d]\n", cnt);
    // cnt++;
    // uint32_t utmp32 = TIM4->CNT;
    // printUSART2("-> TIM4->CNT: [%d]\n", utmp32);
    // printUSART2("-> GPIOD->ODR: [%d]\n", GPIOD->ODR & 0x0000F000);
    // /* delay_us(50); */
    // pwm_cnt++;
    // if(pwm_cnt == (PWM_CNT_ARRAY_SIZE))
    // 	pwm_cnt = 0;
  }
}

void send_pixel(uint32_t *pixels, uint8_t size) {
  int i = 0;
  int j = 0;
  uint32_t grb;

  for (j = 0; j < size; ++j) {
    grb = pixels[i];
    for (i = 0; i < 24; ++i) {
      TIM4->CCR4 = pwm[grb >> i & 1];
      delay_us(1);
    }
  }
}
