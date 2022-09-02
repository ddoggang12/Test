package com.example.testsearch.controller;

import com.example.testsearch.dto.ArtWork;
import com.example.testsearch.dto.Data;
import com.example.testsearch.dto.FileDto;
import com.example.testsearch.dto.ImageFile;
import com.example.testsearch.mapper.SearchMapper;
import com.example.testsearch.service.SearchService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;
import java.time.LocalDateTime;
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

    /*자동완성 코드 컨트롤러부분*/
    @PostMapping("/insert")
    @ResponseBody
    public String getCode(){
        String autoIncreCode = searchMapper.getDataCode();
        logger.info(autoIncreCode);

        return autoIncreCode;
    }
    /*차트 코드 컨트롤러부분*/
    @PostMapping("/totalStatistics")
    @ResponseBody
    public List<Map<String, Object>> totalStatistics(){

        List<Map<String, Object>> PICntList = searchMapper.getPICntList();

        return PICntList;

    }
    /* can i use 차트 코드 컨트롤러부분*/

    @GetMapping("/totalStatisticsPopup")
    public String totalStatisticsPopup(Model model){

        List<Map<String, Object>> PICntList = searchMapper.getPICntList();
        logger.info("PICntList에 담긴 값 : {}", PICntList);
        model.addAttribute("title", "Staticstical Info");
        model.addAttribute("PICntList", PICntList);

        return "/test/totalStatisticsPopup";
    }

    /* data리스트 조회 */
    @GetMapping("/list2")
    public  String getDataList(Model model){

        List<Data> dataList = searchService.getDataList();
        logger.info("dataList 담긴 값 : {}", dataList);

        model.addAttribute("title", "data리스트 조회");
        model.addAttribute("dataList", dataList);

        return "test/list2";

    }

    /* 테스트리스트 조회 */
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

    /* 검색 */
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

    /* 상세검색 */
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

    /* data 검색 */
    @GetMapping("/dataSearchResult")
    public String dataSeachResult(Model model
                                 ,@RequestParam (value = "searchKey", defaultValue = "Description") String searchKey
                                 ,@RequestParam (value = "searchValue", required = false) String searchValue){

        logger.info("searchKey 담긴 값 : {}", searchKey);
        logger.info("searchValue 담긴 값 : {}", searchValue);

        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("searchKey", searchKey);
        paramMap.put("searchValue", searchValue);

        List<Data> dataSearchList = searchService.getDataSearchList(paramMap);
        logger.info("dataSearchList 담긴 값 : {}", dataSearchList);

        paramMap = null;

        model.addAttribute("title", "작품 검색");
        model.addAttribute("dataSearchList", dataSearchList);

        return "test/dataSearchResult";


    }


    /* Data_Code로 data 상세검색 */
    @GetMapping("/dataSearchDetail")
    public String dataSearchDetail( Model model
                                   ,@RequestParam(value = "Data_Code",required = false)String Data_Code
                                   ,@RequestParam(value = "filePath", required = false)String filePath) throws ParseException{

        logger.info("파일 주소 : " , filePath);

        Data data = searchService.getDataSearchDetailList(Data_Code);
        logger.info("data 담긴 값 : {} ", data);

        model.addAttribute("title","Data 검색 상세 화면");
        model.addAttribute("data",data);

        return "test/dataSearchDetail";


    }




}
