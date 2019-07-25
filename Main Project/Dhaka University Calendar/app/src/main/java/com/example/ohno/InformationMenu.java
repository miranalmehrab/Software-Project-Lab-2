package com.example.ohno;

import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.design.widget.BottomNavigationView;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.CardView;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.ListView;
import android.widget.Toast;

import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class InformationMenu extends AppCompatActivity {

    private CardView departmentBtn;
    private CardView hallBtn;
    private CardView officeBtn;
    private CardView clubBtn;
    private CardView historyBtn;

    String profileName8 ;
    String profileEmail8 ;
    String departmentName8 ;
    String academicYear8 ;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_information_menu);

        FirebaseAuth auth = FirebaseAuth.getInstance();
        FirebaseUser user = auth.getCurrentUser();
        DatabaseReference reference = FirebaseDatabase.getInstance().getReference("Profile").child(user.getUid());

        reference.addValueEventListener(new ValueEventListener() {
            @Override
            public void onDataChange(@NonNull DataSnapshot dataSnapshot) {

                profileName8 = dataSnapshot.child("name").getValue().toString();
                profileEmail8= dataSnapshot.child("email").getValue().toString();
                departmentName8 = dataSnapshot.child("department").getValue().toString();
                academicYear8 = dataSnapshot.child("academicYear").getValue().toString();

                Log.d("department" , departmentName8);
                // Toast.makeText(CalendarType.this , departmentName , Toast.LENGTH_SHORT).show();
            }

            @Override
            public void onCancelled(@NonNull DatabaseError databaseError) {
                //Toast.makeText(Home2Activity.this , databaseError.getMessage() , Toast.LENGTH_SHORT).show();
            }

        });

        BottomNavigationView navView = findViewById(R.id.nav_view);
        navView.setOnNavigationItemSelectedListener(new BottomNavigationView.OnNavigationItemSelectedListener() {
            @Override
            public boolean onNavigationItemSelected(@NonNull MenuItem menuItem) {
                switch (menuItem.getItemId()){

                    case R.id.navigation_home:
                        Intent intent = new Intent(InformationMenu.this , Home2Activity.class);
                        startActivity(intent);
                        break;

                    case R.id.navigation_profile:
                        Intent intent2 = new Intent(InformationMenu.this , Profile_Activity.class);
                        intent2.putExtra("profileName" , profileName8);
                        intent2.putExtra("profileEmail" , profileEmail8);
                        intent2.putExtra("departmentName" , departmentName8);
                        intent2.putExtra("academicYear" , academicYear8);
                        startActivity(intent2);
                        break;

                    case R.id.back_button:
                        finish();
                        break;

                }
                return  true;
            }
        });


        departmentBtn = (CardView) findViewById(R.id.Department);
        hallBtn = (CardView) findViewById(R.id.Hall);
        officeBtn = (CardView) findViewById(R.id.Office);
        clubBtn = (CardView) findViewById(R.id.Club);
        historyBtn = (CardView) findViewById(R.id.duHistory);

        departmentBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(InformationMenu.this , FacultyMenu.class);
                startActivity(intent);
            }
        });

        hallBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(InformationMenu.this , HallInfoActivity.class);
                startActivity(intent);
            }
        });

        officeBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(InformationMenu.this , OfficeInfoActivity.class);
                startActivity(intent);
            }
        });

        clubBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(InformationMenu.this , ClubInfoActivity.class);
                startActivity(intent);
            }
        });

        historyBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {


                Retrofit retrofit =  new Retrofit.Builder()
                        .baseUrl(Api.baseURL)
                        .addConverterFactory(GsonConverterFactory.create())
                        .build();

                Api api = retrofit.create(Api.class);

                Call<List<Faculty>> call = api.getDuHistory();

                call.enqueue(new Callback<List<Faculty>>() {
                    @Override
                    public void onResponse(Call<List<Faculty>> call, Response<List<Faculty>> response) {
                        final List<Faculty> faculties = response.body();
                        Faculty facultyTemp = faculties.get(0);

                        // Toast.makeText(FacultyScienceInfoActivity.this , departmentTemp.getName(),Toast.LENGTH_SHORT).show();
                        Intent intent = new Intent(InformationMenu.this , DuHistoryViewActivity.class);
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
                        Toast.makeText(InformationMenu.this, t.getMessage() , Toast.LENGTH_SHORT).show();
                    }
                });
            }


        });
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
    }
}



