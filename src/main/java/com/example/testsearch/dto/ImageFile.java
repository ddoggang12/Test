package com.example.testsearch.dto;

import java.util.List;

public class ImageFile {

    private String fileIdx;

    private String fileTitle;

    private List<FileDto> fileList;


    public String getFileIdx() {
        return fileIdx;
    }

    public void setFileIdx(String fileIdx) {
        this.fileIdx = fileIdx;
    }

    public String getFileTitle() {
        return fileTitle;
    }

    public void setFileTitle(String fileTitle) {
        this.fileTitle = fileTitle;
    }

    public List<FileDto> getFileList() {
        return fileList;
    }

    public void setFileList(List<FileDto> fileList) {
        this.fileList = fileList;
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("ImageFile{");
        sb.append("fileIdx='").append(fileIdx).append('\'');
        sb.append(", fileTitle='").append(fileTitle).append('\'');
        sb.append(", fileList=").append(fileList);
        sb.append('}');
        return sb.toString();
    }
}
