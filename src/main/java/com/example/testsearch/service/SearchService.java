package com.example.testsearch.service;

import com.example.testsearch.dto.ArtWork;
import com.example.testsearch.mapper.SearchMapper;
import org.apache.ibatis.session.SqlSession;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
@Transactional
public class SearchService {

    private static final Logger logger = (Logger) LogManager.getLogger(SearchService.class);
    private SearchMapper searchMapper;
    private SqlSession query;

    @Autowired
    public SearchService(SearchMapper searchMapper){
        this.searchMapper = searchMapper;
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

    public Map<String, Object> getByteImage(){
        return query.selectOne("query.getByteImage");
    }

}
