package com.example.testsearch.dto;

import java.util.List;

public class ArtWork {

    private String art_id;
    private int image_num;
    private String fileIdx;
    private String art_year;
    private String art_title;
    private String art_description;
    private String art_material;
    private String art_technique;
    private String art_size;
    private String inventory_number;
    private String art_code;
    private String art_storage;
    private String arrival_date;
    private String method_of_purchasing_to_the_fund;
    private String art_price;
    private String preservation_and_restoration;
    private String inscription_and_special_notes;
    private String art_reference;
    private String art_type;
    private String art_style;
    private String artist_id;
    private String rental_id;
    private String exhibition_id;

    private ImageTest imageTest;
    private List<FileDto> fileList;
    private ImageFile imageFile;


    public String getArt_id() {
        return art_id;
    }

    public void setArt_id(String art_id) {
        this.art_id = art_id;
    }

    public int getImage_num() {
        return image_num;
    }

    public String getFileIdx() {
        return fileIdx;
    }

    public void setFileIdx(String fileIdx) {
        this.fileIdx = fileIdx;
    }

    public void setImage_num(int image_num) {
        this.image_num = image_num;
    }

    public String getArt_year() {
        return art_year;
    }

    public void setArt_year(String art_year) {
        this.art_year = art_year;
    }

    public String getArt_title() {
        return art_title;
    }

    public void setArt_title(String art_title) {
        this.art_title = art_title;
    }

    public String getArt_description() {
        return art_description;
    }

    public void setArt_description(String art_description) {
        this.art_description = art_description;
    }

    public String getArt_material() {
        return art_material;
    }

    public void setArt_material(String art_material) {
        this.art_material = art_material;
    }

    public String getArt_technique() {
        return art_technique;
    }

    public void setArt_technique(String art_technique) {
        this.art_technique = art_technique;
    }

    public String getArt_size() {
        return art_size;
    }

    public void setArt_size(String art_size) {
        this.art_size = art_size;
    }

    public String getInventory_number() {
        return inventory_number;
    }

    public void setInventory_number(String inventory_number) {
        this.inventory_number = inventory_number;
    }

    public String getArt_code() {
        return art_code;
    }

    public void setArt_code(String art_code) {
        this.art_code = art_code;
    }

    public String getArt_storage() {
        return art_storage;
    }

    public void setArt_storage(String art_storage) {
        this.art_storage = art_storage;
    }

    public String getArrival_date() {
        return arrival_date;
    }

    public void setArrival_date(String arrival_date) {
        this.arrival_date = arrival_date;
    }

    public String getMethod_of_purchasing_to_the_fund() {
        return method_of_purchasing_to_the_fund;
    }

    public void setMethod_of_purchasing_to_the_fund(String method_of_purchasing_to_the_fund) {
        this.method_of_purchasing_to_the_fund = method_of_purchasing_to_the_fund;
    }

    public String getArt_price() {
        return art_price;
    }

    public void setArt_price(String art_price) {
        this.art_price = art_price;
    }

    public String getPreservation_and_restoration() {
        return preservation_and_restoration;
    }

    public void setPreservation_and_restoration(String preservation_and_restoration) {
        this.preservation_and_restoration = preservation_and_restoration;
    }

    public String getInscription_and_special_notes() {
        return inscription_and_special_notes;
    }

    public void setInscription_and_special_notes(String inscription_and_special_notes) {
        this.inscription_and_special_notes = inscription_and_special_notes;
    }

    public String getArt_reference() {
        return art_reference;
    }

    public void setArt_reference(String art_reference) {
        this.art_reference = art_reference;
    }

    public String getArt_type() {
        return art_type;
    }

    public void setArt_type(String art_type) {
        this.art_type = art_type;
    }

    public String getArt_style() {
        return art_style;
    }

    public void setArt_style(String art_style) {
        this.art_style = art_style;
    }

    public String getArtist_id() {
        return artist_id;
    }

    public void setArtist_id(String artist_id) {
        this.artist_id = artist_id;
    }

    public String getRental_id() {
        return rental_id;
    }

    public void setRental_id(String rental_id) {
        this.rental_id = rental_id;
    }

    public String getExhibition_id() {
        return exhibition_id;
    }

    public void setExhibition_id(String exhibition_id) {
        this.exhibition_id = exhibition_id;
    }

    public ImageTest getImageTest() {
        return imageTest;
    }

    public void setImageTest(ImageTest imageTest) {
        this.imageTest = imageTest;
    }

    public List<FileDto> getFileList() {
        return fileList;
    }
    public void setFileList(List<FileDto> fileList) {
        this.fileList = fileList;
    }

    public ImageFile getImageFile() {
        return imageFile;
    }

    public void setImageFile(ImageFile imageFile) {
        this.imageFile = imageFile;
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("ArtWork{");
        sb.append("art_id='").append(art_id).append('\'');
        sb.append(", image_num=").append(image_num);
        sb.append(", fileIdx='").append(fileIdx).append('\'');
        sb.append(", art_year='").append(art_year).append('\'');
        sb.append(", art_title='").append(art_title).append('\'');
        sb.append(", art_description='").append(art_description).append('\'');
        sb.append(", art_material='").append(art_material).append('\'');
        sb.append(", art_technique='").append(art_technique).append('\'');
        sb.append(", art_size='").append(art_size).append('\'');
        sb.append(", inventory_number='").append(inventory_number).append('\'');
        sb.append(", art_code='").append(art_code).append('\'');
        sb.append(", art_storage='").append(art_storage).append('\'');
        sb.append(", arrival_date='").append(arrival_date).append('\'');
        sb.append(", method_of_purchasing_to_the_fund='").append(method_of_purchasing_to_the_fund).append('\'');
        sb.append(", art_price='").append(art_price).append('\'');
        sb.append(", preservation_and_restoration='").append(preservation_and_restoration).append('\'');
        sb.append(", inscription_and_special_notes='").append(inscription_and_special_notes).append('\'');
        sb.append(", art_reference='").append(art_reference).append('\'');
        sb.append(", art_type='").append(art_type).append('\'');
        sb.append(", art_style='").append(art_style).append('\'');
        sb.append(", artist_id='").append(artist_id).append('\'');
        sb.append(", rental_id='").append(rental_id).append('\'');
        sb.append(", exhibition_id='").append(exhibition_id).append('\'');
        sb.append(", imageTest=").append(imageTest);
        sb.append(", fileList=").append(fileList);
        sb.append(", imageFile=").append(imageFile);
        sb.append('}');
        return sb.toString();
    }


}
