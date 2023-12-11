VOZILO:

#define __SECRET_KEY "vr10vr10tajn1pa55" 

->ove 2 fukcije se nece koristiti u finalnom kodu, samo za testing/razumijevanje funkcionalnosti 
->DMA u finalnoj implementaciji, send single byte-a nepotreban.
void sendIRByte();      // send single IR byte;
void sendAudioByte();   // send single audio byte;



void initDMA();         // postavit u circular mode da const. salje, koristit EN ~EN za
void paljenje/gasenje
void initTIM();         // postavit timer u PWM za slanje IR koda
void initDAC();

void startIR();         // zapoceti prijenos IR koda, tj enable DMA podesen na CIRC buffer
void startAudioPulse(); // zapoceti prijenos audio signala, enable DMA
void stopIR();          // prekinuti prijenos IR koda, disable DMA
void stopAudioPulse();  // prekinuti prijenos audio signala, disable DMA

void Button_IRQHandler(); // button ISR function to change the value of bool state;
