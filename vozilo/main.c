#include "./delay.h"
#include "./stm32f4xx.h"
#include "./usart.h"

#define IR_50 500
#define IR_25 250
#define IR_MARGIN_0 150
#define IR_MARGIN_1 350
#define IR_MARGIN_2 600
#define PERIOD_MARGIN_LOW 900
#define PERIOD_MARGIN_HIGH 1100
// #define IR_50 5000
// #define IR_25 2500
// #define IR_MARGIN_0 1500
// #define IR_MARGIN_1 3500
// #define IR_MARGIN_2 6000
// #define PERIOD_MARGIN_LOW 9000
// #define PERIOD_MARGIN_HIGH 11000

volatile irq_counter = 0;
uint16_t pwm_recieved_bits = 0x0000;
uint16_t ambulance_id = 0xCA3A;
uint16_t pwm[16] = {IR_25, IR_50, IR_25, IR_50, 
                    IR_50, IR_50, IR_25, IR_25, 
                    IR_25, IR_50, IR_25, IR_50, 
                    IR_25, IR_25, IR_50, IR_50}; // LSB FIRST!!
uint8_t pwm_cnt = 0;
uint8_t pwm_arr_size = 16;

void init_TIM4();
void init_TIM1();
void init_TIM8();
// void init_DMA1();

/// wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
/// IR LED:             +(anode) PB6 |^| GND (cathode)-
/// IR PHOTODIODE:      +(anode) +5V |^| PA8 (chatode)-

