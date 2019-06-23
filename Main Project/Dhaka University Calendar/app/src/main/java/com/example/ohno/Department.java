package com.example.ohno;

import com.google.gson.annotations.SerializedName;

import java.io.Serializable;

public class Department implements Serializable {

    @SerializedName("id")
    private String id;
    @SerializedName("name")
    private  String name;
    @SerializedName("description")
    private  String description;
    @SerializedName("faculty")
    private  String faculty;
    @SerializedName("image")
    private String image;
    @SerializedName("longitude")
    private String longitude;
    @SerializedName("latitude")
    private String latitude;

    public Department(String id, String name, String description, String faculty, String image, String longitude, String latitude) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.faculty = faculty;
        this.image = image;
        this.longitude = longitude;
        this.latitude = latitude;
    }

    public Department(String id, String name, String description, String faculty , String image) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.faculty = faculty;
        this.image = image;
    }


    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public String getFaculty() {
        return faculty;
    }

    public String getImage() {
        return image;
    }

    public String getLongitude() {
        return longitude;
    }

    public String getLatitude() {
        return latitude;
    }
}
