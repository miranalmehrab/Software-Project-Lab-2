package com.example.ohno;

import com.google.gson.annotations.SerializedName;

import java.io.Serializable;

public class Hall implements Serializable {

    @SerializedName("id")
    private String id;
    @SerializedName("name")
    private  String name;
    @SerializedName("description")
    private  String description;
    @SerializedName("establishedYear")
    private  String establishedYear;
    @SerializedName("image")
    private String image;

    public Hall(String id, String name, String description, String establishedYear , String image) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.establishedYear = establishedYear;
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

    public String getEstablishedYear() {
        return establishedYear;
    }

    public String getImage() {
        return image;
    }
}
