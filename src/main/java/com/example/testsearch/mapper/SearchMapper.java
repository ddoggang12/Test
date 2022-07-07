package com.example.testsearch.mapper;

import com.example.testsearch.dto.ArtWork;
import com.example.testsearch.dto.ImageFile;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface SearchMapper {

    List<ArtWork> getArtWorkList();

    List<ArtWork> getArtWorkSearchList(Map<String, Object> paramMap);

    //아이디로 상세 검색
    public ArtWork getArtWorkSearchDetailList(String art_id);

    //이미지 등록 처리
    public int ImageInsert(ImageFile imageFile);

    //이미지 목록 조회
    public List<ImageFile> getImageFileList();

}
