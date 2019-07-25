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

public class OfficeInfoActivity extends AppCompatActivity {

    List<Office> list ;
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

        Call<List<Office>> call = api.getOffice();

        call.enqueue(new Callback<List<Office>>() {
            @Override
            public void onResponse(Call<List<Office>> call, Response<List<Office>> response) {
                final List<Office> officeList = response.body();

                OfficeListAdapter  officeListAdapter = new OfficeListAdapter(OfficeInfoActivity.this ,
                        R.layout.office_list_item ,officeList );
                listView.setAdapter(officeListAdapter);
                listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                    @Override
                    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                        Office officeTemp = officeList.get(position);

                       // Toast.makeText(FacultyScienceInfoActivity.this , departmentTemp.getName(),Toast.LENGTH_SHORT).show();
                        Intent intent = new Intent(OfficeInfoActivity.this , OfficeViewActivity.class);
                        intent.putExtra("officeCurrent" ,  officeTemp);
                        startActivity(intent);

                    }
                });

                for(Office d : officeList){
                    Log.d("id" , d.getId() );
                    Log.d("name" , d.getName() );
                    Log.d("description" , d.getDescription() );
                    Log.d("image",d.getImage());
                   // Toast.makeText(HallInfoActivity.this, d.getName() , Toast.LENGTH_SHORT).show();
                }

            }

            @Override
            public void onFailure(Call<List<Office>> call, Throwable t) {
                Toast.makeText(OfficeInfoActivity.this, t.getMessage() , Toast.LENGTH_SHORT).show();
            }
        });




    }
}
