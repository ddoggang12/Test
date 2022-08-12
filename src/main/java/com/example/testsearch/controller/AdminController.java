package com.example.testsearch.controller;

import com.example.testsearch.dto.UserDto;
import com.example.testsearch.mapper.UserMapper;
import com.example.testsearch.service.UserService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private static final Logger logger = (Logger) LogManager.getLogger(SearchController.class);

    private UserService userService;

    private UserMapper userMapper;

    public AdminController(UserService userService, UserMapper userMapper){
        this.userService = userService;
        this.userMapper = userMapper;

    }

    /* 전체 회원정보 조회 */
    @GetMapping("userList")
    public String getUserList(Model model){

        List<UserDto> userList = userService.getUserList();

        model.addAttribute("title", "전체 회원정보 목록");
        model.addAttribute("userList", userList);
        logger.info("userList : {}", userList);

        return "admin/userList";

    }

}
