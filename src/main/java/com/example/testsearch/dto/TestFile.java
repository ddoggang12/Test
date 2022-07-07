package com.example.testsearch.dto;

public class TestFile {

    private String fileIdx;
    private String fileTitle;


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

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("TestFile{");
        sb.append("fileIdx='").append(fileIdx).append('\'');
        sb.append(", fileTitle='").append(fileTitle).append('\'');
        sb.append('}');
        return sb.toString();
    }

}
