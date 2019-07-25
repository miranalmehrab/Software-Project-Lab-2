package com.example.ohno;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.BottomNavigationView;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.support.annotation.NonNull;
import android.support.v7.widget.CardView;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

public class Home2Activity extends AppCompatActivity {

    CardView location;
    CardView profile;
    CardView calendar;
    CardView info;
    CardView committee;
    CardView transport;
    CardView head;

    FirebaseAuth auth ;
    FirebaseUser user;
    DatabaseReference reference;

    String profileName ="nana";
    String profileEmail = "tatata";
    String departmentName = "lala";
    String academicYear = "momomo";

    boolean dataChange = false;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home2);

       // https://icons8.com/icons/set/profile
        BottomNavigationView navView = findViewById(R.id.nav_view);
        navView.setOnNavigationItemSelectedListener(new BottomNavigationView.OnNavigationItemSelectedListener() {
            @Override
            public boolean onNavigationItemSelected(@NonNull MenuItem menuItem) {
                switch (menuItem.getItemId()){

                    case R.id.navigation_home:
                        Toast.makeText(Home2Activity.this, "You are already in Home Page" , Toast.LENGTH_SHORT).show();
                        break;

                    case R.id.navigation_profile:
                        Intent intent2 = new Intent(Home2Activity.this , Profile_Activity.class);
                        intent2.putExtra("profileName" , profileName);
                        intent2.putExtra("profileEmail" , profileEmail);
                        intent2.putExtra("departmentName" , departmentName);
                        intent2.putExtra("academicYear" , academicYear);
                        startActivity(intent2);
                        break;

                    case R.id.back_button:
                        initBack();
                        break;

                }
                return  true;
            }
        });

        auth = FirebaseAuth.getInstance();
        user = auth.getCurrentUser();
        reference = FirebaseDatabase.getInstance().getReference("Profile").child(user.getUid());

        reference.addValueEventListener(new ValueEventListener() {
            @Override
            public void onDataChange(@NonNull DataSnapshot dataSnapshot) {
                     /*
                        ProgressDialog progressDialog = new ProgressDialog(CalendarType.this);
                        progressDialog.setMessage("Wait while we fetch your data");
                        progressDialog.setCanceledOnTouchOutside(true);
                        progressDialog.show();
                        */

                profileName = dataSnapshot.child("name").getValue().toString();
                profileEmail= dataSnapshot.child("email").getValue().toString();
                departmentName = dataSnapshot.child("department").getValue().toString();
                academicYear = dataSnapshot.child("academicYear").getValue().toString();

                dataChange = true;
                Log.d("department" , departmentName);
                // Toast.makeText(CalendarType.this , departmentName , Toast.LENGTH_SHORT).show();



            }

            @Override
            public void onCancelled(@NonNull DatabaseError databaseError) {
                Toast.makeText(Home2Activity.this , databaseError.getMessage() , Toast.LENGTH_SHORT).show();
            }

        });

        calendar = findViewById(R.id.imgCalendar);
        profile = findViewById(R.id.imgProfile);
        location = findViewById(R.id.imgLocation);
        info = findViewById(R.id.imgList);
        committee = findViewById(R.id.committeeList);
        transport = findViewById(R.id.transport);
        head = findViewById(R.id.headOfDU);

        calendar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                initCalendar();
            }
        });

        location.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                initMap();
            }
        });

        info.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                initInfo();
            }
        });

        committee.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                initCommittee();
            }
        });

        transport.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                initTransport();
            }
        });

        head.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                initHead();
            }
        });

    }



    void initTransport() {

        Intent intent = new Intent(Home2Activity.this,TransportMenu.class);
        intent.putExtra("profileName" , profileName);
        intent.putExtra("profileEmail" , profileEmail);
        intent.putExtra("departmentName" , departmentName);
        intent.putExtra("academicYear" , academicYear);
        startActivity(intent);
    }

    void initMap()
    {
        Intent intent = new Intent(Home2Activity.this, MapMenu.class);
        intent.putExtra("profileName" , profileName);
        intent.putExtra("profileEmail" , profileEmail);
        intent.putExtra("departmentName" , departmentName);
        intent.putExtra("academicYear" , academicYear);
        startActivity(intent);
    }

    void initInfo()
    {
        Intent intent = new Intent(Home2Activity.this, InformationMenu.class);
        intent.putExtra("profileName" , profileName);
        intent.putExtra("profileEmail" , profileEmail);
        intent.putExtra("departmentName" , departmentName);
        intent.putExtra("academicYear" , academicYear);
        startActivity(intent);
    }

    void initCalendar(){


        Intent intent = new Intent(Home2Activity.this, CalendarType.class);
        intent.putExtra("profileName" , profileName);
        intent.putExtra("profileEmail" , profileEmail);
        intent.putExtra("departmentName" , departmentName);
        intent.putExtra("academicYear" , academicYear);
        startActivity(intent);
    }

    void initCommittee()
    {
        Intent intent = new Intent(Home2Activity.this, CommitteeMenu.class);
        intent.putExtra("profileName" , profileName);
        intent.putExtra("profileEmail" , profileEmail);
        intent.putExtra("departmentName" , departmentName);
        intent.putExtra("academicYear" , academicYear);
        startActivity(intent);
    }

    void initHead()
    {
        Intent intent = new Intent(Home2Activity.this, HeadOfDUInfoActivity.class);
        intent.putExtra("profileName" , profileName);
        intent.putExtra("profileEmail" , profileEmail);
        intent.putExtra("departmentName" , departmentName);
        intent.putExtra("academicYear" , academicYear);
        startActivity(intent);
    }

    public void initBack(){
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle("Really want to exit?");
        builder.setCancelable(false);
        builder.setPositiveButton("Yes", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which)
            {
                finish();
                moveTaskToBack(true);
            }
        });



        builder.setNegativeButton("No", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which)
            {
                dialog.dismiss();

            }
        });

        builder.show();
    }

    @Override
    public void onBackPressed() {
        //super.onBackPressed();
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle("Really want to exit?");
        builder.setCancelable(false);
        builder.setPositiveButton("Yes", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which)
            {
                finish();
                moveTaskToBack(true);
            }
        });



        builder.setNegativeButton("No", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which)
            {
                dialog.dismiss();

            }
        });

        builder.show();
    }

}


