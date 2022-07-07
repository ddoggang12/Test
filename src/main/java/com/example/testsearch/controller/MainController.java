package com.example.testsearch.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    private static final Logger logger = (Logger) LogManager.getLogger(MainController.class);


    @GetMapping("/")
    public String main(Model model){

        model.addAttribute("title", "검색");

        return "main";
    }

}
