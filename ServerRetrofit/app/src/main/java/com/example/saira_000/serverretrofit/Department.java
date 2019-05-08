package com.example.saira_000.serverretrofit;

public class Department {

    private String id;
    private  String name;
    private  String description;
    private  String faculty;
    private String imageUrl;

    public Department(String id, String name, String description, String faculty , String imageUrl) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.faculty = faculty;
        this.imageUrl = imageUrl;
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

    public String getImageUrl() {
        return imageUrl;
    }
}
