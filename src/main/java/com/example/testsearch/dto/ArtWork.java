package com.example.testsearch.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Getter
@Setter
@ToString
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

    private List<FileDto> fileList;
    private ImageFile imageFile;


    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("ArtWork{");
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
        sb.append(", fileList=").append(fileList);
        sb.append(", imageFile=").append(imageFile);
        sb.append('}');
        return sb.toString();
    }

}
