package com.example.ohno;

import com.google.gson.annotations.SerializedName;

import java.io.Serializable;

public class SpecificCalendarDay implements Serializable {

    @SerializedName("eventid")
    private String id;
    @SerializedName("eventname")
    private  String name;
    @SerializedName("description")
    private  String description;
    @SerializedName("date")
    private  String date;
    @SerializedName("academic_year")
    private  String academicYear;
    @SerializedName("dept_name")
    private  String deptName;

    public SpecificCalendarDay(String id, String name, String description, String date, String academicYear, String deptName) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.date = date;
        this.academicYear = academicYear;
        this.deptName = deptName;
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

    public String getDate() {
        return date;
    }

    public String getAcademicYear() {
        return academicYear;
    }

    public String getDeptName() {
        return deptName;
    }
}
