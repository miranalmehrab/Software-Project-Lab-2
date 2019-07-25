package com.example.ohno;

import com.google.gson.annotations.SerializedName;

import java.io.Serializable;

public class Transport implements Serializable {

    @SerializedName("id")
    private String id;
    @SerializedName("busName")
    private String busName;
    @SerializedName("routeName")
    private String route;
    @SerializedName("busType")
    private String busType;
    @SerializedName("runType")
    private String runType;
    @SerializedName("time")
    private String time;

    public Transport(String id, String busName, String route, String busType, String runType, String time) {
        this.id = id;
        this.busName = busName;
        this.route = route;
        this.busType = busType;
        this.runType = runType;
        this.time = time;
    }

    public String getId() {
        return id;
    }

    public String getBusName() {
        return busName;
    }

    public String getRoute() {
        return route;
    }

    public String getBusType() {
        return busType;
    }

    public String getRunType() {
        return runType;
    }

    public String getTime() {
        return time;
    }
}
