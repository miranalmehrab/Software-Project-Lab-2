package com.example.ohno;

import com.google.gson.annotations.SerializedName;

import java.io.Serializable;

public class CommitteMember implements Serializable {

    @SerializedName("id")
    private String id;
    @SerializedName("name")
    private String name;
    @SerializedName("rank")
    private String rank;
    @SerializedName("membership")
    private String membership;

    public CommitteMember(String id, String name, String rank, String membership) {
        this.id = id;
        this.name = name;
        this.rank = rank;
        this.membership = membership;
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

    public String getMembership() {
        return membership;
    }
}
