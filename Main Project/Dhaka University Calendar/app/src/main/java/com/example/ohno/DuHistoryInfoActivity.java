package com.example.ohno;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.Toast;

import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class DuHistoryInfoActivity extends AppCompatActivity {

    List<Faculty> list ;
    ListView listView;
    
    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_faculty_info);

        Retrofit retrofit =  new Retrofit.Builder()
                .baseUrl(Api.baseURL)
                .addConverterFactory(GsonConverterFactory.create())
                .build();

        Api api = retrofit.create(Api.class);

        listView = (ListView) findViewById(R.id.departMentListView);

        Call<List<Faculty>> call = api.getDuHistory();

        call.enqueue(new Callback<List<Faculty>>() {
            @Override
            public void onResponse(Call<List<Faculty>> call, Response<List<Faculty>> response) {
                final List<Faculty> faculties = response.body();
                Faculty facultyTemp = faculties.get(0);

                // Toast.makeText(FacultyScienceInfoActivity.this , departmentTemp.getName(),Toast.LENGTH_SHORT).show();
                Intent intent = new Intent(DuHistoryInfoActivity.this , DuHistoryViewActivity.class);
                intent.putExtra("departmentCurrent" ,  facultyTemp);
                startActivity(intent);
/*
                for(Faculty d : faculties){
                    Log.d("id" , d.getId() );
                    Log.d("name" , d.getName() );
                    Log.d("description" , d.getDescription() );

             //       Log.d("image",d.getImage());
                   // Toast.makeText(FacultyInfoActivity.this, d.getName() , Toast.LENGTH_SHORT).show();
                }

                */

            }

            @Override
            public void onFailure(Call<List<Faculty>> call, Throwable t) {
                Toast.makeText(DuHistoryInfoActivity.this, t.getMessage() , Toast.LENGTH_SHORT).show();
            }
        });
    }
}
