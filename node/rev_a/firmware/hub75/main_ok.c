#include <atmel_start.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "main.h"

/*
Memory Layout
[ROW0 PWM0] [ROW1 PWM0] ... [ROW7 PWM0]
...
[ROW0 PWM7] [ROW1 PWM7] ... [ROW7 PWM7]
*/

const uint8_t MX = 32; // Horizontal pixels
const uint8_t MY = 8; // Packed Vertical pixels
const uint8_t BPC = 8; // Bits Per Color
const uint16_t MS = 32 * 8 * 8; // Frame buffer size

volatile uint8_t frame[32 * 8 * 8];
uint8_t column_rx[8 * 8];
uint8_t column_tx[8 * 8];

static struct timer_task TIMER_0_task1, TIMER_0_task2;

static void tx_complete_cb_SPI_0(struct _dma_resource *resource)
{
	/* Transfer completed */
}

uint16_t rrr = 0;
static void TIMER_0_task1_cb(const struct timer_task *const timer_task)
{
	//frame[rrr] = rand() % 256;
	rrr++;
	if (rrr > MS) {
		rrr = 0;
	}
}
uint16_t off = 0;

int main(void) {
	
	atmel_start_init();
	
	PORT->Group[0].PINCFG[0].bit.DRVSTR = 1;
	PORT->Group[0].PINCFG[1].bit.DRVSTR = 1;
	PORT->Group[0].PINCFG[2].bit.DRVSTR = 1;
	PORT->Group[0].PINCFG[3].bit.DRVSTR = 1;
	PORT->Group[0].PINCFG[4].bit.DRVSTR = 1;
	PORT->Group[0].PINCFG[5].bit.DRVSTR = 1;
	PORT->Group[0].PINCFG[6].bit.DRVSTR = 1;

	PORT->Group[0].PINCFG[16].bit.DRVSTR = 1;
	PORT->Group[0].PINCFG[17].bit.DRVSTR = 1;
	PORT->Group[0].PINCFG[18].bit.DRVSTR = 1;

	PORT->Group[1].PINCFG[8].bit.DRVSTR = 1;
	PORT->Group[1].PINCFG[9].bit.DRVSTR = 1;
	PORT->Group[1].PINCFG[10].bit.DRVSTR = 1;
	
	convert_image(image_faded);
		
	/*
	TIMER_0_task1.interval = 1;
	TIMER_0_task1.cb       = TIMER_0_task1_cb;
	TIMER_0_task1.mode     = TIMER_TASK_REPEAT;

	timer_add_task(&TIMER_0, &TIMER_0_task1);
	timer_start(&TIMER_0);
	*/

	/*
	struct io_descriptor *io_spi_master;
	spi_m_dma_get_io_descriptor(&SPI_0, &io_spi_master);
	spi_m_dma_register_callback(&SPI_0, SPI_M_DMA_CB_TX_DONE, tx_complete_cb_SPI_0);
	spi_m_dma_enable(&SPI_0);

	struct io_descriptor *io_spi_slave;
	spi_s_sync_get_io_descriptor(&SPI_1, &io_spi_slave);
	spi_s_sync_enable(&SPI_1);

	srand(0x42);
	for (uint16_t c = 0; c < 64; c++) {
	column_tx[c] = rand() % 256;
	}

	io_write(io_spi_master, column_tx, MY * BPC);
	io_read(io_spi_slave,  column_rx, MY * BPC);
	*/

	

	uint16_t from = 0;
	uint16_t to = 0;
	uint16_t idx = 0;
	uint16_t round = 0;

	uint8_t seq_ghosting[8] = {0,7,1,6,2,5,3,4};
	//	uint8_t ghosting[8] = {0,2,4,6,1,3,5,7};
	//	uint8_t ghosting[8] = {0,3,6,1,4,7,2,5};
	
	uint8_t seq_pwm[256] = {};

	for (uint8_t i = 0; i < 255; i++) {
		uint8_t pwm = 0;
		if (i & 1) pwm = 0;
		if (i & 2) pwm = 1;
		if (i & 4) pwm = 2;
		if (i & 8) pwm = 3;
		if (i & 16) pwm = 4;
		if (i & 32) pwm = 5;
		if (i & 64) pwm = 6;
		if (i & 128) pwm = 7;
		seq_pwm[i] = pwm;
	}
	
	while(1) {
		for (uint8_t pwm = 255; pwm != 1; pwm--) {
			for (uint8_t row = 0; row < MY; row++) {
				from = (seq_ghosting[row] * MX) + (seq_pwm[pwm] * MX * MY);
				to = from + MX;
				for (idx = from; idx < to; idx++) {
					
					
					//gpio_set_port_level(GPIO_PORTA, 0b111111, false);
					PORT_IOBUS->Group[GPIO_PORTA].OUTCLR.reg = 0b111111;
					
					//gpio_set_port_level(GPIO_PORTA, frame[idx], true);
					PORT_IOBUS->Group[GPIO_PORTA].OUTSET.reg = frame[idx];
					
					//gpio_set_pin_level(P_CLK, true);
					PORT_IOBUS->Group[GPIO_PORTB].OUTSET.reg = (1 << 8);
					
					//gpio_set_pin_level(P_CLK, false);
					PORT_IOBUS->Group[GPIO_PORTB].OUTCLR.reg = (1 << 8);
				}

				//gpio_set_port_level(GPIO_PORTB, 0b11000000000, true);
				gpio_set_pin_level(P_OE, true);
				
				//gpio_set_port_level(GPIO_PORTA, 0b1110000000000000000, false);
				PORT_IOBUS->Group[GPIO_PORTA].OUTCLR.reg = 0b1110000000000000000;
				gpio_set_port_level(GPIO_PORTA, (seq_ghosting[row] << 16), true);
				asm("nop");
				gpio_set_pin_level(P_STB, true);
				
				//gpio_set_pin_level(P_OE, false);
				//gpio_set_pin_level(P_STB, false);
				//gpio_set_port_level(GPIO_PORTB, 0b11000000000, false);
				PORT_IOBUS->Group[GPIO_PORTB].OUTCLR.reg = 0b11000000000;
			}

		}
		
		//memcpy(frame, frame + (MX * 8), MS - (MX * 8));

		round++;
		if (round == 100)  {
			convert_image(image_faded_holes);
		}
		if (round == 200)  {
			convert_image(image_hdi);
		}
		if (round == 300)  {
			convert_image(image_faded);
			round = 0;
		}
		
	}
	
}

