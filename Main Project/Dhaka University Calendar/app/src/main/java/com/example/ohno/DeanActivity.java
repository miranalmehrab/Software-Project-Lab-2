package com.example.ohno;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.Toast;

import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class DeanActivity extends AppCompatActivity {

    List <DeanMember> fullCommittee;
    ListView listView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_dean);

        Retrofit retrofit =  new Retrofit.Builder()
                .baseUrl(Api.baseURL)
                .addConverterFactory(GsonConverterFactory.create())
                .build();

        Api api = retrofit.create(Api.class);

        listView = (ListView) findViewById(R.id.tableList);

        Call<List<DeanMember>> call = api.getDeanList();

        call.enqueue(new Callback<List<DeanMember>>() {
            @Override
            public void onResponse(Call<List<DeanMember>> call, Response<List<DeanMember>> response) {
                final List<DeanMember> fullCommittee = response.body();

                ViewGroup headerView =  (ViewGroup) getLayoutInflater().inflate(R.layout.dean_header_layout,listView,false);
                listView.addHeaderView(headerView);

                DeanTableListAdapter adapter = new DeanTableListAdapter(DeanActivity.this ,
                        R.layout.dean_row_layout, fullCommittee );
                listView.setAdapter(adapter);

                for(DeanMember d : fullCommittee){
                    Log.d("id" , d.getId() );
                    Log.d("name" , d.getFacultyName() );
                    Log.d("rank" , d.getDeanName() );

                    // Toast.makeText(HallInfoActivity.this, d.getName() , Toast.LENGTH_SHORT).show();
                }

            }

            @Override
            public void onFailure(Call<List<DeanMember>> call, Throwable t) {
                Toast.makeText(DeanActivity.this, t.getMessage() , Toast.LENGTH_SHORT).show();
            }
        });
    }
}
