package com.example.testsearch.dto;

public class ImageTest {

    private  int num;
    private String filename;
    private String image;


    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("ImageTest{");
        sb.append("num=").append(num);
        sb.append(", filename='").append(filename).append('\'');
        sb.append(", image='").append(image).append('\'');
        sb.append('}');
        return sb.toString();
    }
}
