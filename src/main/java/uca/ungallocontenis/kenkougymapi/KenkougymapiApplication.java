package uca.ungallocontenis.kenkougymapi;

import org.slf4j.*;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@SpringBootApplication
public class KenkougymapiApplication implements CommandLineRunner {
	private static final Logger LOG = org.slf4j.LoggerFactory.getLogger(KenkougymapiApplication.class);

	public static void main(String[] args) {
		SpringApplication.run(KenkougymapiApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		// For testing...
		LOG.info("Un Gallo Con Tenis");
	}

}