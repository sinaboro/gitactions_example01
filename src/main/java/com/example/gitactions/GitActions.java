package com.example.gitactions;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GitActions {
    @GetMapping("/")
    public String home() {
       return "Hello, world CICD2!!";
    }
}
