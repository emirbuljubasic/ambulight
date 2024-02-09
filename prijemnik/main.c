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

volatile irq_counter = 0;
uint16_t pwm_recieved_bits = 0x0000;
uint16_t ambulance_id = 0xCA3A;
uint8_t pwm_arr_size = 16;

void init_TIM1();
void init_TIM8();

int main(void) {
	initUSART2(USART2_BAUDRATE_921600);
	printUSART2("AAAAAAAA\n\n");
	uint32_t time;

	init_TIM1();
	init_TIM8();

	// Initialize PD12-PD15 as output
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;
	GPIOD->MODER |= 0x55000000;
	GPIOD->OTYPER |= 0x00000000;
	GPIOD->OSPEEDR |= 0xFF000000;
	GPIOD->PUPDR &= ~(0xAA000000);
	GPIOD->PUPDR |= (0xAA000000);
			GPIOD->ODR = 0xF000;

	// Initialize PA0 as input (button)
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
	GPIOA->MODER &= ~0x00000003;
	GPIOA->PUPDR &= ~(GPIO_PUPDR_PUPDR0);
	GPIOA->PUPDR |= (GPIO_PUPDR_PUPDR0_1);

	// Initialize PC2 as Reciever output (triggers traffic light EXTI interrupt)
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOCEN;
	GPIOC->MODER |= GPIO_MODER_MODER2_0;
	GPIOC->OSPEEDR |= GPIO_OSPEEDER_OSPEEDR2;
	GPIOC->OTYPER |= 0x00000000;
	GPIOC->PUPDR &= ~(GPIO_PUPDR_PUPDR2);
	GPIOC->PUPDR |= (GPIO_PUPDR_PUPDR2_1);

	GPIOC->MODER &= ~GPIO_MODER_MODER3;
	GPIOC->PUPDR &= ~(GPIO_PUPDR_PUPDR3);
	GPIOC->PUPDR |= (GPIO_PUPDR_PUPDR3_1);

	initSYSTIMER();

	RCC->APB2ENR |= RCC_APB2ENR_SYSCFGEN;
	NVIC_EnableIRQ(EXTI3_IRQn);
	// NVIC_SetPriority(EXTI3_IRQn, 0);
	SYSCFG->EXTICR[0] = SYSCFG_EXTICR1_EXTI3_PC;						// select PAC as interrupt source
	EXTI->IMR = EXTI_IMR_MR3;											// enable interrupt on EXTI_Line3
	EXTI->EMR &= ~EXTI_EMR_MR3;											// disable event on EXTI_Line3
	EXTI->RTSR = EXTI_RTSR_TR3;											// enable rising edge trigger event on line 3
	EXTI->FTSR = EXTI_FTSR_TR3;											// enable falling edge trigger event on line 3

	printUSART2("-> SYS: init completed\n\n");

	while(1) {
		if (irq_counter == pwm_arr_size) {
			GPIOC->ODR ^= 0x0004;
			TIM8->CNT |= 0xFFFF;
			irq_counter = 0;
			pwm_recieved_bits = 0x0000;

			printUSART2("GREAT SUCCESS!\n");
			printUSART2("%xw\n", pwm_recieved_bits);
			printUSART2("%xw\n", ambulance_id);
			time = getSYSTIMER();
			printUSART2("TIME = %xw\n\n", time);
		}

		if ((GPIOA->IDR & 0x0001) == 0x0001) {
				irq_counter = pwm_arr_size;
		// 	GPIOD->ODR |= 0xA000;
		// 	GPIOC->ODR |= 0x0004;					// set PC2 to high in order to drive PC3 to high as well
		// } else {
		// 	GPIOD->ODR &= ~0xA000;
		// 	GPIOC->ODR &= ~0x0004;
		}

		delay_ms(500);
		printUSART2(" -> CNT = [%xw]\n", TIM8->CNT);
        // irq_counter = 0;              // prijemnik!! u downcounter
        // pwm_recieved_bits = 0x0000;   // prijemnik!! u downcounter
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
		printUSART2("Timer done!\n\n");
		GPIOC->ODR &= ~0x0004;
		irq_counter = 0;
		pwm_recieved_bits = 0x0000;
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
	// printUSART2("IRQ\n");
	if (TIM1->SR & TIM_SR_CC1IF) {
		uint16_t capturedPeriod = TIM1->CCR1;
		uint16_t capturedDutyCycle = TIM1->CCR2;
		if (capturedPeriod >= PERIOD_MARGIN_LOW && capturedPeriod <= PERIOD_MARGIN_HIGH) {
			// printUSART2("Period: %xw\nDuty C: %xw\n\n", irq_counter, ambulance_id & (0x0001 << irq_counter), capturedPeriod, capturedDutyCycle);
			if (capturedDutyCycle >= IR_MARGIN_1 && capturedDutyCycle <= IR_MARGIN_2) {
				if (ambulance_id & (0x0001 << irq_counter)) { // ako je ambulance_id[irq_counter] == 1
					pwm_recieved_bits |= (0x0001 << irq_counter);
					irq_counter++;
				} else {
					irq_counter = 0;
					pwm_recieved_bits = 0;
					// printUSART2("BYE!\n\n");
				}
			} else if (capturedDutyCycle >= IR_MARGIN_0 && capturedDutyCycle <= IR_MARGIN_1) {
				if (!(ambulance_id & (0x0001 << irq_counter))) { // ako je ambulance_id[irq_counter] == 0
					irq_counter++;
				} else {
					irq_counter = 0;
					pwm_recieved_bits = 0;
					// printUSART2("BYE!\n\n");
				}
			}
		}
	}
	// Clear the interrupt flag
	TIM1->SR &= ~TIM_SR_CC1IF;
}

void EXTI3_IRQHandler(void)
{
	if(EXTI->PR & EXTI_PR_PR3) {
		// if(g_gpioc_irq_state == (IRQ_IDLE)) {
		// 	g_gpioc_irq_state = (IRQ_DETECTED);
		// }
		if (GPIOC->IDR & 0x0008) {
			GPIOD->ODR &= ~0x5000;
			printUSART2("HIGH\n\n");
			// rising edge detected => stop the traffic
		} else {
			GPIOD->ODR |= 0x5000;
			printUSART2("LOW\n\n");
			// falling edge detected => continue the traffic
		}
		EXTI->PR = EXTI_PR_PR3;
	}
}