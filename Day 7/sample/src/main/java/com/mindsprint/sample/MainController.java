package com.mindsprint.sample;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {
    @GetMapping("/hello")
    public String getHello() {
        return "Hello from my new springboot app";
    }
    @GetMapping("/employee")
    public Employee getEmployee(){
        return new Employee(1, "Harikesh Kumar Sharma", "CS",1000000);
    }
}
