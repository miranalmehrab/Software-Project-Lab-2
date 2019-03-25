package com.example.ohno;

public class UserProfile {

    private String uid;
    private String name;
    private String email;
    private String department;
    private String phone;

    public UserProfile( String uid , String name , String email , String department , String phone ){
        this.uid = uid;
        this.name = name;
        this.email = email;
        this.department = department;
        this.phone = phone;
    }

    public String getuid() {
        return uid;
    }
    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getDepartment() {
        return department;
    }

    public String getPhone() {
        return phone;
    }
}
