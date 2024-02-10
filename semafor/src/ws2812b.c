#include "ws2812b.h"

volatile uint8_t tc_flag = 0;

void init_TIM4() {
  /// wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
  ///  setup PWM on TIM4 CH3 -> PD14
  ///----------------------------------------------------------------
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;
  GPIOD->MODER |= 0xAA000000;
  GPIOD->OTYPER |= 0x00000000;
  GPIOD->AFR[1] |= 0x22220000;

  RCC->APB1ENR |= RCC_APB1ENR_TIM4EN; // enable TIM4 on APB1
  TIM4->PSC = 0x0001 - 0x0001;        // 1 - 1
  TIM4->ARR = 0x0069 - 0x0001;        // 105 -> period of the PWM 1.25us

  TIM4->CCMR2 |= (TIM_CCMR2_OC3PE) | (TIM_CCMR2_OC3M_2) | (TIM_CCMR2_OC3M_1);
  // set PWM 1 mod, enable OC1PE preload mode

  // set active mode high for pulse polarity
  TIM4->CCER &= ~(TIM_CCER_CC3P);

  TIM4->CR1 |= (TIM_CR1_ARPE) | (TIM_CR1_URS);

  // update event, reload all config
  TIM4->EGR |= TIM_EGR_UG;

  // activate capture compare mode
  TIM4->CCER |= (TIM_CCER_CC3E);

  TIM4->DIER |= TIM_DIER_CC3DE | TIM_DIER_TDE;
  TIM4->EGR |= TIM_EGR_CC3G;
  // start counter
  // TIM4->CR1 |= TIM_CR1_CEN;
}

void init_DMA1() {
  // Channel 2 Stream 7 -> TIM4->CH3
  RCC->AHB1ENR |= RCC_AHB1ENR_DMA1EN;

  DMA1_Stream7->CR &= ~DMA_SxCR_EN;
  while (DMA1_Stream7->CR & DMA_SxCR_EN)
    ;

  DMA1_Stream7->CR &= 0xF0100000; // keep reserved bits

  // DMA1_Stream7->PAR = (uint32_t) & (TIM4->DMAR);
  // TIM4->DCR |= 0x010F;

  DMA1_Stream7->PAR = (uint32_t) & (TIM4->CCR3);
  DMA1_Stream7->M0AR = (uint32_t)rgb_buffer;

  DMA1_Stream7->NDTR = (__PIXEL_SIZE * __LED_SIZE) + __RESET_SIZE;
  TIM4->DIER |= TIM_DIER_UDE;

  DMA1_Stream7->CR |= DMA_SxCR_CHSEL_1; // Channel 2
  DMA1_Stream7->CR |= DMA_SxCR_PL_1;    // priority high

  DMA1_Stream7->CR |= DMA_SxCR_DIR_0;
  DMA1_Stream7->CR |= DMA_SxCR_MINC;
  DMA1_Stream7->CR |= DMA_SxCR_TCIE;

  DMA1_Stream7->CR |= DMA_SxCR_MSIZE_0;
  DMA1_Stream7->CR |= DMA_SxCR_PSIZE_0;

  // DMA1_Stream7->CR |= DMA_SxCR_EN;
  NVIC_SetPriority(DMA1_Stream7_IRQn, 0); // mozda?
  NVIC_EnableIRQ(DMA1_Stream7_IRQn);      // mozda?
}

void DMA1_Stream7_IRQHandler(void) {
  tc_flag = 1;
  DMA1->HIFCR |= DMA_HIFCR_CTCIF7;
}

void set_led(uint16_t index, uint8_t red, uint8_t green, uint8_t blue) {
  rgb[index].colors.blue = blue;
  rgb[index].colors.red = red;
  rgb[index].colors.green = green;
}

void set_led_range(uint16_t low, uint16_t high, uint8_t red, uint8_t green,
                   uint8_t blue) {
  for (; low < high; ++low) {
    set_led(low, red, green, blue);
  }
}

void send_data(void) {
  uint16_t i = 0;
  int index = 0;
  // uint32_t color = 0;

  union LED *led = rgb;
  for (i = 0; i < __LED_SIZE; ++i) {
    // color = ((led->green << 16) | (led->red << 8) | (led->blue));

    int j;
    for (j = 23; j >= 0; --j) {
      rgb_buffer[index] = (led->color & (1 << j)) ? __PWM_1 : __PWM_0;
      ++index;
    }
    ++led;
  }

  // --i;
  // i *= __PIXEL_SIZE;
  // uint16_t reset = i + __RESET_SIZE;

  i = 0;
  while (i < 40) {
    // rgb_buffer[i++] = 0;
    rgb_buffer[index] = 0;
    index++;
    ++i;
  }

  TIM4->CR1 |= TIM_CR1_CEN;
  DMA1_Stream7->CR |= DMA_SxCR_EN;

  while (!tc_flag) {
  }

  TIM4->CR1 &= ~TIM_CR1_CEN;
  DMA1_Stream7->CR &= ~DMA_SxCR_EN;
  tc_flag = 0;
}

void reset_led(uint16_t index) {
  rgb[index].color = 0;
  // union LED *led = rgb + sizeof(union LED) * index;
  // led->red = led->green = led->blue = 0;
}

void reset_all(void) {
  int i = 0;
  while (i < __LED_SIZE) {
    rgb[i].color = 0;
    // rgb[i].red = 0;
    // rgb[i].green = 0;
    // rgb[i].blue = 0;
    ++i;
  }
}
