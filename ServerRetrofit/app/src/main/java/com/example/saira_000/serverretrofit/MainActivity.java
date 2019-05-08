package com.example.saira_000.serverretrofit;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.widget.ListView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class MainActivity extends AppCompatActivity {

    List<Department> list ;
    ListView listView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Retrofit retrofit =  new Retrofit.Builder()
                .baseUrl(Api.baseURL)
                .addConverterFactory(GsonConverterFactory.create())
                .build();

        Api api = retrofit.create(Api.class);

        listView = (ListView) findViewById(R.id.departMentListView);

        Call<List<Department>> call = api.getDepartments();

        call.enqueue(new Callback<List<Department>>() {
            @Override
            public void onResponse(Call<List<Department>> call, Response<List<Department>> response) {
                List<Department> departments = response.body();

                DepartmentListAdapter  departmentListAdapter = new DepartmentListAdapter(MainActivity.this ,
                        R.layout.department_list_item ,departments );
                listView.setAdapter(departmentListAdapter);

                for(Department d : departments){
                    Log.d("id" , d.getId() );
                    Log.d("name" , d.getName() );
                    Log.d("description" , d.getDescription() );
                    Log.d("faculty" , d.getFaculty() );
                   // Log.d("image",d.getImageUrl());
                    Toast.makeText(MainActivity.this, d.getName() , Toast.LENGTH_SHORT).show();
                }

            }

            @Override
            public void onFailure(Call<List<Department>> call, Throwable t) {
                Toast.makeText(MainActivity.this, t.getMessage() , Toast.LENGTH_SHORT).show();
            }
        });




    }
}
