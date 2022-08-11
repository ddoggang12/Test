package com.example.testsearch.service;

import com.example.testsearch.dto.ArtWork;
import com.example.testsearch.dto.FileDto;
import com.example.testsearch.dto.ImageFile;
import com.example.testsearch.mapper.CommonMapper;
import com.example.testsearch.mapper.FileMapper;
import com.example.testsearch.mapper.SearchMapper;
import com.example.testsearch.util.FileUtil;
import org.apache.ibatis.session.SqlSession;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Transactional
public class SearchService {

    private static final Logger logger = (Logger) LogManager.getLogger(SearchService.class);
    private SearchMapper searchMapper;
    private CommonMapper commonMapper;
    private FileUtil fileUtil;
    private FileMapper fileMapper;

    @Autowired
    public SearchService(SearchMapper searchMapper, CommonMapper commonMapper, FileUtil fileUtil, FileMapper fileMapper){
        this.searchMapper = searchMapper;
        this.commonMapper = commonMapper;
        this.fileUtil = fileUtil;
        this.fileMapper = fileMapper;
    }

    public List<ArtWork> getArtWorkList(){

        List<ArtWork> artWorkList = searchMapper.getArtWorkList();

        return artWorkList;
    }

   public List<ArtWork> getArtWorkSearchList(Map<String, Object> paramMap){

        List<ArtWork> artWorkSearchList = searchMapper.getArtWorkSearchList(paramMap);

        return artWorkSearchList;
    }

    public ArtWork getArtWorkSearchDetailList(String art_id){

        return searchMapper.getArtWorkSearchDetailList(art_id);

    }


    //이미지 등록 처리
    public int addImage(ImageFile imageFile, MultipartFile[] fileImage, String fileRealPath) {

        String filecode = commonMapper.getNewCode("fileIdx", "imageFile");
        imageFile.setFileIdx(filecode);

        int result = searchMapper.addImage(imageFile);

        List<FileDto> fileList = fileUtil.parseFileInfo(fileImage, fileRealPath);

        fileMapper.addFiles(fileList);

        List<Map<String, String>> paramList = new ArrayList<Map<String, String>>();

        Map<String, String> paramMap = null;

        for(FileDto fileDto : fileList) {
            paramMap =  new HashMap<String, String>();
            paramMap.put("referenceCode", filecode);
            paramMap.put("fileIdx", fileDto.getFileIdx());
            paramList.add(paramMap);
        }

        fileMapper.addFileControl(paramList);

        return result;

    }

    //이미지 목록 조회
    public List<ImageFile> getImageFileList(){

        List<ImageFile> imageFileList =  searchMapper.getImageFileList();

        return imageFileList;

    }
}
