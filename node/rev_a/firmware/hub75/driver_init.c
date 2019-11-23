/*
 * Code generated from Atmel Start.
 *
 * This file will be overwritten when reconfiguring your Atmel Start project.
 * Please copy examples or other code you want to keep to a separate file
 * to avoid losing it when reconfiguring.
 */

#include "driver_init.h"
#include <peripheral_clk_config.h>
#include <utils.h>
#include <hal_init.h>

#include <hpl_rtc_base.h>

struct timer_descriptor TIMER_0;

struct spi_m_async_descriptor SPI_0;

struct spi_s_async_descriptor SPI_1;
static uint16_t               SPI_1_buf[16];

void EXTERNAL_IRQ_0_init(void)
{
	hri_gclk_write_PCHCTRL_reg(GCLK, EIC_GCLK_ID, CONF_GCLK_EIC_SRC | (1 << GCLK_PCHCTRL_CHEN_Pos));
	hri_mclk_set_APBAMASK_EIC_bit(MCLK);

	// Set pin direction to input
	gpio_set_pin_direction(CLEAR, GPIO_DIRECTION_IN);

	gpio_set_pin_pull_mode(CLEAR,
	                       // <y> Pull configuration
	                       // <id> pad_pull_config
	                       // <GPIO_PULL_OFF"> Off
	                       // <GPIO_PULL_UP"> Pull-up
	                       // <GPIO_PULL_DOWN"> Pull-down
	                       GPIO_PULL_OFF);

	gpio_set_pin_function(CLEAR, PINMUX_PB22A_EIC_EXTINT6);

	// Set pin direction to input
	gpio_set_pin_direction(SHIFT, GPIO_DIRECTION_IN);

	gpio_set_pin_pull_mode(SHIFT,
	                       // <y> Pull configuration
	                       // <id> pad_pull_config
	                       // <GPIO_PULL_OFF"> Off
	                       // <GPIO_PULL_UP"> Pull-up
	                       // <GPIO_PULL_DOWN"> Pull-down
	                       GPIO_PULL_OFF);

	gpio_set_pin_function(SHIFT, PINMUX_PB23A_EIC_EXTINT7);

	// Set pin direction to input
	gpio_set_pin_direction(OE, GPIO_DIRECTION_IN);

	gpio_set_pin_pull_mode(OE,
	                       // <y> Pull configuration
	                       // <id> pad_pull_config
	                       // <GPIO_PULL_OFF"> Off
	                       // <GPIO_PULL_UP"> Pull-up
	                       // <GPIO_PULL_DOWN"> Pull-down
	                       GPIO_PULL_OFF);

	gpio_set_pin_function(OE, PINMUX_PA27A_EIC_EXTINT15);

	ext_irq_init();
}

/**
 * \brief Timer initialization function
 *
 * Enables Timer peripheral, clocks and initializes Timer driver
 */
static void TIMER_0_init(void)
{
	hri_mclk_set_APBAMASK_RTC_bit(MCLK);
	timer_init(&TIMER_0, RTC, _rtc_get_timer());
}

