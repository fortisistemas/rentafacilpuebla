package com.fortisistemas.rfp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages={"com.fortisistemas.rfp"})
public class RentafacilpueblaApplication {

	public static void main(String[] args) {
		SpringApplication.run(RentafacilpueblaApplication.class, args);
	}

}

