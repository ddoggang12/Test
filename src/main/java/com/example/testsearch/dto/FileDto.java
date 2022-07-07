package com.example.testsearch.dto;

public class FileDto {

    private String fileIdx;
    private String fileOriginalName;
    private String fileNewName;
    private String filePath;
    private String fileSize;


    public String getFileIdx() {
        return fileIdx;
    }

    public void setFileIdx(String fileIdx) {
        this.fileIdx = fileIdx;
    }

    public String getFileOriginalName() {
        return fileOriginalName;
    }

    public void setFileOriginalName(String fileOriginalName) {
        this.fileOriginalName = fileOriginalName;
    }

    public String getFileNewName() {
        return fileNewName;
    }

    public void setFileNewName(String fileNewName) {
        this.fileNewName = fileNewName;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    public String getFileSize() {
        return fileSize;
    }

    public void setFileSize(String fileSize) {
        this.fileSize = fileSize;
    }


    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("FileDto{");
        sb.append("fileIdx='").append(fileIdx).append('\'');
        sb.append(", fileOriginalName='").append(fileOriginalName).append('\'');
        sb.append(", fileNewName='").append(fileNewName).append('\'');
        sb.append(", filePath='").append(filePath).append('\'');
        sb.append(", fileSize='").append(fileSize).append('\'');
        sb.append('}');
        return sb.toString();
    }

}
