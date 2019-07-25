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

public class HeadOfDUInfoActivity extends AppCompatActivity {

    List<HeadOfDU> list ;
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

        Call<List<HeadOfDU>> call = api.getHeadOfDU();

        call.enqueue(new Callback<List<HeadOfDU>>() {
            @Override
            public void onResponse(Call<List<HeadOfDU>> call, Response<List<HeadOfDU>> response) {
                final List<HeadOfDU> duHead = response.body();

                HeadOfDuListAdapter  adapter = new HeadOfDuListAdapter(HeadOfDUInfoActivity.this ,
                        R.layout.head_of_du_list_item ,duHead );
                listView.setAdapter(adapter);

                for(HeadOfDU d : duHead){
                    Log.d("id" , d.getId() );
                    Log.d("name" , d.getName() );
                    Log.d("rank" , d.getRank() );
                    Log.d("image",d.getImage());
                   // Toast.makeText(HallInfoActivity.this, d.getName() , Toast.LENGTH_SHORT).show();
                }

            }

            @Override
            public void onFailure(Call<List<HeadOfDU>> call, Throwable t) {
                Toast.makeText(HeadOfDUInfoActivity.this, t.getMessage() , Toast.LENGTH_SHORT).show();
            }
        });




    }
}
