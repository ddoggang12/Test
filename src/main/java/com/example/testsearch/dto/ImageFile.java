package com.example.testsearch.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Getter
@Setter
@ToString
public class ImageFile {

    private String fileIdx;

    private String fileTitle;

    private List<FileDto> fileList;


}
