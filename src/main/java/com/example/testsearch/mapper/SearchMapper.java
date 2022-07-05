package com.example.testsearch.mapper;

import com.example.testsearch.dto.ArtWork;
import com.example.testsearch.dto.TestFile;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface SearchMapper {

    List<ArtWork> getArtWorkList();

    List<ArtWork> getArtWorkSearchList(Map<String, Object> paramMap);

    //test_file 이미지 등록 처리
    public int testFileInsert(TestFile testFile);

}
