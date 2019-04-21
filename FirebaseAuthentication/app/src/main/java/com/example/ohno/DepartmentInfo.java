package com.example.ohno;

import com.google.firebase.database.IgnoreExtraProperties;

@IgnoreExtraProperties
public class DepartmentInfo {
    private String departmentId;
    private String departmentName;
    private String description;
    private int establishmentYear;

    public DepartmentInfo(){
        //this constructor is required
    }

    public DepartmentInfo(String departmentId, String departmentName, String description, int establishmentYear) {
        this.departmentId = departmentId;
        this.departmentName = departmentName;
        this.description = description;
        this.establishmentYear = establishmentYear;
    }

    public String getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(String departmentId) {
        this.departmentId = departmentId;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getEstablishmentYear() {
        return establishmentYear;
    }

    public void setEstablishmentYear(int establishmentYear) {
        this.establishmentYear = establishmentYear;
    }
}
