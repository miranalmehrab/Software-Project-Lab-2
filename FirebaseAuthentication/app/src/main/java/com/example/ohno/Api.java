package com.example.ohno;

import java.util.List;

import retrofit2.Call;
import retrofit2.http.GET;

public interface Api {

    String baseURL = "http://52.29.113.22/miran/DUC/android/";

    @GET("androido.php")
    Call<List<Department>> getDepartments();
}
