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
import android.widget.Toast;

import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

public class CalendarType extends AppCompatActivity {

    CardView generalCalendar;
    CardView personalCalenadar;
    FirebaseAuth auth ;
    FirebaseUser user;
    DatabaseReference reference;
    String departmentName = "lalala";
    String academicYear = "momomo";
    boolean dataChange = false;
    String profileName8 ;
    String profileEmail8 ;
    String departmentName8 ;
    String academicYear8 ;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_calendar_type);


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
                        Intent intent = new Intent(CalendarType.this , Home2Activity.class);
                        startActivity(intent);
                        break;

                    case R.id.navigation_profile:
                        Intent intent2 = new Intent(CalendarType.this , Profile_Activity.class);
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

        generalCalendar = (CardView) findViewById(R.id.buttongeneral);
        personalCalenadar = (CardView) findViewById(R.id.buttonpersonal);

        Intent intent = getIntent();
        departmentName = intent.getStringExtra("departmentName" );
        academicYear = intent.getStringExtra("academicYear" );
        Log.d("Pass" , academicYear );

        generalCalendar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(CalendarType.this , CalendarClass.class);
                startActivity(intent);
            }
        });



        personalCalenadar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                final Intent intent = new Intent(CalendarType.this , CalendarSpecificClass.class);
                intent.putExtra("departmentName" , departmentName);
                intent.putExtra("academicYear" , academicYear);
                startActivity(intent);

            }
        });

    }

    @Override
    protected void onStart() {
        super.onStart();



    }
}
