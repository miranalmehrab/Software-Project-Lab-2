package com.example.ohno;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.design.widget.BottomNavigationView;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

public class ClubViewActivity extends AppCompatActivity {


    ImageView clubImage;
    TextView description;
    TextView clubName;
    ImageButton btnMap;
    String profileName8 ;
    String profileEmail8 ;
    String departmentName8 ;
    String academicYear8 ;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_club_view);


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
                        Intent intent = new Intent(ClubViewActivity.this , Home2Activity.class);
                        startActivity(intent);
                        break;

                    case R.id.navigation_profile:
                        Intent intent2 = new Intent(ClubViewActivity.this , Profile_Activity.class);
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


        Intent intent = getIntent();
        final Club club = (Club) intent.getSerializableExtra("clubCurrent");

        clubImage = (ImageView) findViewById(R.id.image);
        description = (TextView) findViewById(R.id.description);
        clubName = (TextView) findViewById(R.id.name);
        btnMap = (ImageButton) findViewById(R.id.buttonList);

        btnMap.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent =  new Intent(ClubViewActivity.this  , MapActivityInfrastructure.class);
                intent.putExtra("longitude" ,club.getLatitude() );
                intent.putExtra("latitude" , club.getLongitude());
                intent.putExtra("name" , club.getName());
                startActivity(intent);
            }
        });

        clubName.setText(club.getName());
        description.setText(club.getDescription().trim());
        Glide.with(ClubViewActivity.this).load(club.getImage())
                .placeholder(R.drawable.dulogo).into(clubImage);


    }
}
