package com.dingjiaxiong.project;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.dingjiaxiong.project.mapper")
public class XiongApiBackendApplication {

    public static void main(String[] args) {
        SpringApplication.run(XiongApiBackendApplication.class, args);
    }

}
