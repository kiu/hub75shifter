/*
 * Code generated from Atmel Start.
 *
 * This file will be overwritten when reconfiguring your Atmel Start project.
 * Please copy examples or other code you want to keep to a separate file
 * to avoid losing it when reconfiguring.
 */

#include "driver_examples.h"
#include "driver_init.h"
#include "utils.h"

static void button_on_PB22_pressed(void)
{
}

static void button_on_PB23_pressed(void)
{
}

static void button_on_PA27_pressed(void)
{
}

/**
 * Example of using EXTERNAL_IRQ_0
 */
void EXTERNAL_IRQ_0_example(void)
{

	ext_irq_register(PIN_PB22, button_on_PB22_pressed);
	ext_irq_register(PIN_PB23, button_on_PB23_pressed);
	ext_irq_register(PIN_PA27, button_on_PA27_pressed);
}

static struct timer_task TIMER_0_task1, TIMER_0_task2;
/**
 * Example of using TIMER_0.
 */
static void TIMER_0_task1_cb(const struct timer_task *const timer_task)
{
}

static void TIMER_0_task2_cb(const struct timer_task *const timer_task)
{
}

void TIMER_0_example(void)
{
	TIMER_0_task1.interval = 100;
	TIMER_0_task1.cb       = TIMER_0_task1_cb;
	TIMER_0_task1.mode     = TIMER_TASK_REPEAT;
	TIMER_0_task2.interval = 200;
	TIMER_0_task2.cb       = TIMER_0_task2_cb;
	TIMER_0_task2.mode     = TIMER_TASK_REPEAT;

	timer_add_task(&TIMER_0, &TIMER_0_task1);
	timer_add_task(&TIMER_0, &TIMER_0_task2);
	timer_start(&TIMER_0);
}

/**
 * Example of using SPI_0 to write "Hello World" using the IO abstraction.
 *
 * Since the driver is asynchronous we need to use statically allocated memory for string
 * because driver initiates transfer and then returns before the transmission is completed.
 *
 * Once transfer has been completed the tx_cb function will be called.
 */

static uint8_t example_SPI_0[12] = "Hello World!";

static void complete_cb_SPI_0(const struct spi_m_async_descriptor *const io_descr)
{
	/* Transfer completed */
}

void SPI_0_example(void)
{
	struct io_descriptor *io;
	spi_m_async_get_io_descriptor(&SPI_0, &io);

	spi_m_async_register_callback(&SPI_0, SPI_M_ASYNC_CB_XFER, (FUNC_PTR)complete_cb_SPI_0);
	spi_m_async_enable(&SPI_0);
	io_write(io, example_SPI_0, 12);
}

/**
 * Example of using SPI_1 to write "Hello World" using the IO abstraction.
 *
 * Since the driver is asynchronous we need to use statically allocated memory for string
 * because driver initiates transfer and then returns before the transmission is completed.
 *
 * Once transfer has been completed the tx_cb function will be called.
 */

static uint8_t example_SPI_1[12] = "Hello World!";

static void complete_cb_SPI_1(const struct spi_s_async_descriptor *const desc)
{
	/* Transfer completed */
}

void SPI_1_example(void)
{
	struct io_descriptor *io;
	spi_s_async_get_io_descriptor(&SPI_1, &io);

	spi_s_async_register_callback(&SPI_1, SPI_S_CB_TX, (FUNC_PTR)complete_cb_SPI_1);
	spi_s_async_enable(&SPI_1);
	io_write(io, example_SPI_1, 12);
}
