package com.where.library.elastic;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = DataSourceAutoConfiguration.class)
public class BookSearchApplication {

    public static void main(String[] args) {
        SpringApplication.run(BookSearchApplication.class, args);
    }

}