void convert_image(struct image gimp_image) {
	uint16_t k = 0;
	for (uint16_t c = 0; c < MS; c++) {
		frame[c] = 0;
	}
	for (uint16_t c = 0; c < (32 * 8 * 3); c+=3) {
		// - R1
		if (gimp_image.pixel_data[c] & 1) {
			frame[k + (MX * MY * 0)] |= 1;
		}
		if (gimp_image.pixel_data[c] & 2) {
			frame[k + (MX *  MY * 1)] |= 1;
		}
		if (gimp_image.pixel_data[c] & 4) {
			frame[k + (MX *  MY * 2)] |= 1;
		}
		if (gimp_image.pixel_data[c] & 8) {
			frame[k + (MX *  MY * 3)] |= 1;
		}
		if (gimp_image.pixel_data[c] & 16) {
			frame[k + (MX *  MY * 4)] |= 1;
		}
		if (gimp_image.pixel_data[c] & 32) {
			frame[k + (MX *   MY * 5)] |= 1;
		}
		if (gimp_image.pixel_data[c] & 64) {
			frame[k + (MX *  MY * 6)] |= 1;
		}
		if (gimp_image.pixel_data[c] & 128) {
			frame[k + (MX *  MY * 7)] |= 1;
		}

		// - G1
		if (gimp_image.pixel_data[c+1] & 1) {
			frame[k + (MX *  MY * 0)] |= 2;
		}
		if (gimp_image.pixel_data[c+1] & 2) {
			frame[k  + (MX *  MY * 1)] |= 2;
		}
		if (gimp_image.pixel_data[c+1] & 4) {
			frame[k  + (MX *  MY * 2)] |= 2;
		}
		if (gimp_image.pixel_data[c+1] & 8) {
			frame[k + (MX *  MY * 3)] |= 2;
		}
		if (gimp_image.pixel_data[c+1] & 16) {
			frame[k  + (MX *  MY * 4)] |= 2;
		}
		if (gimp_image.pixel_data[c+1] & 32) {
			frame[k  + (MX *  MY * 5)] |= 2;
		}
		if (gimp_image.pixel_data[c+1] & 64) {
			frame[k  + (MX *  MY * 6)] |= 2;
		}
		if (gimp_image.pixel_data[c+1] & 128) {
			frame[k  + (MX *  MY * 7)] |= 2;
		}

		// - B1
		if (gimp_image.pixel_data[c+2] & 1) {
			frame[k  + (MX *  MY * 0)] |= 4;
		}
		if (gimp_image.pixel_data[c+2] & 2) {
			frame[k + (MX * MY *  1)] |= 4;
		}
		if (gimp_image.pixel_data[c+2] & 4) {
			frame[k  + (MX * MY *  2)] |= 4;
		}
		if (gimp_image.pixel_data[c+2] & 8) {
			frame[k  + (MX *  MY * 3)] |= 4;
		}
		if (gimp_image.pixel_data[c+2] & 16) {
			frame[k  + (MX * MY *  4)] |= 4;
		}
		if (gimp_image.pixel_data[c+2] & 32) {
			frame[k  + (MX *  MY * 5)] |= 4;
		}
		if (gimp_image.pixel_data[c+2] & 64) {
			frame[k  + (MX *  MY * 6)] |= 4;
		}
		if (gimp_image.pixel_data[c+2] & 128) {
			frame[k  + (MX * MY *  7)] |= 4;
		}

		// - R2
		if (gimp_image.pixel_data[c+ (32 * 8 * 3)] & 1) {
			frame[k + (MX * MY * 0)] |= 8;
		}
		if (gimp_image.pixel_data[c+ (32 * 8 * 3)] & 2) {
			frame[k + (MX *  MY * 1)] |= 8;
		}
		if (gimp_image.pixel_data[c+ (32 * 8 * 3)] & 4) {
			frame[k + (MX *  MY * 2)] |= 8;
		}
		if (gimp_image.pixel_data[c+ (32 * 8 * 3)] & 8) {
			frame[k + (MX *  MY * 3)] |= 8;
		}
		if (gimp_image.pixel_data[c+ (32 * 8 * 3)] & 16) {
			frame[k + (MX *  MY * 4)] |= 8;
		}
		if (gimp_image.pixel_data[c+ (32 * 8 * 3)] & 32) {
			frame[k + (MX *   MY * 5)] |= 8;
		}
		if (gimp_image.pixel_data[c+ (32 * 8 * 3)] & 64) {
			frame[k + (MX *  MY * 6)] |= 8;
		}
		if (gimp_image.pixel_data[c+ (32 * 8 * 3)] & 128) {
			frame[k + (MX *  MY * 7)] |= 8;
		}

		// - G2
		if (gimp_image.pixel_data[c+1+ (32 * 8 * 3)] & 1) {
			frame[k + (MX *  MY * 0)] |= 16;
		}
		if (gimp_image.pixel_data[c+1+ (32 * 8 * 3)] & 2) {
			frame[k  + (MX *  MY * 1)] |= 16;
		}
		if (gimp_image.pixel_data[c+1+ (32 * 8 * 3)] & 4) {
			frame[k  + (MX *  MY * 2)] |= 16;
		}
		if (gimp_image.pixel_data[c+1+ (32 * 8 * 3)] & 8) {
			frame[k + (MX *  MY * 3)] |= 16;
		}
		if (gimp_image.pixel_data[c+1+ (32 * 8 * 3)] & 16) {
			frame[k  + (MX *  MY * 4)] |= 16;
		}
		if (gimp_image.pixel_data[c+1+ (32 * 8 * 3)] & 32) {
			frame[k  + (MX *  MY * 5)] |= 16;
		}
		if (gimp_image.pixel_data[c+1+ (32 * 8 * 3)] & 64) {
			frame[k  + (MX *  MY * 6)] |= 16;
		}
		if (gimp_image.pixel_data[c+1+ (32 * 8 * 3)] & 128) {
			frame[k  + (MX *  MY * 7)] |= 16;
		}

		// - B2
		if (gimp_image.pixel_data[c+2+ (32 * 8 * 3)] & 1) {
			frame[k  + (MX *  MY * 0)] |= 32;
		}
		if (gimp_image.pixel_data[c+2+ (32 * 8 * 3)] & 2) {
			frame[k + (MX * MY *  1)] |= 32;
		}
		if (gimp_image.pixel_data[c+2+ (32 * 8 * 3)] & 4) {
			frame[k  + (MX * MY *  2)] |= 32;
		}
		if (gimp_image.pixel_data[c+2+ (32 * 8 * 3)] & 8) {
			frame[k  + (MX *  MY * 3)] |= 32;
		}
		if (gimp_image.pixel_data[c+2+ (32 * 8 * 3)] & 16) {
			frame[k  + (MX * MY *  4)] |= 32;
		}
		if (gimp_image.pixel_data[c+2+ (32 * 8 * 3)] & 32) {
			frame[k  + (MX *  MY * 5)] |= 32;
		}
		if (gimp_image.pixel_data[c+2+ (32 * 8 * 3)] & 64) {
			frame[k  + (MX *  MY * 6)] |= 32;
		}
		if (gimp_image.pixel_data[c+2+ (32 * 8 * 3)] & 128) {
			frame[k  + (MX * MY *  7)] |= 32;
		}
		k++;
	}

}
