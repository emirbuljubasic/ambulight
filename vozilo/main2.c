#include "stm32f4xx.h"
#include "usart.h"
#include "delay.h"
#include "mp45dt02.h"
#include "pdm_filter.h"
#include "cs43l22.h"
#include "dac.h"
#include "math.h"

#define PI 3.14159
#define DAC_BUFF_SIZE 1000
#define T1 1e-3
#define T2 3e-3
#define T3 4e-3

void getData4DAC(uint16_t * dac_buff, uint8_t type);

int main(void)
{
uint16_t dac_buff1[DAC_BUFF_SIZE];
uint16_t dac_buff2[DAC_BUFF_SIZE];
initUSART2(USART2_BAUDRATE_921600);

initDAC1();
initCS43L22(30, 48000);

getData4DAC(dac_buff1, 1);
getData4DAC(dac_buff2, 2);

uint32_t k = 0;
int temp = 0;

	while(1)
	{
		// send dummy data causing the I2S interface to generate the MCK
		while((SPI3->SR & 0x00000002) == 0);
		SPI3->DR = 0x00;

		if(temp == 0){
			//printUSART2("%d", dac_buff1[k]);
			setDAC1(dac_buff1[k]);
			k++; 
		}

		if(temp == 1){
			setDAC1(dac_buff2[k]);
			k++;
		} 

		if(k >= DAC_BUFF_SIZE){
			k = 0;
			if(temp == 0)
			temp = 1;
			else
			temp = 0;
		}

		delay_us(500);
	}
}

void getData4DAC(uint16_t * dac_buff, uint8_t type)
{
	uint16_t n;
	float y, t =0;
	for(n=0;n<(DAC_BUFF_SIZE);n++)
	{
		if(type == 0x01)
			y = 0.4*sinf(2*PI*5000*t)+0.5;
		else if(type == 0x02)
			y = 0.4*sinf(2*PI*4000*t)+0.5;
		dac_buff[n] = (uint16_t)(y*4095);
		t = t + 0.5e-4;
	}
}

