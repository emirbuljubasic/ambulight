#include "delay.h"
#include "semafor.h"
#include "usart.h"
#include "ws2812b.h"

int main(void) {
  initUSART2(USART2_BAUDRATE_115200);
  printUSART2("\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");
  printUSART2("w Starting test app...");
  printUSART2("\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");

  init_TIM4();
  init_DMA1();

  // reset_all();

  // initialize();
  while (1) {
    traffic_light_sequence();
  }
}

void EXTI0_IRQHandler(void) {
  int i = 0;
  reset_all();
  for (; i < 64; ++i)
    set_led(i, 255, 0, 0);
}
