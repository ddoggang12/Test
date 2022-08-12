package com.example.testsearch.controller;

import com.example.testsearch.dto.ArtWork;
import com.example.testsearch.dto.ImageFile;
import com.example.testsearch.mapper.SearchMapper;
import com.example.testsearch.service.SearchService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/test")
public class SearchController {

    private static final Logger logger = (Logger) LogManager.getLogger(SearchController.class);
    private SearchService searchService;
    private SearchMapper searchMapper;
    public SearchController(SearchService searchService, SearchMapper searchMapper){
        this.searchService = searchService;
        this.searchMapper = searchMapper;
    }


    @GetMapping("/list")
    public String testSearch(Model model){

        List<ArtWork> artWorkList = searchService.getArtWorkList();
        List<ImageFile> imageFileList = searchService.getImageFileList();

        model.addAttribute("title","검색 테스트");
        model.addAttribute("artWorkList", artWorkList);
        model.addAttribute("imageFileList", imageFileList);

        logger.info("artWorkList 담김 값: {}", artWorkList);

        return "test/list";
    }

    @GetMapping("/searchResult")
    public String searchResult( Model model
                               ,@RequestParam (value = "searchKey", defaultValue = "art_description") String searchKey
                               ,@RequestParam (value = "searchValue", required = false) String searchValue){

        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("searchKey", searchKey);
        paramMap.put("searchValue", searchValue);

        List<ArtWork> artWorkSearchList = searchService.getArtWorkSearchList(paramMap);
        logger.info("artWorkSearchList에 담긴 값 : {}", artWorkSearchList);

        model.addAttribute("title", "작품 검색");
        model.addAttribute("artWorkSearchList", artWorkSearchList);

        return "test/searchResult";
    }

    @GetMapping("/searchDetail")
    public String searchDetail(  Model model
                                ,@RequestParam(value = "art_id",required = false)String art_id
                                ,@RequestParam(value = "filePath", required = false) String filePath) throws ParseException {
        logger.info("파일 주소 : " , filePath);

        ArtWork artWork = searchService.getArtWorkSearchDetailList(art_id);
        logger.info("artWork 담긴 값 : {} ", artWork);

        model.addAttribute("title","검색 상세 화면");
        model.addAttribute("artWork",artWork);

        return "test/searchDetail";
    }


    //이미지 등록
    @GetMapping("/insert")
    public String addImage(Model model) {

        model.addAttribute("title", "작품 등록");

        return "test/insert";
    }

    //이미지 대체 등록 처리
    @PostMapping("/insert")
    public String addImage(  ImageFile imageFile
            , @RequestParam MultipartFile[] fileImage
            , HttpServletRequest request) {

        //파일 업로드
        String serverName = request.getServerName();
        String fileRealPath = "";
        if("localhost".equals(serverName)) {
            fileRealPath = System.getProperty("user.dir") + "/src/main/resources/static/";
            //fileRealPath = request.getSession().getServletContext().getRealPath("/WEB-INF/classes/static/");
        }else {
            fileRealPath = request.getSession().getServletContext().getRealPath("/WEB-INF/classes/static/");
        }

        logger.info("이미지 등록 폼에서 입력받은 데이터: {}", imageFile);

        searchService.addImage(imageFile, fileImage, fileRealPath);


        return "test/list";

    }





}
