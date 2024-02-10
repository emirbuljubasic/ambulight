#include "usart.h"

void initUSART2(uint32_t baudrate)
{
	//wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	// USART2 initialization on PA2 -> TX & PA3 -> RX
	//------------------------------------------------------------------ 
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN; 									
	RCC->APB1ENR |= RCC_APB1ENR_USART2EN; 								
	GPIOA->MODER |= (GPIO_MODER_MODER2_1)|(GPIO_MODER_MODER3_1); 		
	GPIOA->AFR[0] |= 0x00007700;										

	GPIOA->OSPEEDR |= GPIO_OSPEEDER_OSPEEDR2_1;							/** Set Output pins clock 50 MHz!! Dont go above 50! */  
	GPIOA->OSPEEDR |= GPIO_OSPEEDER_OSPEEDR3_1;							/** Set Output pins clock 50 MHz!! Dont go above 50! */  
	
	 
	USART2->BRR = baudrate;												// default 1 stop bit, 8 data bits, no parity	
																		// no flow control
	USART2->CR1 = (USART_CR1_UE)|(USART_CR1_TE)|(USART_CR1_RE);			// enable usart		
}

void putcharUSART2(uint8_t data)
{/// print one character to USART2
	while(!(USART2->SR & USART_SR_TC));									// wait until last transmission is over
	
	USART2->DR = data;													// send data
}

void printUSART2(char * str, uint32_t  * num)
{/// print text and one signed integer or float number
  // the 'num' number is not modified!
	uint8_t r_str[MAX_PRINT_STRING_SIZE];
	uint16_t k = 0;

	getASCIIString(str, num, r_str);
	
	while(r_str[k] != '\0')
	{
		putcharUSART2(r_str[k]);
		if(r_str[k] == '\n')
			putcharUSART2('\r');
			
		k++;
		
		if(k == MAX_PRINT_STRING_SIZE)
			break;
	}
}

uint8_t getcharUSART2(void)
{/// get one character from USART1
	uint8_t data;
	
	while((USART2->SR & USART_SR_RXNE) != USART_SR_RXNE);				// wait until data ready
	
	data = USART2->DR;													// send data
	USART2->SR &= ~(USART_SR_RXNE);										// clear Rx data ready flag
	
	return data;
}

void enableRxUSART2(void)
{
	USART2->CR1 = USART_CR1_UE|USART_CR1_RE;
}

uint8_t getRxStateUSART2(void)
{
	uint8_t r_val = USART_RX_DATA_NOT_READY;
	if((USART2->SR & USART_SR_RXNE) == USART_SR_RXNE)
		r_val = USART_RX_DATA_READY;
		
	return r_val;
}

