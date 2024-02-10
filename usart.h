#ifndef __USART_H
#define __USART_H
#include "stm32f4xx.h"
#include "delay.h"
#include "misc.h"

#define USART_RX_DATA_READY			0
#define USART_RX_DATA_NOT_READY		1
#define USART2_BAUDRATE_1500000		0x0000001C
#define USART2_BAUDRATE_921600		0x0000002D
#define USART2_BAUDRATE_460800		0x0000005B
#define USART2_BAUDRATE_115200		0x0000016C
#define USART2_BAUDRATE_9600		0x00001117

void 		initUSART2(uint32_t baudrate);
void 		putcharUSART2(uint8_t data);
void 		printUSART2(char * str, uint32_t * num);
uint8_t 	getcharUSART2(void);
uint8_t 	getRxStateUSART2(void);
void 		enableRxUSART2(void);

#endif 
