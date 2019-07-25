package com.example.ohno;

import com.google.gson.annotations.SerializedName;

import java.io.Serializable;

public class HeadOfDU implements Serializable {

    @SerializedName("id")
    private String id;
    @SerializedName("name")
    private  String name;
    @SerializedName("rank")
    private  String rank;
    @SerializedName("image")
    private String image;
    

    public HeadOfDU(String id, String name, String rank , String image) {
        this.id = id;
        this.name = name;
        this.rank = rank;
        this.image = image;
    }



    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getRank() {
        return rank;
    }

    public String getImage() {
        return image;
    }


}
