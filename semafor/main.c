#include "delay.h"
#include "stm32f4xx.h"
#include "usart.h"

#define MAX_LED 64
#define USE_BRIGHTNESS 0

uint16_t pwm[2] = {34, 67};

uint8_t LED_Data[MAX_LED][4];
uint8_t LED_Mod[MAX_LED][4];

volatile int datasentflag = 0;

#define buffSize 24
uint16_t colorBuff[(buffSize * MAX_LED) + 50];

void init_TIM4();
void init_DMA1();
void send(int green, int red, int blue);

void set_LED(int LEDnum, int red, int green, int blue);
void WS2812_send(void);
void reset_LED(void);

void reset(void);

int main(void) {
  uint32_t cnt = 0, time;
  uint8_t pwm_cnt = 0;

  initUSART2(USART2_BAUDRATE_115200);
  printUSART2("\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");
  printUSART2("w Starting test app...");
  printUSART2("\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");

  init_TIM4();
  init_DMA1();

  // int arr[11] = {24, 25, 26, 39, 40, 41, 42, 55, 56, 57, 58};
  // int arr2[13] = {27, 31, 32, 36, 43, 45, 47, 48, 49, 51, 52, 59, 63};
  int i;
  for (i = 0; i < MAX_LED; ++i) {
    set_LED(i, 255, i, i * 2);
  }
  WS2812_send();
  delay_ms(5000);

  DMA2->LIFCR |= DMA_LIFCR_CTCIF3;

  printUSART2("pripremam drugi set\n");
  for (i = 0; i < MAX_LED; ++i) {
    set_LED(i, 0, 255, 0);
  }

  WS2812_send();

  // send(0, 255, 255);
  while (1) {

    // for (i = 0; i < MAX_LED; ++i) {
    //   set_LED(i, 255, 255, 0);
    // }
    // WS2812_send();
    // delay_ms(2000);
    //
    // for (i = 0; i < MAX_LED; ++i) {
    //   set_LED(i, 255, 0, 0);
    // }
    // WS2812_send();
    // delay_ms(2000);
  }
}

void init_TIM4() {
  /// wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
  ///  setup PWM on TIM4 CH1, CH2, CH3 & CH4 -> PD12, PD13, PD14 & PD15
  ///----------------------------------------------------------------
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN; //
  GPIOD->MODER |= 0xAA000000;          //
  GPIOD->OTYPER |= 0x00000000;         //
  GPIOD->AFR[1] |= 0x22220000;         //

  RCC->APB1ENR |= RCC_APB1ENR_TIM4EN; // enable TIM4 on APB1
  TIM4->PSC = 0x0001 - 0x0001;        // 1 - 1
  TIM4->ARR = 0x0069 - 0x0001;        // period of the PWM 1.25us
  // 105
  // TIM4->CCR1 = 0x0000; // duty cycle for the PWM set to 0%
  // TIM4->CCR2 = 0x0000;
  TIM4->CCR3 = 0x0000;
  // TIM4->CCR4 = 0x0000;

  TIM4->CCMR1 |= (TIM_CCMR1_OC1PE) | (TIM_CCMR1_OC1M_2) | (TIM_CCMR1_OC1M_1);
  TIM4->CCMR1 |= (TIM_CCMR1_OC2PE) | (TIM_CCMR1_OC2M_2) | (TIM_CCMR1_OC2M_1);
  TIM4->CCMR2 |= (TIM_CCMR2_OC3PE) | (TIM_CCMR2_OC3M_2) | (TIM_CCMR2_OC3M_1);
  TIM4->CCMR2 |= (TIM_CCMR2_OC4PE) | (TIM_CCMR2_OC4M_2) | (TIM_CCMR2_OC4M_1);
  // set PWM 1 mod, enable OC1PE preload mode

  // set active mode high for pulse polarity
  TIM4->CCER &=
      ~((TIM_CCER_CC1P) | (TIM_CCER_CC2P) | (TIM_CCER_CC3P) | (TIM_CCER_CC4P));
  TIM4->CR1 |= (TIM_CR1_ARPE) | (TIM_CR1_URS);

  // update event, reload all config
  TIM4->EGR |= TIM_EGR_UG;
  // activate capture compare mode
  TIM4->CCER |=
      (TIM_CCER_CC1E) | (TIM_CCER_CC2E) | (TIM_CCER_CC3E) | (TIM_CCER_CC4E);

  TIM4->DIER |= TIM_DIER_CC3DE;
  TIM4->EGR |= TIM_EGR_CC3G;
  // start counter
  TIM4->CR1 |= TIM_CR1_CEN;
}

