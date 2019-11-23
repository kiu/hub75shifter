/*
 * Code generated from Atmel Start.
 *
 * This file will be overwritten when reconfiguring your Atmel Start project.
 * Please copy examples or other code you want to keep to a separate file
 * to avoid losing it when reconfiguring.
 */
#ifndef ATMEL_START_PINS_H_INCLUDED
#define ATMEL_START_PINS_H_INCLUDED

#include <hal_gpio.h>

// SAMC21 has 9 pin functions

#define GPIO_PIN_FUNCTION_A 0
#define GPIO_PIN_FUNCTION_B 1
#define GPIO_PIN_FUNCTION_C 2
#define GPIO_PIN_FUNCTION_D 3
#define GPIO_PIN_FUNCTION_E 4
#define GPIO_PIN_FUNCTION_F 5
#define GPIO_PIN_FUNCTION_G 6
#define GPIO_PIN_FUNCTION_H 7
#define GPIO_PIN_FUNCTION_I 8

#define P_R1 GPIO(GPIO_PORTA, 0)
#define P_G1 GPIO(GPIO_PORTA, 1)
#define P_B1 GPIO(GPIO_PORTA, 2)
#define P_R2 GPIO(GPIO_PORTA, 3)
#define P_G2 GPIO(GPIO_PORTA, 4)
#define P_B2 GPIO(GPIO_PORTA, 5)
#define P_CLK GPIO(GPIO_PORTA, 6)
#define PA08 GPIO(GPIO_PORTA, 8)
#define SPI0_SS GPIO(GPIO_PORTA, 9)
#define PA10 GPIO(GPIO_PORTA, 10)
#define PA11 GPIO(GPIO_PORTA, 11)
#define PA12 GPIO(GPIO_PORTA, 12)
#define PA13 GPIO(GPIO_PORTA, 13)
#define PA14 GPIO(GPIO_PORTA, 14)
#define PA15 GPIO(GPIO_PORTA, 15)
#define P_A GPIO(GPIO_PORTA, 16)
#define P_B GPIO(GPIO_PORTA, 17)
#define P_C GPIO(GPIO_PORTA, 18)
#define OE GPIO(GPIO_PORTA, 27)
#define LED GPIO(GPIO_PORTB, 3)
#define P_OE GPIO(GPIO_PORTB, 10)
#define P_STB GPIO(GPIO_PORTB, 11)
#define CLEAR GPIO(GPIO_PORTB, 22)
#define SHIFT GPIO(GPIO_PORTB, 23)

#endif // ATMEL_START_PINS_H_INCLUDED