void SPI_0_PORT_init(void)
{

	// Set pin direction to input
	gpio_set_pin_direction(PA08, GPIO_DIRECTION_IN);

	gpio_set_pin_pull_mode(PA08,
	                       // <y> Pull configuration
	                       // <id> pad_pull_config
	                       // <GPIO_PULL_OFF"> Off
	                       // <GPIO_PULL_UP"> Pull-up
	                       // <GPIO_PULL_DOWN"> Pull-down
	                       GPIO_PULL_OFF);

	gpio_set_pin_function(PA08, PINMUX_PA08C_SERCOM0_PAD0);

	gpio_set_pin_level(PA10,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(PA10, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(PA10, PINMUX_PA10C_SERCOM0_PAD2);

	gpio_set_pin_level(PA11,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(PA11, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(PA11, PINMUX_PA11C_SERCOM0_PAD3);
}

void SPI_0_CLOCK_init(void)
{
	hri_gclk_write_PCHCTRL_reg(GCLK, SERCOM0_GCLK_ID_CORE, CONF_GCLK_SERCOM0_CORE_SRC | (1 << GCLK_PCHCTRL_CHEN_Pos));
	hri_gclk_write_PCHCTRL_reg(GCLK, SERCOM0_GCLK_ID_SLOW, CONF_GCLK_SERCOM0_SLOW_SRC | (1 << GCLK_PCHCTRL_CHEN_Pos));
	hri_mclk_set_APBCMASK_SERCOM0_bit(MCLK);
}

void SPI_0_init(void)
{
	SPI_0_CLOCK_init();
	spi_m_async_init(&SPI_0, SERCOM0);
	SPI_0_PORT_init();
}

void SPI_1_PORT_init(void)
{

	// Set pin direction to input
	gpio_set_pin_direction(PA12, GPIO_DIRECTION_IN);

	gpio_set_pin_pull_mode(PA12,
	                       // <y> Pull configuration
	                       // <id> pad_pull_config
	                       // <GPIO_PULL_OFF"> Off
	                       // <GPIO_PULL_UP"> Pull-up
	                       // <GPIO_PULL_DOWN"> Pull-down
	                       GPIO_PULL_OFF);

	gpio_set_pin_function(PA12, PINMUX_PA12C_SERCOM2_PAD0);

	gpio_set_pin_level(PA13,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(PA13, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(PA13, PINMUX_PA13C_SERCOM2_PAD1);

	// Set pin direction to input
	gpio_set_pin_direction(PA14, GPIO_DIRECTION_IN);

	gpio_set_pin_pull_mode(PA14,
	                       // <y> Pull configuration
	                       // <id> pad_pull_config
	                       // <GPIO_PULL_OFF"> Off
	                       // <GPIO_PULL_UP"> Pull-up
	                       // <GPIO_PULL_DOWN"> Pull-down
	                       GPIO_PULL_OFF);

	gpio_set_pin_function(PA14, PINMUX_PA14C_SERCOM2_PAD2);

	gpio_set_pin_level(PA15,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(PA15, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(PA15, PINMUX_PA15C_SERCOM2_PAD3);
}

void SPI_1_CLOCK_init(void)
{
	hri_gclk_write_PCHCTRL_reg(GCLK, SERCOM2_GCLK_ID_CORE, CONF_GCLK_SERCOM2_CORE_SRC | (1 << GCLK_PCHCTRL_CHEN_Pos));
	hri_gclk_write_PCHCTRL_reg(GCLK, SERCOM2_GCLK_ID_SLOW, CONF_GCLK_SERCOM2_SLOW_SRC | (1 << GCLK_PCHCTRL_CHEN_Pos));
	hri_mclk_set_APBCMASK_SERCOM2_bit(MCLK);
}

void SPI_1_init(void)
{
	SPI_1_CLOCK_init();
	spi_s_async_init(&SPI_1, SERCOM2, (uint8_t *)SPI_1_buf, 32);
	SPI_1_PORT_init();
}

void system_init(void)
{
	init_mcu();

	// GPIO on PA00

	gpio_set_pin_level(P_R1,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(P_R1, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(P_R1, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA01

	gpio_set_pin_level(P_G1,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(P_G1, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(P_G1, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA02

	gpio_set_pin_level(P_B1,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(P_B1, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(P_B1, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA03

	gpio_set_pin_level(P_R2,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(P_R2, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(P_R2, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA04

	gpio_set_pin_level(P_G2,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(P_G2, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(P_G2, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA05

	gpio_set_pin_level(P_B2,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(P_B2, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(P_B2, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA06

	gpio_set_pin_level(P_CLK,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(P_CLK, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(P_CLK, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA09

	gpio_set_pin_level(SPI0_SS,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(SPI0_SS, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(SPI0_SS, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA16

	gpio_set_pin_level(P_A,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(P_A, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(P_A, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA17

	gpio_set_pin_level(P_B,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(P_B, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(P_B, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PA18

	gpio_set_pin_level(P_C,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(P_C, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(P_C, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PB03

	gpio_set_pin_level(LED,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(LED, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(LED, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PB10

	gpio_set_pin_level(P_OE,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   true);

	// Set pin direction to output
	gpio_set_pin_direction(P_OE, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(P_OE, GPIO_PIN_FUNCTION_OFF);

	// GPIO on PB11

	gpio_set_pin_level(P_STB,
	                   // <y> Initial level
	                   // <id> pad_initial_level
	                   // <false"> Low
	                   // <true"> High
	                   false);

	// Set pin direction to output
	gpio_set_pin_direction(P_STB, GPIO_DIRECTION_OUT);

	gpio_set_pin_function(P_STB, GPIO_PIN_FUNCTION_OFF);

	EXTERNAL_IRQ_0_init();

	TIMER_0_init();

	SPI_0_init();

	SPI_1_init();
}
