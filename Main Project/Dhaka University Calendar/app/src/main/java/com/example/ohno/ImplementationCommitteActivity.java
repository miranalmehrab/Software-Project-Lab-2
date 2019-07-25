package com.example.ohno;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
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

public class ImplementationCommitteActivity extends AppCompatActivity {

    List <CommitteMember> fullCommittee;
    ListView listView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_committe);

        Retrofit retrofit =  new Retrofit.Builder()
                .baseUrl(Api.baseURL)
                .addConverterFactory(GsonConverterFactory.create())
                .build();

        Api api = retrofit.create(Api.class);

        listView = (ListView) findViewById(R.id.tableList);

        Call<List<CommitteMember>> call = api.getImplementationCommittee();

        call.enqueue(new Callback<List<CommitteMember>>() {
            @Override
            public void onResponse(Call<List<CommitteMember>> call, Response<List<CommitteMember>> response) {
                final List<CommitteMember> fullCommittee = response.body();

                ViewGroup headerView =  (ViewGroup) getLayoutInflater().inflate(R.layout.committe_constraint_layout_header,listView,false);
                listView.addHeaderView(headerView);

                CommitteeTableListAdapter adapter = new CommitteeTableListAdapter(ImplementationCommitteActivity.this ,
                        R.layout.committee_constraint_row_layout, fullCommittee );
                listView.setAdapter(adapter);

                for(CommitteMember d : fullCommittee){
                    Log.d("id" , d.getId() );
                    Log.d("name" , d.getName() );
                    Log.d("rank" , d.getRank() );
                    Log.d("membership" , d.getMembership() );

                    // Toast.makeText(HallInfoActivity.this, d.getName() , Toast.LENGTH_SHORT).show();
                }

            }

            @Override
            public void onFailure(Call<List<CommitteMember>> call, Throwable t) {
                Toast.makeText(ImplementationCommitteActivity.this, t.getMessage() , Toast.LENGTH_SHORT).show();
            }
        });
    }
}
