package com.example.testsearch.controller;

import com.example.testsearch.dto.Data;
import com.example.testsearch.dto.ImageFile;
import com.example.testsearch.dto.UserDto;
import com.example.testsearch.mapper.UserMapper;
import com.example.testsearch.service.AdminService;
import com.example.testsearch.service.UserService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private static final Logger logger = (Logger) LogManager.getLogger(SearchController.class);

    private UserService userService;
    private AdminService adminService;


    public AdminController(UserService userService, AdminService adminService){
        this.userService = userService;
        this.adminService = adminService;

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

    //data 등록화면
    @GetMapping("/insert")
    public String addImage(Model model, HttpSession session) {

        String sessionEmail = (String) session.getAttribute("SEMAIL");
        model.addAttribute("title", "작품 등록");
        model.addAttribute("SEMAIL",sessionEmail);

        return "admin/insert";
    }

    //data 등록 처리
    @PostMapping("/insert")
    public String addData(  Data data
            , HttpSession session
            , @RequestParam MultipartFile[] fileImage
            , HttpServletRequest request) {

        String sessionEmail = (String) session.getAttribute("SEMAIL");

        /*String Providing_Institution = request.getParameter("NHM - I");
        if("NHM - I".equals(Providing_Institution)){
            data.setProviding_Institution("National History Museum");
        }*/

        //파일 업로드
        String serverName = request.getServerName();
        String fileRealPath = "";
        if("localhost".equals(serverName)) {
            fileRealPath = System.getProperty("user.dir") + "/src/main/resources/static/";
            //fileRealPath = request.getSession().getServletContext().getRealPath("/WEB-INF/classes/static/");
        }else {
            fileRealPath = request.getSession().getServletContext().getRealPath("/WEB-INF/classes/static/");
        }

        logger.info("data 등록 폼에서 입력받은 데이터: {}", data);

        adminService.addData(data, sessionEmail, fileImage, fileRealPath);


        return "redirect:/test/list2";

    }


}
