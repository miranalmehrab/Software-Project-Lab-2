package com.example.ohno;

import com.google.gson.annotations.SerializedName;

public class Department {

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
}
