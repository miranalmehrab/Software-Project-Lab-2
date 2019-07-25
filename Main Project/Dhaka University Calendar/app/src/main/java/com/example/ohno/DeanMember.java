package com.example.ohno;

import com.google.gson.annotations.SerializedName;

import java.io.Serializable;

public class DeanMember implements Serializable {

    @SerializedName("id")
    private String id;
    @SerializedName("faculty_name")
    private String facultyName;
    @SerializedName("dean_name")
    private String deanName;

    public DeanMember(String id, String facultyName, String deanName) {
        this.id = id;
        this.facultyName = facultyName;
        this.deanName = deanName;
    }

    public String getId() {
        return id;
    }

    public String getFacultyName() {
        return facultyName;
    }

    public String getDeanName() {
        return deanName;
    }
}
