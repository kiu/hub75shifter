#include <atmel_start.h>
#include <string.h>
#include <math.h>
#include "main.h"

uint16_t MS = MX * MY * BPC; // Frame buffer size

uint8_t frame[MX * MY * BPC]; // Frame buffer

uint8_t column_rx[MY * BPC]; // SPI receive
uint8_t column_tx[MY * BPC]; // SPI transmit
uint8_t column_tmp[MY * BPC]; // SPI temporary

uint8_t seq_pwm[256] = {};

struct io_descriptor *io_spi_master;
struct io_descriptor *io_spi_slave;

volatile bool enabled = true;

static void int_CLEAR(void) {

	// spi_s_async_flush_rx_buffer(&SPI_1);
	// spi_s_async_abort_tx(&SPI_1);

	memset(column_rx, 0, MY * BPC);
	memset(column_tx, 0, MY * BPC);
	memset(frame, 0, MX * MY * BPC);
}

static void int_SHIFT(void) {
	// NOP
}

static void int_OE(void) {
	enabled = gpio_get_pin_level(OE);
}

static void frame_sent(const struct spi_m_async_descriptor *const io_descr) {
	gpio_set_pin_level(SPI0_SS, true);
}

static void frame_received(const struct spi_s_async_descriptor *const desc) {
	//io_read(io_spi_slave, column_rx, MY * BPC);
	//ringbuffer_flush((struct ringbuffer *) &desc->rx_rb);
	
	memcpy(column_tx, frame, (MY * BPC)); // Copy column into transmit buffer
	memcpy(frame, frame + (MY * BPC), MS - (MY * BPC)); // Move frame by one column
	memcpy(frame + MS - (MY * BPC), column_rx, (MY * BPC)); // Copy received buffer into frame
	
	gpio_set_pin_level(SPI0_SS, false);
	//spi_m_async_transfer(&SPI_0, column_tx, column_tmp, (MY * BPC));
	io_write(io_spi_master, column_tx, MY * BPC);

	#ifdef LED_STATUS
		gpio_toggle_pin_level(LED);
	#endif
}

void refresher() {
	
	uint16_t from = 0;
	uint16_t to = 0;
	uint16_t idx = 0;
	
	while(1) {
		for (uint8_t pwm = 1; pwm <= (pow(2, BPC) - 1); pwm++) {

			for (uint8_t row = 0; row < MY; row++) {

				from = row + (seq_pwm[pwm] * MY);
				to = from + (MX * MY * BPC);

				for (idx = from; idx < to; idx+=(MY * BPC)) {
					PORT_IOBUS->Group[GPIO_PORTA].OUTCLR.reg = 0b111111; // Clear RGBRGB
					PORT_IOBUS->Group[GPIO_PORTA].OUTSET.reg = frame[idx]; // Set RGBRGB
					
					PORT_IOBUS->Group[GPIO_PORTA].OUTSET.reg = 0b1000000; // P_CLK true
					PORT_IOBUS->Group[GPIO_PORTA].OUTCLR.reg = 0b1000000; // P_CLK false
				}
				
				if (enabled) {
					PORT_IOBUS->Group[GPIO_PORTB].OUTSET.reg = 0b110000000000; // P_OE + P_STB true
					PORT_IOBUS->Group[GPIO_PORTA].OUTCLR.reg = 0b1110000000000000000; // Clear ABC
					PORT_IOBUS->Group[GPIO_PORTA].OUTSET.reg = (row << 16);	// Set ABC
					PORT_IOBUS->Group[GPIO_PORTB].OUTCLR.reg = 0b110000000000; // P_OE + P_STB false
				}
			}

		}
		
	}

}

int main(void) {
	
	atmel_start_init();
		
	for (uint8_t i = 0; i < 255; i++) {
		seq_pwm[i] = 0;
		if (i & 1) seq_pwm[i] = 0;
		if (i & 2) seq_pwm[i] = 1;
		if (i & 4) seq_pwm[i] = 2;
		if (i & 8) seq_pwm[i] = 3;
		if (i & 16) seq_pwm[i] = 4;
		if (i & 32) seq_pwm[i] = 5;
		if (i & 64) seq_pwm[i] = 6;
		if (i & 128) seq_pwm[i] = 7;
	}

	ext_irq_register(PIN_PB22, int_CLEAR);
	ext_irq_register(PIN_PB23, int_SHIFT);
	ext_irq_register(PIN_PA27, int_OE);
	
	spi_m_async_get_io_descriptor(&SPI_0, &io_spi_master);
	spi_m_async_register_callback(&SPI_0, SPI_M_ASYNC_CB_XFER, (FUNC_PTR)frame_sent);
	spi_m_async_enable(&SPI_0);

	spi_s_async_init(&SPI_1, SERCOM2, (uint8_t *)column_rx, MY * BPC);
	spi_s_async_get_io_descriptor(&SPI_1, &io_spi_slave);
	spi_s_async_register_callback(&SPI_1, SPI_S_CB_COMPLETE, (FUNC_PTR)frame_received);
	spi_s_async_enable(&SPI_1);

	refresher();

}
