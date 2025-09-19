package com.example.gitactions;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class GitActions {
    @GetMapping("/")
    public String home() {
        System.out.println("---------home-----------");
       return "index";
    }
}
