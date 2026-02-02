package com.blaybus777;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@EnableJpaAuditing
@SpringBootApplication
public class Blaybus777Application {
    public static void main(String[] args) {
        SpringApplication.run(Blaybus777Application.class, args);
    }
}
