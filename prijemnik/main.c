#include "stm32f4xx.h"
#include "delay.h"
#include "usart.h"

#define IR_50 500
#define IR_25 250
#define IR_MARGIN_0 150
#define IR_MARGIN_1 350
#define IR_MARGIN_2 600
#define PERIOD_MARGIN_LOW 900
#define PERIOD_MARGIN_HIGH 1100

uint8_t irq_counter = 0;
uint16_t pwm_recieved_bits = 0x0000;
uint16_t ambulance_id = 0xCA3A;
uint8_t pwm_arr_size = 16;

void init_TIM1();
void init_TIM8();

int main(void) {
	init_TIM1();
	init_TIM8();

	// Initialize PC2 as Detector output (triggers traffic light EXTI interrupt)
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOCEN;
	GPIOC->MODER &= ~GPIO_MODER_MODER2;
	GPIOC->MODER |= GPIO_MODER_MODER2_0;
	GPIOC->OSPEEDR |= GPIO_OSPEEDER_OSPEEDR2;

	initUSART2(USART2_BAUDRATE_921600);
	printUSART2("\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");
	printUSART2(" Starting detector...");
	printUSART2("\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");


	while(1) {
		if (irq_counter == pwm_arr_size) {
			GPIOC->ODR |= 0x0004;
			TIM8->CNT |= 0xFFFF;
			irq_counter = 0;
            printUSART2("Ambulance code recieved!\n\n");
		}
	}
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
		irq_counter = 0;
		printUSART2("TIMEOUT -> Return to normal state!\n\n");
	}

	TIM8->SR &= ~TIM_SR_UIF;
}

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
				irq_counter++;
			} else {
				irq_counter = 0;
			}
		}
	}

	TIM1->SR &= ~TIM_SR_CC1IF;
}
