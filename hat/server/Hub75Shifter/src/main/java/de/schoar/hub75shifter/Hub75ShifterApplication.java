package de.schoar.hub75shifter;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Hub75ShifterApplication {

	public static final int MY = 8;
	public static final int BPC = 8;

	public static final boolean PI_EXISTS = true;

	public static void main(String[] args) {
		SpringApplication.run(Hub75ShifterApplication.class, args);
	}
	
}
