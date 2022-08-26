package com.example.testsearch.mapper;

import com.example.testsearch.dto.ArtWork;
import com.example.testsearch.dto.Data;
import com.example.testsearch.dto.ImageFile;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface SearchMapper {

    /* 통계 : Providing_Institution별 등록개수 */
    public List<Data> getPICntList();

    /* Data_Code로 data 상세 검색 */
    public Data getDataSearchDetailList(String Data_Code);

    /* data 검색 */
    List<Data> getDataSearchList(Map<String, Object> paramMap);

    /* data리스트 조회 */
    List<Data> getDataList();

    /* 테스트리스트 조회 */
    List<ArtWork> getArtWorkList();

    /* 검색 */
    List<ArtWork> getArtWorkSearchList(Map<String, Object> paramMap);

    //아이디로 상세 검색
    public ArtWork getArtWorkSearchDetailList(String art_id);

   /* //이미지 등록 처리
    public int addImage(ImageFile imageFile);
*/
    //이미지 목록 조회
    public List<ImageFile> getImageFileList();

}
