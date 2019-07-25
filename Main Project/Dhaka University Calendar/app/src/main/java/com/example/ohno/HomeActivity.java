package com.example.ohno;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.CardView;
import android.util.Log;
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

public class HomeActivity extends AppCompatActivity implements View.OnClickListener {

    CardView location;
    CardView profile;
    CardView calendar;
    CardView info;
    CardView committee;
    CardView transport;
    CardView head;

    Button generalCalendar;
    Button personalCalenadar;
    FirebaseAuth auth ;
    FirebaseUser user;
    DatabaseReference reference;
    String departmentName = "lalala";
    String academicYear = "momomo";
    boolean dataChange = false;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home);

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
                departmentName = dataSnapshot.child("department").getValue().toString();
                academicYear = dataSnapshot.child("academicYear").getValue().toString();

                dataChange = true;
                Log.d("department" , departmentName);
                // Toast.makeText(CalendarType.this , departmentName , Toast.LENGTH_SHORT).show();



            }

            @Override
            public void onCancelled(@NonNull DatabaseError databaseError) {
                Toast.makeText(HomeActivity.this , databaseError.getMessage() , Toast.LENGTH_SHORT).show();
            }

        });

        calendar = findViewById(R.id.imgCalendar);
        profile = findViewById(R.id.imgProfile);
        location = findViewById(R.id.imgLocation);
        info = findViewById(R.id.imgList);
        committee = findViewById(R.id.committeeList);
        transport = findViewById(R.id.transport);
        head = findViewById(R.id.headOfDU);

        calendar.setOnClickListener(HomeActivity.this);
        profile.setOnClickListener(HomeActivity.this);
        location.setOnClickListener(HomeActivity.this);
        info.setOnClickListener(HomeActivity.this);
        committee.setOnClickListener(this);
        transport.setOnClickListener(this);
        head.setOnClickListener(this);
    }


    @Override
    public void onClick(View view)
    {
        switch(view.getId())
        {

            case R.id.imgLocation:
                initMap();
                break;
            case R.id.imgCalendar:
                initCalendar();
                break;
            case R.id.imgProfile:
                initProfile();
                break;
            case R.id.imgList:
                initInfo();
                break;
            case R.id.committeeList:
                initCommittee();
                break;
            case R.id.transport:
                initTransport();
                break;
            case R.id.headOfDU:
                initHead();
                break;
        }
    }

    void initTransport() {

        Intent intent = new Intent(HomeActivity.this,TransportMenu.class);
        startActivity(intent);
    }

    void initMap()
    {
        Intent intent = new Intent(HomeActivity.this, MapMenu.class);
        startActivity(intent);
    }

    void initInfo()
    {
        Intent intent = new Intent(HomeActivity.this, InformationMenu.class);
        startActivity(intent);
    }

    void initCalendar(){


        Intent intent = new Intent(HomeActivity.this, CalendarType.class);
        intent.putExtra("departmentName" , departmentName);
        intent.putExtra("academicYear" , academicYear);
        startActivity(intent);
    }

    void initProfile()
    {
        Intent intent = new Intent(HomeActivity.this, AccountActivity.class);
        startActivity(intent);
    }

    void initCommittee()
    {
        Intent intent = new Intent(HomeActivity.this, CommitteeMenu.class);
        startActivity(intent);
    }

    void initHead()
    {
        Intent intent = new Intent(HomeActivity.this, HeadOfDUInfoActivity.class);
        startActivity(intent);
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
