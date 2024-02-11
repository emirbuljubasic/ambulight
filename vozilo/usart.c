#include "usart.h"

void initUSART2(uint32_t baudrate) {
  // wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
  //  USART2 initialization on PA2 -> TX & PA3 -> RX
  //------------------------------------------------------------------
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
  RCC->APB1ENR |= RCC_APB1ENR_USART2EN;
  GPIOA->MODER |= (GPIO_MODER_MODER2_1) | (GPIO_MODER_MODER3_1);
  GPIOA->AFR[0] |= 0x00007700;

  GPIOA->OSPEEDR |= GPIO_OSPEEDER_OSPEEDR2_1; /** Set Output pins clock 50 MHz!!
                                                 Dont go above 50! */
  GPIOA->OSPEEDR |= GPIO_OSPEEDER_OSPEEDR3_1; /** Set Output pins clock 50 MHz!!
                                                 Dont go above 50! */

  USART2->BRR = baudrate; // default 1 stop bit, 8 data bits, no parity
                          // no flow control
  USART2->CR1 =
      (USART_CR1_UE) | (USART_CR1_TE) | (USART_CR1_RE); // enable usart
}

void putcharUSART2(uint8_t data) { /// print one character to USART2
  while (!(USART2->SR & USART_SR_TC))
    ; // wait until last transmission is over

  USART2->DR = data; // send data
}

void printUSARTMOJ(char *str, ...) { /// print text and up to 10 arguments!
  uint8_t rstr[40];                  // 33 max -> 32 ASCII for 32 bits and NULL
  uint16_t k = 0;
  uint16_t arg_type;
  uint32_t utmp32;
  uint32_t *p_uint32;
  char *p_char;
  va_list vl;

  // va_start(vl, 10);
  // // always pass the last named parameter to va_start, for compatibility with
  // older compilers
  va_start(vl, str); // always pass the last named parameter to va_start, for
                     // compatibility with older compilers
  while (str[k] != 0x00) {
    if (str[k] == '%') {
      if (str[k + 1] != 0x00) {
        switch (str[k + 1]) {
        case ('b'): {              // binary
          if (str[k + 2] == 'b') { // byte
            utmp32 = va_arg(vl, int);
            arg_type = (PRINT_ARG_TYPE_BINARY_BYTE);
          } else if (str[k + 2] == 'h') { // half word
            utmp32 = va_arg(vl, int);
            arg_type = (PRINT_ARG_TYPE_BINARY_HALFWORD);
          } else if (str[k + 2] == 'w') { // word
            utmp32 = va_arg(vl, uint32_t);
            arg_type = (PRINT_ARG_TYPE_BINARY_WORD);
          } else { // default word
            utmp32 = va_arg(vl, uint32_t);
            arg_type = (PRINT_ARG_TYPE_BINARY_WORD);
            k--;
          }

          k++;
          p_uint32 = &utmp32;
          break;
        }
        case ('d'): {              // decimal
          if (str[k + 2] == 'b') { // byte
            utmp32 = va_arg(vl, int);
            arg_type = (PRINT_ARG_TYPE_DECIMAL_BYTE);
          } else if (str[k + 2] == 'h') { // half word
            utmp32 = va_arg(vl, int);
            arg_type = (PRINT_ARG_TYPE_DECIMAL_HALFWORD);
          } else if (str[k + 2] == 'w') { // word
            utmp32 = va_arg(vl, uint32_t);
            arg_type = (PRINT_ARG_TYPE_DECIMAL_WORD);
          } else { // default word
            utmp32 = va_arg(vl, uint32_t);
            arg_type = (PRINT_ARG_TYPE_DECIMAL_WORD);
            k--;
          }

          k++;
          p_uint32 = &utmp32;
          break;
        }
        case ('c'): { // character
          char tchar = va_arg(vl, int);
          putcharUSART2(tchar);
          arg_type = (PRINT_ARG_TYPE_CHARACTER);
          break;
        }
        case ('s'): { // string
          p_char = va_arg(vl, char *);
          sprintUSART2((uint8_t *)p_char);
          arg_type = (PRINT_ARG_TYPE_STRING);
          break;
        }
        case ('f'): { // float
          uint64_t utmp64 = va_arg(
              vl, uint64_t); // convert double to float representation IEEE 754
          uint32_t tmp1 = utmp64 & 0x00000000FFFFFFFF;
          tmp1 = tmp1 >> 29;
          utmp32 = utmp64 >> 32;
          utmp32 &= 0x07FFFFFF;
          utmp32 = utmp32 << 3;
          utmp32 |= tmp1;
          if (utmp64 & 0x8000000000000000)
            utmp32 |= 0x80000000;

          if (utmp64 & 0x4000000000000000)
            utmp32 |= 0x40000000;

          p_uint32 = &utmp32;

          arg_type = (PRINT_ARG_TYPE_FLOAT);
          // arg_type = (PRINT_ARG_TYPE_HEXADECIMAL_WORD);
          // arg_type = (PRINT_ARG_TYPE_BINARY_WORD);
          break;
        }
        case ('x'): {              // hexadecimal
          if (str[k + 2] == 'b') { // byte
            utmp32 = (uint32_t)va_arg(vl, int);
            arg_type = (PRINT_ARG_TYPE_HEXADECIMAL_BYTE);
          } else if (str[k + 2] == 'h') { // half word
            utmp32 = (uint32_t)va_arg(vl, int);
            arg_type = (PRINT_ARG_TYPE_HEXADECIMAL_HALFWORD);
          } else if (str[k + 2] == 'w') { // word
            utmp32 = va_arg(vl, uint32_t);
            arg_type = (PRINT_ARG_TYPE_HEXADECIMAL_WORD);
          } else {
            utmp32 = va_arg(vl, uint32_t);
            arg_type = (PRINT_ARG_TYPE_HEXADECIMAL_WORD);
            k--;
          }

          k++;
          p_uint32 = &utmp32;
          break;
        }
        default: {
          utmp32 = 0;
          p_uint32 = &utmp32;
          arg_type = (PRINT_ARG_TYPE_UNKNOWN);
          break;
        }
        }

        if (arg_type & (PRINT_ARG_TYPE_MASK_CHAR_STRING)) {
          getStr4NumMISC(arg_type, p_uint32, rstr);
          sprintUSART2(rstr);
        }
        k++;
      }
    } else { // not a '%' char -> print the char
      putcharUSART2(str[k]);
      if (str[k] == '\n')
        putcharUSART2('\r');
    }
    k++;
  }

  va_end(vl);
  return;
}

