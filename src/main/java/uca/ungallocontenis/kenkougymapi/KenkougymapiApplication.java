package uca.ungallocontenis.kenkougymapi;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import uca.ungallocontenis.kenkougymapi.config.KenkouGymApp.KenkouGymAppInfo;


@SpringBootApplication
@ComponentScan("uca.ungallocontenis.kenkougymapi.*")
public class KenkougymapiApplication implements CommandLineRunner {
	private static final Logger LOG = org.slf4j.LoggerFactory.getLogger(KenkougymapiApplication.class);

	@Autowired
	private KenkouGymAppInfo clientInfo;

	public static void main(String[] args) {
		SpringApplication.run(KenkougymapiApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		// For testing...
		LOG.info("Un Gallo Con Tenis presenta: " + clientInfo.getName());
	}

}