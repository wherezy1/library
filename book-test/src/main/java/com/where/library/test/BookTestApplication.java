package com.where.library.test;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@EnableDiscoveryClient
@SpringBootApplication
public class BookTestApplication {

    public static void main(String[] args) {
        SpringApplication.run(BookTestApplication.class, args);
    }

}
