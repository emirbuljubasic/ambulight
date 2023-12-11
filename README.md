# DETEKTOR

## Description

DETEKTOR - kontrola IR reciever-a i MIC-a

## Secret Key

#define __SECRET_KEY "vr10vr10tajn1pa55"  

void initDMA();         // uvijek EN, slusa na GPIO port, spojen na TIM, M0AR =
rxBuffer  
void initTIM();         // PWM INPUT CAPTURE na GPIO pin gdje je IR reciever  

void gpioInterrupt();   // posalji interrupt na GPIO pin gdje je spojen semafor  
