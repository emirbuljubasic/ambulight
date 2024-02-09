#include "stm32f4xx.h"
#include "delay.h"
#include "usart.h"

// #define IRQ_IDLE			0
// #define IRQ_DETECTED		1
// #define IRQ_WAIT4LOW		2
// #define IRQ_DEBOUNCE		3

// volatile uint32_t g_irq_cnt = 0;
// volatile uint8_t g_gpioc_irq_state = (IRQ_IDLE);
// volatile uint32_t g_irq_timer = 0;

void serviceIRQA(void);

int main(void)
{
	uint32_t led_timer;

	// Initialize PD12-PD15 as output
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;
	GPIOD->MODER |= 0x55000000;
	GPIOD->OTYPER |= 0x00000000;
	GPIOD->OSPEEDR |= 0xFF000000;
	GPIOD->PUPDR &= ~(0xAA000000);
	GPIOD->PUPDR |= (0xAA000000);

	// Initialize PA0 as input (button)
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
	GPIOA->MODER &= ~0x00000003;
	GPIOA->PUPDR &= ~(GPIO_PUPDR_PUPDR0);
	GPIOA->PUPDR |= (GPIO_PUPDR_PUPDR0_1);

	// Initialize PC2 as Reciever output and PC3 as EXTI Interrupt source
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOCEN;
	GPIOC->MODER |= GPIO_MODER_MODER2_0;
	GPIOC->OSPEEDR |= GPIO_OSPEEDER_OSPEEDR2;
	GPIOC->OTYPER |= 0x00000000;
	GPIOC->PUPDR &= ~(GPIO_PUPDR_PUPDR2);
	GPIOC->PUPDR |= (GPIO_PUPDR_PUPDR2_1);

	GPIOC->MODER &= ~GPIO_MODER_MODER3;
	GPIOC->PUPDR &= ~(GPIO_PUPDR_PUPDR3);
	GPIOC->PUPDR |= (GPIO_PUPDR_PUPDR3_1);

	initUSART2(USART2_BAUDRATE_921600);
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
	led_timer = getSYSTIMER();

	while(1) {	

		if ((GPIOA->IDR & 0x0001) == 0x0001) {
			GPIOD->ODR |= 0xA000;
			GPIOC->ODR |= 0x0004;					// set PC2 to high in order to drive PC3 to high as well
		} else {
			GPIOD->ODR &= ~0xA000;
			GPIOC->ODR &= ~0x0004;
		}

		delay_us(1);								

		// if(chk4TimeoutSYSTIMER(led_timer, 1000000) == (SYSTIMER_TIMEOUT)) {
		// 	led_timer = getSYSTIMER();
		// 	printUSART2("%dw: GPIOC->ODR = %xw\n\n", led_timer, GPIOC->ODR);
		// 	printUSART2("%dw: GPIOC->IDR = %xw\n\n", led_timer, GPIOC->IDR);
		// }

		// serviceIRQA();
	}
}


// void EXTI0_IRQHandler(void) {
// 	if((EXTI->PR & EXTI_PR_PR0) == EXTI_PR_PR0) {
// 		GPIOD->ODR ^= 0x5000;
// 		g_irq_cnt++;
// 		printUSART2("-> IRQ event [%d]\n",g_irq_cnt);

// 		EXTI->PR = EXTI_PR_PR0;
// 	}
// }

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

// void serviceIRQA(void) {
// 	switch(g_gpioc_irq_state) {
// 		case(IRQ_IDLE):
// 		{
// 			break;
// 		}
// 		case(IRQ_DETECTED):
// 		{
// 			g_irq_cnt++;
// 			printUSART2("-> IRQ event [%d]\n", g_irq_cnt);
// 			g_gpioc_irq_state = (IRQ_WAIT4LOW); 
// 			break;
// 		}
// 		case(IRQ_WAIT4LOW):
// 		{
// 			if((GPIOC->IDR & 0x0008) == 0x0000) {
// 				g_gpioc_irq_state = (IRQ_DEBOUNCE);
// 				g_irq_timer = getSYSTIMER(); 
// 			}
// 			break;
// 		}
// 		case(IRQ_DEBOUNCE):
// 		{
// 			if(chk4TimeoutSYSTIMER(g_irq_timer, 50000) == (SYSTIMER_TIMEOUT)) {
// 				g_gpioc_irq_state = (IRQ_IDLE); 
// 			}
// 		}
// 		default:
// 		{
// 			break;
// 		}
// 	}
// }
