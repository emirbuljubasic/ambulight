# SEMAFOR 

## Description

SEMAFOR - kontrola ARGB putem PWM-a 

## Funkcije

void sendPWMbyteHigh();         // send single logical HIGH  
void sendPWMByteLow();          // send single logical LOW

void sendFrame();               // loop size(24) koji poziva sendPWMbyteHigh/Low da posalje
frame

void sendLight(uint8_t, red, uint8_t green, uint_8t blue);  // give RGB values
and display on single DIODE

void sendLightArray(uint8_t *arr, uint8_t size);            // poziva sendLight size puta gdje je arr velicine size * 3 (R,G,B) vrijednost svake diode. Za semafor 3x3 size = 27, arr ce imati ukupno 81 vrijednosti.

void setGreen(uint8_t period);  // postaviti semafor na zeleno svijetlo period
sekundi  
void setRed(uint8_t period);    // postaviti semafor na crveno svijetlo period
sekundi  

void GPIOx_IRQHandler(void)     // dug ISR da blokira izvrsavanje main() koda, manuelno postavlja semafor na crveno i cuva sve do ne prestane primati IRQ, tj. svaki IRQ ga blokira na 20 sekundi, 20s nakon prijema zadnjeg IRQ prestaje blokiranje semafora

