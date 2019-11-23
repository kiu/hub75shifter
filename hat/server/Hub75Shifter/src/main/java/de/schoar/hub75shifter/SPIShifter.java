package de.schoar.hub75shifter;

import java.awt.Color;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ExitCodeGenerator;
import org.springframework.boot.SpringApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;

import com.pi4j.io.gpio.GpioController;
import com.pi4j.io.gpio.GpioFactory;
import com.pi4j.io.gpio.GpioPinDigitalInput;
import com.pi4j.io.gpio.GpioPinDigitalOutput;
import com.pi4j.io.gpio.PinPullResistance;
import com.pi4j.io.gpio.PinState;
import com.pi4j.io.gpio.RaspiPin;
import com.pi4j.io.gpio.event.GpioPinDigitalStateChangeEvent;
import com.pi4j.io.gpio.event.GpioPinListenerDigital;
import com.pi4j.io.spi.SpiChannel;
import com.pi4j.io.spi.SpiDevice;
import com.pi4j.io.spi.SpiFactory;

import de.schoar.hub75shifter.content.ContentHelper;

@Service
public class SPIShifter extends Thread {
	private static final Logger LOG = LoggerFactory.getLogger(SPIShifter.class);

	@Autowired
	private ApplicationContext appContext;

	private boolean running = true;
	private Boolean poweroff = false;

	private SpiDevice spi = null;
	private GpioController gpio = null;

	private GpioPinDigitalOutput pin_cs = null;
	@SuppressWarnings("unused")
	private GpioPinDigitalOutput pin_shift = null;
	private GpioPinDigitalOutput pin_oe = null;
	private GpioPinDigitalOutput pin_clear = null;

	private GpioPinDigitalInput pin_mode = null;

	private List<BufferedImage> queue = new LinkedList<BufferedImage>();

	private List<SPIShifterEmptyListener> listeners = new LinkedList<SPIShifterEmptyListener>();

	public void register(SPIShifterEmptyListener listener) {
		listeners.add(listener);
	}

	public void add(BufferedImage bi) {
		synchronized (queue) {
			queue.add(bi);
		}
	}

	public void add(List<BufferedImage> l) {
		synchronized (queue) {
			queue.addAll(l);
		}
	}

	public void poweroff() {
		synchronized (poweroff) {
			if (poweroff) {
				return;
			}
			poweroff = true;
		}

		off();

		try {
			Thread.sleep(3000);
		} catch (InterruptedException e) {
		}

		try {
			Runtime.getRuntime().exec("/usr/bin/sudo /sbin/poweroff");
		} catch (IOException e) {
		}

		SpringApplication.exit(appContext, (ExitCodeGenerator) () -> 42);
	}

	@PostConstruct
	private void init() {
		if (Hub75ShifterApplication.PI_EXISTS) {
			try {
				spi = SpiFactory.getInstance(SpiChannel.CS0, 62500, SpiDevice.DEFAULT_SPI_MODE);
			} catch (IOException e) {
				LOG.error("Could not initialize SPI!", e);
				SpringApplication.exit(appContext, (ExitCodeGenerator) () -> 23);
				return;
			}

			gpio = GpioFactory.getInstance();
			pin_cs = gpio.provisionDigitalOutputPin(RaspiPin.GPIO_21, "CS", PinState.LOW);
			pin_shift = gpio.provisionDigitalOutputPin(RaspiPin.GPIO_22, "SHIFT", PinState.LOW);
			pin_oe = gpio.provisionDigitalOutputPin(RaspiPin.GPIO_23, "OE", PinState.LOW);
			pin_clear = gpio.provisionDigitalOutputPin(RaspiPin.GPIO_24, "CLEAR", PinState.LOW);

			pin_mode = gpio.provisionDigitalInputPin(RaspiPin.GPIO_07, PinPullResistance.OFF);
			pin_mode.addListener(new GpioPinListenerDigital() {
				@Override
				public void handleGpioPinDigitalStateChangeEvent(GpioPinDigitalStateChangeEvent event) {
					if (event.getEdge().getValue() == 3) {
						LOG.info("Poweroff by button event");
						poweroff();
					}
				}
			});
		}

		clear();

		List<BufferedImage> intro = new LinkedList<BufferedImage>();
		intro.add(ContentHelper.SEP);
		intro.add(ContentHelper.fontWrite("kiu ", Color.BLACK, Color.YELLOW));		
		add(intro);

		start();
	}

	@Override
	public void run() {
		super.run();

		Random rnd = new Random();
		SPIShifterEmptyListener l;

		while (running) {
			while (queue.isEmpty() && running) {
				sendBlank();
				if (!listeners.isEmpty()) {
					l = listeners.get(rnd.nextInt(listeners.size()));
					l.empty();
					LOG.debug("Next: " + l.getClass().getSimpleName());
				}
			}

			while (!queue.isEmpty() && running) {
				BufferedImage bi = null;
				synchronized (queue) {
					if (!queue.isEmpty()) {
						bi = queue.remove(0);
					}
				}
				sendFrame(bi);
			}
		}
	}

	public void clear() {
		synchronized (queue) {
			queue.clear();
			if (Hub75ShifterApplication.PI_EXISTS) {
				pin_oe.low();
				se(100);
				pin_clear.high();
				se(100);
				pin_clear.low();
				se(100);
				pin_oe.high();
				se(100);
			}
		}
	}

	@PreDestroy
	private void off() {
		synchronized (queue) {
			running = false;
			clear();
			if (Hub75ShifterApplication.PI_EXISTS) {
				gpio.shutdown();
			}
		}
	}

	private void sendFrame(BufferedImage bi) {
		if (bi == null) {
			return;
		}

		for (int x = 0; x < bi.getWidth(); x++) {
			if (Hub75ShifterApplication.PI_EXISTS) {
				pin_cs.low();
				se(1);
				try {
					spi.write(ContentHelper.convert(bi, x));
				} catch (IOException e) {
					LOG.error("Failed to send frame", e);
				}
				se(1);
				pin_cs.high();
				se(10);
			} else {
				ContentHelper.convert(bi, x);
			}
			if (!running) {
				return;
			}
		}
	}

	private void sendBlank() {
		if (Hub75ShifterApplication.PI_EXISTS) {
			pin_cs.low();
			se(1);
			try {
				spi.write(new byte[Hub75ShifterApplication.MY * Hub75ShifterApplication.BPC]);
			} catch (IOException e) {
				LOG.error("Failed to send blank", e);
			}
			se(1);
			pin_cs.high();
			se(10);
		}
	}

	private void se(long ms) {
		try {
			Thread.sleep(ms);
		} catch (InterruptedException e) {
		}
	}
}
