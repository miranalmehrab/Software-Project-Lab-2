package com.example.ohno;

import com.google.gson.annotations.SerializedName;

import java.io.Serializable;

public class EventDay implements Serializable {

    @SerializedName("eventid")
    private String id;
    @SerializedName("eventname")
    private  String name;
    @SerializedName("description")
    private  String description;
    @SerializedName("date")
    private  String date;

    public EventDay(String id, String name, String description, String date) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.date = date;

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

    public String getdate() {
        return date;
    }

}
