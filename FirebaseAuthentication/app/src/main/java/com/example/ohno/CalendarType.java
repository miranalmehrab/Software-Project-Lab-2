package com.example.ohno;

import android.app.ProgressDialog;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
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

import retrofit2.Retrofit;

public class CalendarType extends AppCompatActivity {

    Button generalCalendar;
    Button personalCalenadar;
    FirebaseAuth auth ;
    FirebaseUser user;
    DatabaseReference reference;
    String departmentName = "lalala";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_calendar_type);

        auth = FirebaseAuth.getInstance();
        user = auth.getCurrentUser();
        reference = FirebaseDatabase.getInstance().getReference("Profile").child(user.getUid());


        generalCalendar = (Button) findViewById(R.id.buttongeneral);
        personalCalenadar = (Button) findViewById(R.id.buttonpersonal);

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
                final Intent intent = new Intent(CalendarType.this , PersonalCalendarClass.class);

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
                        Log.d("department" , departmentName);
                        Toast.makeText(CalendarType.this , departmentName , Toast.LENGTH_SHORT).show();
                        intent.putExtra("departmentName" , departmentName);
                        startActivity(intent);
                    }

                    @Override
                    public void onCancelled(@NonNull DatabaseError databaseError) {
                        Toast.makeText(CalendarType.this , databaseError.getMessage() , Toast.LENGTH_SHORT).show();
                    }
                });


            }
        });

    }
}
