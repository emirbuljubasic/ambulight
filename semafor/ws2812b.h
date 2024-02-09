#ifndef __WS2812B_H
#define __WS2812B_H

#include "stm32f4xx.h"
#include "usart.h"

#define __LED_SIZE 192
#define __BRIGHTNESS_CONTROL 0

#define __PIXEL_SIZE 24
#define __RESET_SIZE 50

#define __PWM_0 34
#define __PWM_1 67

union LED {
  struct {
    uint8_t blue;
    uint8_t red;
    uint8_t green;
  } colors;
  uint32_t color;
};

union LED rgb[__LED_SIZE];

uint16_t rgb_buffer[(__PIXEL_SIZE * __LED_SIZE) + __RESET_SIZE];

void init_TIM4();
void init_DMA1();

void set_led(uint16_t index, uint8_t red, uint8_t green, uint8_t blue);
void send_data(void);
void reset_led(uint16_t index);
void reset_all(void);

#endif // __WS2812B_H
