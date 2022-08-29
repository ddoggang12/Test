package com.example.testsearch.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDateTime;
import java.util.List;

@Getter
@Setter
@ToString
public class Data {

    private String Objects;
    private String Title;
    private String Subject;
    private String Description;
    private String Institute_Identifier;
    private String Identifier;
    private String Language;
    private String Temporary;
    private String Places;
    private String Current_location;
    private String Raw_Data_Type;
    private String Digital_Data_Type;
    private String File_Extension;
    private String Coverage;
    private String Creator;
    private String Publisher;
    private String Provider;
    private String Participants;
    private String Providing_Institution;
    private String Provider_Country;
    private String Source;
    private String Collection_Name;
    private String IsPartOf;
    private String Links;
    private String Rights_Statement_Media;
    private String Rights;
    private String Data_Code;
    private String userId;
    private String useremail;
    private LocalDateTime Created_Time;
    private LocalDateTime Updated_Time;
    private Float Latitude;
    private Float Longitude;

    private UserDto userDto;
    private List<FileDto> fileList;
}
