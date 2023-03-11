package com.where.gulimall;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@SpringBootApplication
@EnableDiscoveryClient
public class LibraryGatewayApplication {

    public static void main(String[] args) {
        SpringApplication.run(LibraryGatewayApplication.class, args);
    }

}
