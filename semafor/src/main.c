#include "delay.h"
#include "semafor.h"
#include "stm32f4xx.h"
#include "usart.h"
#include "ws2812b.h"

enum { emergency, normal } state = normal;

void init_GPIOC(void);

int main(void) {
  initUSART2(USART2_BAUDRATE_115200);
  printUSART2("\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");
  printUSART2("w Starting test app...");
  printUSART2("\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");

  init_TIM4();
  init_DMA1();
  init_GPIOC();

  initialize();

  while (1) {
    if (state) {
      printUSART2("main: state -> normal\n");
      traffic_light_sequence();
    } else {
      printUSART2("main: state -> emergency\n");
      reset_all();
      set_led_range(0, 64, RGB_RED);
      send_data();
    }
  }
}

void EXTI3_IRQHandler(void) {
  // delay_ms_irq(100);
  printUSART2("isr: GPIOC->IDR [%x]", GPIOC->IDR);
  if (EXTI->PR & EXTI_PR_PR3) {
    if (GPIOC->IDR & 0x0008) {
      state = emergency;
      // reset_all();
      // set_led_range(0, 64, RGB_RED);
      // send_data();
      printUSART2("HIGH\n");
    } else {
      printUSART2("LOW\n");
      state = normal;
    }
    EXTI->PR |= EXTI_PR_PR3;
  }
}
//
// void EXTI0_IRQHandler(void) {
//   state = emergency;
//   int i = 0;
//   reset_all();
//   for (; i < 64; ++i)
//     set_led(i, 255, 0, 0);
//   send_data();
// }
//
// void EXTI1_IRQHandler(void) { state = normal; }

void init_GPIOC(void) {
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOCEN;
  GPIOC->MODER &= ~GPIO_MODER_MODER3;
  GPIOC->PUPDR &= ~GPIO_PUPDR_PUPDR3;
  GPIOC->PUPDR |= GPIO_PUPDR_PUPDR3_1;

  RCC->APB2ENR |= RCC_APB2ENR_SYSCFGEN;
  NVIC_EnableIRQ(EXTI3_IRQn);

  SYSCFG->EXTICR[0] = SYSCFG_EXTICR1_EXTI3_PC;
  EXTI->IMR = EXTI_IMR_MR3;
  EXTI->EMR &= ~EXTI_EMR_MR3;
  EXTI->RTSR = EXTI_RTSR_TR3;
  EXTI->FTSR = EXTI_FTSR_TR3;
}