void sprintUSART2(uint8_t *str) {
  uint16_t k = 0;

  while (str[k] != '\0') {
    putcharUSART2(str[k]);
    if (str[k] == '\n')
      putcharUSART2('\r');
    k++;

    if (k == MAX_PRINT_STRING_SIZE)
      break;
  }
}

void printUSART2(
    char *str,
    uint32_t *num) { /// print text and one signed integer or float number
                     // the 'num' number is not modified!
  uint8_t r_str[MAX_PRINT_STRING_SIZE];
  uint16_t k = 0;

  getASCIIString(str, num, r_str);

  while (r_str[k] != '\0') {
    putcharUSART2(r_str[k]);
    if (r_str[k] == '\n')
      putcharUSART2('\r');

    k++;

    if (k == MAX_PRINT_STRING_SIZE)
      break;
  }
}

uint8_t getcharUSART2(void) { /// get one character from USART1
  uint8_t data;

  while ((USART2->SR & USART_SR_RXNE) != USART_SR_RXNE)
    ; // wait until data ready

  data = USART2->DR;              // send data
  USART2->SR &= ~(USART_SR_RXNE); // clear Rx data ready flag

  return data;
}

void enableRxUSART2(void) { USART2->CR1 = USART_CR1_UE | USART_CR1_RE; }

uint8_t getRxStateUSART2(void) {
  uint8_t r_val = USART_RX_DATA_NOT_READY;
  if ((USART2->SR & USART_SR_RXNE) == USART_SR_RXNE)
    r_val = USART_RX_DATA_READY;

  return r_val;
}
