package com.giza.store;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;



@SpringBootApplication
public class GIZAshoppingStoreApplication extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(GIZAshoppingStoreApplication.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(GIZAshoppingStoreApplication.class, args);
	}

}
