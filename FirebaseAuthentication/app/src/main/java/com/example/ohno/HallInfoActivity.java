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

public class HallInfoActivity extends AppCompatActivity {

    List<Hall> list ;
    ListView listView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_get_info);

        Retrofit retrofit =  new Retrofit.Builder()
                .baseUrl(Api.baseURL)
                .addConverterFactory(GsonConverterFactory.create())
                .build();

        Api api = retrofit.create(Api.class);

        listView = (ListView) findViewById(R.id.departMentListView);

        Call<List<Hall>> call = api.getHall();

        call.enqueue(new Callback<List<Hall>>() {
            @Override
            public void onResponse(Call<List<Hall>> call, Response<List<Hall>> response) {
                final List<Hall> hall = response.body();

                HallListAdapter  hallListAdapter = new HallListAdapter(HallInfoActivity.this ,
                        R.layout.department_list_item ,hall );
                listView.setAdapter(hallListAdapter);
                listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                    @Override
                    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                        Hall hallTemp = hall.get(position);

                       // Toast.makeText(DepartmentInfoActivity.this , departmentTemp.getName(),Toast.LENGTH_SHORT).show();
                        Intent intent = new Intent(HallInfoActivity.this , HallViewActivity.class);
                        intent.putExtra("hallCurrent" ,  hallTemp);
                        startActivity(intent);

                    }
                });

                for(Hall d : hall){
                    Log.d("id" , d.getId() );
                    Log.d("name" , d.getName() );
                    Log.d("description" , d.getDescription() );
                    Log.d("faculty" , d.getEstablishedYear() );
                    Log.d("image",d.getImage());
                   // Toast.makeText(HallInfoActivity.this, d.getName() , Toast.LENGTH_SHORT).show();
                }

            }

            @Override
            public void onFailure(Call<List<Hall>> call, Throwable t) {
                Toast.makeText(HallInfoActivity.this, t.getMessage() , Toast.LENGTH_SHORT).show();
            }
        });




    }
}
