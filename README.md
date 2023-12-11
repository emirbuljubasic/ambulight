# VOZILO

## Description

VOZILO - kontrola IR blaster-a i DAC-a

## Secret Key


#define __SECRET_KEY "vr10vr10tajn1pa55"

funkcije namijenje samo za testing/razumijevanje koristenja modula - nepotrebne u finalnom kodu (DMA)

void sendIRByte();      	// send single IR byte;  
void sendAudioByte();   	// send single audio byte;

void initDMA();			    // DMA postaviti za rad u circular mode, const slanje podataka sve dok je enable-ovan  
void initTIM();			    // TIM postaviti u PWM mod za slanje IR koda na GPIOx

void initDAC();			    // undefined

void startIR();			    // zapoceti prijenos IR koda - enable DMA  
void startAudioPulse(); 	// zapoceti prijenos audio zvuka - enable DMA  

void stopIR();			    // prekinuti prijenos IR koda - disable DMA  
void stopAudioPulse();		// prekinuti prijenos audio zvuka - disable DMA

void Button_IRQHandler();	// button ISR - change value bool state;
