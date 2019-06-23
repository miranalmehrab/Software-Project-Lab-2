package com.example.saira_000.serverretrofit;

import com.google.gson.annotations.SerializedName;

public class Department {

    @SerializedName("id")
    private String id;
    private  String name;
    private  String description;
    private  String faculty;
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