int main(void) {
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

  uint32_t cnt = 0, time;
  uint8_t lights_on = 0;

  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOCEN;
	GPIOC->MODER &= ~GPIO_MODER_MODER2;
	GPIOC->MODER |= GPIO_MODER_MODER2_0;
	GPIOC->OSPEEDR |= GPIO_OSPEEDER_OSPEEDR2;
	// GPIOC->OTYPER |= 0x00000000;
	// GPIOC->PUPDR &= ~(GPIO_PUPDR_PUPDR2);
	// GPIOC->PUPDR |= (GPIO_PUPDR_PUPDR2_1);

  initUSART2(USART2_BAUDRATE_921600);
  printUSART2("\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");
  printUSART2("w Starting test app...");
  printUSART2("\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");

  init_TIM1();
	init_TIM8();
  // init_TIM4();
  printUSART2("%xw\n\n", GPIOC->ODR);

  while (1) {
    if (irq_counter == pwm_arr_size) {
			GPIOC->ODR |= 0x0004;
	    TIM8->CNT |= 0xFFFF;
      // GPIOD->ODR |= 0x8000;
			// TIM8->CNT |= 0xFFFF;
			irq_counter = 0;
			// pwm_recieved_bits = 0x0000;

      printUSART2("GREAT SUCCESS!\n");
      printUSART2("%xw\n", GPIOC->ODR);
      printUSART2("%xw\n\n", ambulance_id);
      // pwm_recieved_bits = 0x0000;
      // irq_counter = 0;
      // time = getSYSTIMER();
      // printUSART2("TIME = %xw\n\n", time);
    }

    if ((GPIOA->IDR & 0x0001) == 0x0001) {
      delay_ms(500);
      printUSART2("Button pressed!\n");
      if (!lights_on) {
        printUSART2("Turning on...\n\n");
        lights_on = 1;
        init_TIM4();
        // init_DMA1();
        initSYSTIMER();
      } else {
        printUSART2("Turning off...\n\n");
        lights_on = 0;
        pwm_cnt = 0;
        TIM4->CCR1 = 1;
        TIM4->EGR |= TIM_EGR_UG;
        delay_ms(1);
        TIM4->CR1 &= ~TIM_CR1_CEN;
        // DMA1_Stream6->CR &= ~DMA_SxCR_EN;
        delay_ms(100);
        irq_counter = 0;              // prijemnik!!
        pwm_recieved_bits = 0x0000;   // prijemnik!!
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

  // TIM4->DIER |= TIM_DIER_UDE;     // enable DMA update request
  TIM4->EGR |= TIM_EGR_UG;        // update event, reload all config
  TIM4->CCER |= TIM_CCER_CC1E;    // activate capture compare mode
  TIM4->CR1 |= TIM_CR1_CEN;       // start counter
}

// void init_DMA1() {
//   // Channel 2 Stream 6 -> TIM4->CH1
//   RCC->AHB1ENR |= RCC_AHB1ENR_DMA1EN;

//   DMA1_Stream6->CR &= ~DMA_SxCR_EN;
//   while (DMA1_Stream6->CR & DMA_SxCR_EN)
//     ;

//   DMA1_Stream6->CR &= 0xF0100000; // keep reserved bits

//   DMA1->LISR ^= DMA1->LISR;
//   DMA1->HISR ^= DMA1->HISR;

//   // DMA1_Stream6->PAR = (uint32_t) & (TIM4->CCR1);
//   DMA1_Stream6->PAR = (uint32_t) &(TIM4->DMAR);
//   DMA1_Stream6->M0AR = (uint32_t) pwm;

//   DMA1_Stream6->NDTR = 1;    // 16?? ali ima msize                             // sending 16 bits for every pwm duty cycle value  
//   // TIM4->DIER |= TIM_DIER_UDE;
//   TIM4->DCR &= ~0xE01F;
//   TIM4->DCR |= 0x000D;                                     // 1 transfer to CCR1 (offset is 13 from CR1)
//   // DMA1_Stream6->NDTR = buffSize * MAX_LED;

//   DMA1_Stream6->CR |= DMA_SxCR_CHSEL_2; // Channel 6
//   DMA1_Stream6->CR |= DMA_SxCR_PL_1;                       // priority high

//   DMA1_Stream6->CR |= DMA_SxCR_DIR_0;
//   DMA1_Stream6->CR |= DMA_SxCR_MINC;
//   DMA1_Stream6->CR |= DMA_SxCR_TCIE;

//   DMA1_Stream6->CR |= DMA_SxCR_MSIZE_0;
//   DMA1_Stream6->CR |= DMA_SxCR_PSIZE_0;

//   NVIC_EnableIRQ(DMA1_Stream6_IRQn);      // mozda?
//   DMA1_Stream6->CR |= DMA_SxCR_EN;
//   // NVIC_SetPriority(DMA1_Stream6_IRQn, 0); // mozda?
// }

// void DMA1_Stream6_IRQHandler(void) {
//   printUSART2("%d: Transferred %xw\n\n", pwm_cnt, pwm[pwm_cnt]);
//   pwm_cnt++;
//   if (pwm_cnt == pwm_arr_size) {
//     pwm_cnt = 0;
//     // DMA1_Stream6->M0AR = (uint16_t) pwm;
//   }
//   delay_ms(50);
// }

void init_TIM1() {
  // Initializing PA8 as TIM8 Channel 1
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
  GPIOA->MODER &= ~GPIO_MODER_MODER8;
  GPIOA->MODER |= GPIO_MODER_MODER8_1;
  GPIOA->AFR[1] |= 0x00000001;

  // Initializing TIM1 in input PWM mode
  RCC->APB2ENR |= RCC_APB2ENR_TIM1EN;
  TIM1->PSC = 0x20D0 - 0x0001;        // psc = 8400 -> clock: 20000
  TIM1->ARR = 0x07D0;                 // arr = 2000 period: 100ms
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
	if (TIM1->SR & TIM_SR_CC1IF) {
    printUSART2("Period: %xw\nDuty C: %xw\n\n", TIM1->CCR1, TIM1->CCR2);
		uint16_t current_bit = ambulance_id & (0x0001 << irq_counter);
		if (TIM1->CCR1 >= PERIOD_MARGIN_LOW && TIM1->CCR1 <= PERIOD_MARGIN_HIGH && TIM1->CCR2 >= IR_MARGIN_0 && TIM1->CCR2 <= IR_MARGIN_2) {
			if ((TIM1->CCR2 >= IR_MARGIN_1 && current_bit) || (TIM1->CCR2 <= IR_MARGIN_1 && !current_bit)) {
				// if (current_bit) {
        //   pwm_recieved_bits |= (0x0001 << irq_counter);
        // }
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

void init_TIM8() {
	// Initializing TIM8 as a downcounter
	RCC->APB2ENR |= RCC_APB2ENR_TIM8EN;
	TIM8->PSC = 0xFFFF - 0x0001;
	TIM8->ARR = 0xFFFF;						// period cca. 25s

	TIM8->CR1 = 0x0000;
	TIM8->CR2 = 0x0000;
	TIM8->CR1 |= TIM_CR1_DIR;

	TIM8->DIER |= TIM_DIER_UIE;
	TIM8->EGR |= TIM_EGR_UG;
	NVIC_EnableIRQ(TIM8_UP_TIM13_IRQn);
	TIM8->CR1 |= TIM_CR1_CEN;
}

void TIM8_UP_TIM13_IRQHandler() {
	if (TIM8->SR & TIM_SR_UIF) {
		GPIOC->ODR &= ~0x0004;
		printUSART2("Timer done %xw!\n\n", GPIOC->ODR);
		irq_counter = 0;
		pwm_recieved_bits = 0x0000;
	}

	TIM8->SR &= ~TIM_SR_UIF;
}
