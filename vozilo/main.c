#include "./stm32f4xx.h"
#include "./delay.h"
#include "./usart.h"

void init_TIM4() {
	// 84MHz/84 = 1MHz -> count each 1us
	RCC->APB1ENR |= RCC_APB1ENR_TIM4EN;
	TIM4->PSC = 0x0054 - 0x0001;
	TIM4->ARR = 0x03E8;
	TIM4->CCMR1 |= (TIM_CCMR1_OC1PE)|(TIM_CCMR1_OC1M_2)|(TIM_CCMR1_OC1M_1);
	TIM4->CCER &= ~(TIM_CCER_CC1P);
	TIM4->CR1 |= (TIM_CR1_ARPE)|(TIM_CR1_URS);

	TIM4->EGR |= TIM_EGR_UG;		// update event, reload all config
	TIM4->CCER |= (TIM_CCER_CC1E);	// activate capture compare mode
	TIM4->CR1 |= TIM_CR1_CEN;		// start counter
	// GPIOD->ODR &= ~0x0040;
}


int main(void)
{
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww	
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
	GPIOA->MODER &= ~0x00000003;
	GPIOA->PUPDR &= ~0x00000003;
	GPIOA->PUPDR |= 0x00000002;
	
	GPIOA->MODER &= ~0x0000000C;  
	GPIOA->PUPDR &= ~0x0000000C;
	GPIOA->PUPDR |= 0x00000008;
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww 	
	uint32_t cnt = 0, time;
	const uint8_t pwm_arr_size = 15;
	uint16_t pwm[15] = {150,150,150,850,850,850,150,850,150,850,150,850,850,150,150};
	uint8_t pwm_cnt = 0;
	uint8_t lights_on = 0;
	
	initUSART2(USART2_BAUDRATE_115200);
	printUSART2("\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");
	printUSART2("w Starting test app...");
	printUSART2("\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");
	
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	/// setup PWM on TIM4 CH1, CH2, CH3 & CH4 -> PD12, PD13, PD14 & PD15
	///----------------------------------------------------------------
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;
	GPIOD->MODER |= 0x12000000;
	GPIOD->OTYPER |= 0x00000000;
	GPIOD->OSPEEDR |= 0x30000000;
	GPIOD->AFR[1] |= 0x00020000;
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN;
	GPIOB->MODER |= 0x00002000;
	GPIOB->OTYPER |= 0x00000000;
	GPIOB->AFR[0] |= 0x02000000;

	while(1)
	{
		// printUSART2("-> SW: test [%d]\n",cnt);
		// uint32_t utmp32 = TIM4->CNT;
		// printUSART2("-> TIM4->CNT: [%d]\n",utmp32);
		// cnt++;	

		if ((GPIOA->IDR & 0x0001) == 0x0001) {
			printUSART2("Button pressed!\n");
			if (!lights_on) {
				printUSART2("Turning on...\n\n");
				lights_on = 1;
				init_TIM4();
			} else {
				printUSART2("Turning off...\n\n");
				lights_on = 0;
				pwm_cnt = 0;
				TIM4->CCR1 = 1;	
				TIM4->EGR |= TIM_EGR_UG;
				delay_ms(1);
				TIM4->CR1 &= ~TIM_CR1_CEN;
				delay_ms(300);
			}
		}

		if (lights_on) {
			TIM4->CCR1 = pwm[pwm_cnt];
			delay_ms(500);
			pwm_cnt++;
			if(pwm_cnt == pwm_arr_size) {
				pwm_cnt = 0;
			}
		}

		if ((GPIOA->IDR & 0x0002) == 0x0002) {
			GPIOD->ODR |= 0x4000;	
		} else {
			GPIOD->ODR &= ~0x4000;	
		}
	}

	// volatile uint16_t values[] = {0x8000, 0x4000, 0x2000, 0x1000};
	// while(1)
	// {
	// 	if ((GPIOA->IDR & 0x0001) == 0x0001) {
	// 		GPIOD->ODR &= ~0x4000;
	// 		GPIOD->ODR |= values[1];
	// 	} else {
	// 		GPIOD->ODR &= ~0x4000;
	// 	}

	// 	if ((GPIOA->IDR & 0x0002) == 0x0002) {
	// 		GPIOD->ODR &= ~0x8000;
	// 		GPIOD->ODR |= values[0];
	// 	} else {
	// 		GPIOD->ODR &= ~0x8000;
	// 	}
	// }
}
