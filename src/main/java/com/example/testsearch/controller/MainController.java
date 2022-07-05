package com.example.testsearch.controller;

import com.example.testsearch.dto.ArtWork;
import com.example.testsearch.dto.FileDto;
import com.example.testsearch.dto.TestFile;
import com.example.testsearch.mapper.CommonMapper;
import com.example.testsearch.mapper.FileMapper;
import com.example.testsearch.mapper.SearchMapper;
import com.example.testsearch.service.SearchService;
import com.example.testsearch.util.FileUtil;
import com.sun.tools.javac.Main;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
public class MainController {

    private static final Logger logger = (Logger) LogManager.getLogger(MainController.class);

    private SearchService searchService;
    private SearchMapper searchMapper;
    @Autowired
    public MainController(SearchService searchService, SearchMapper searchMapper){
        this.searchService = searchService;
        this.searchMapper = searchMapper;
    }

    @GetMapping("/")
    public String main(Model model){

        model.addAttribute("title", "검색");

        return "main";
    }

   /* @GetMapping("/insert")
    public String testFileInsert(  Model model
                                 , TestFile testFile
                                 , @RequestParam MultipartFile[] fileImage
                                 , HttpServletRequest request){
        //파일 업로드
        String serverName = request.getServerName();
        String fileRealPath="";
        if("localhost".equals(serverName)){
            fileRealPath = System.getProperty("user.dir") + "/src/main/resources/static/";
        }else{
            fileRealPath = request.getSession().getServletContext().getRealPath("/src/main/resources/static/");
        }
        logger.info("등록 폼에서 입력받은 데이터: {}", testFile);

        searchService.testFileInsert(testFile, fileImage, fileRealPath);
        model.addAttribute("title", "등록");

        return "test/list";
    }*/
}