void init_DMA1() {
  // Channel 2 Stream 7 -> TIM4->CH3
  RCC->AHB1ENR = RCC_AHB1ENR_DMA1EN;

  DMA1_Stream7->CR &= ~DMA_SxCR_EN;
  while (DMA1_Stream7->CR & DMA_SxCR_EN)
    ;

  DMA1_Stream7->CR &= 0xF0100000; // keep reserved bits

  DMA1->LISR ^= DMA1->LISR;
  DMA1->HISR ^= DMA1->HISR;

  DMA1_Stream7->PAR = (uint32_t) & (TIM4->CCR3);
  DMA1_Stream7->M0AR = (uint32_t)colorBuff;

  DMA1_Stream7->NDTR = buffSize * MAX_LED;

  DMA1_Stream7->CR |= DMA_SxCR_CHSEL_1; // Channel 2
  DMA1_Stream7->CR |= DMA_SxCR_PL_1;    // priority high

  DMA1_Stream7->CR |= DMA_SxCR_DIR_0;
  DMA1_Stream7->CR |= DMA_SxCR_MINC;
  DMA1_Stream7->CR |= DMA_SxCR_TCIE;

  DMA1_Stream7->CR |= DMA_SxCR_MSIZE_0;
  DMA1_Stream7->CR |= DMA_SxCR_PSIZE_0;

  // DMA1_Stream7->CR |= DMA_SxCR_EN;
  // NVIC_SetPriority(DMA2_Stream7_IRQn, 0); // mozda?
  NVIC_EnableIRQ(DMA2_Stream7_IRQn); // mozda?
}

void DMA2_Stream7_IRQHandler(void) {
  DMA2_Stream7->CR &= ~DMA_SxCR_EN;
  DMA2->LIFCR |= DMA_LIFCR_CTCIF3;
  datasentflag = 1;
}

void send(int green, int red, int blue) {
  uint32_t data = (blue << 16) | (red << 8) | green;
  int i;
  for (i = 23; i >= 0; --i) {
    if (data & (1 << i))
      colorBuff[i] = pwm[1];
    else
      colorBuff[i] = pwm[0];
  }
  // TIM4->CR1 |= TIM_CR1_CEN;
  DMA1_Stream7->CR |= DMA_SxCR_EN;
}

void set_LED(int LEDnum, int red, int green, int blue) {
  LED_Data[LEDnum][0] = LEDnum;
  LED_Data[LEDnum][1] = green;
  LED_Data[LEDnum][2] = red;
  LED_Data[LEDnum][3] = blue;
}

void WS2812_send(void) {
  uint32_t index = 0;
  uint32_t color;

  int i;
  for (i = 0; i < MAX_LED; ++i) {
    color = ((LED_Data[i][1] << 16) | (LED_Data[i][2] << 8) | (LED_Data[i][3]));

    int j;
    for (j = 23; j >= 0; --j) {
      if (color & (1 << j))
        colorBuff[index] = pwm[1];
      else
        colorBuff[index] = pwm[0];

      ++index;
    }
  }

  for (i = 0; i < 50; ++i) {
    colorBuff[index] = 0;
    index++;
  }

  TIM4->CR1 |= TIM_CR1_CEN;
  DMA1_Stream7->CR |= DMA_SxCR_EN;

  // while (!datasentflag) {
  // printUSART2("u petlji\n");
  // }
  // DMA1_Stream7->CR &= ~DMA_SxCR_EN;
  printUSART2("izaso\n");
  datasentflag = 0;
}

void reset_LED(void) {
  int i;
  for (i = 0; i < MAX_LED; ++i) {
    LED_Data[i][0] = i;
    LED_Data[i][1] = 0;
    LED_Data[i][2] = 0;
    LED_Data[i][3] = 0;
  }
}
