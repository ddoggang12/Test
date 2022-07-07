package com.example.testsearch.controller;

import com.example.testsearch.dto.ArtWork;
import com.example.testsearch.mapper.SearchMapper;
import com.example.testsearch.service.SearchService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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

        model.addAttribute("title","검색 테스트");
        model.addAttribute("artWorkList", artWorkList);

        return "list";
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

        return "searchResult";
    }

    @GetMapping("/searchDetail")
    public String searchDetail(  Model model
                                ,@RequestParam(value = "art_id",required = false)String art_id){

        ArtWork artWork = searchService.getArtWorkSearchDetailList(art_id);
        logger.info("artWork 담긴 값 : {} ", artWork);

        model.addAttribute("title","검색 상세 화면");
        model.addAttribute("artWork",artWork);

        return "searchDetail";
    }

}
