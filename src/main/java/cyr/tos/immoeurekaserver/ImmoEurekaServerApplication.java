package cyr.tos.immoeurekaserver;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@EnableEurekaServer
@SpringBootApplication
public class ImmoEurekaServerApplication {

    public static void main(String[] args) {
        SpringApplication.run(ImmoEurekaServerApplication.class, args);
        System.out.println("==== ImmoEurekaServerApplication started ! ====");
    }

}
