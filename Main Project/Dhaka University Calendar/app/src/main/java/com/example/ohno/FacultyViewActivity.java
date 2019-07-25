package com.example.ohno;

import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.design.widget.BottomNavigationView;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
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

public class FacultyViewActivity extends AppCompatActivity {


    ImageView facultyImage;
    TextView description;
    TextView facultyName;
    ImageButton btnList;

    String profileName8 ;
    String profileEmail8 ;
    String departmentName8 ;
    String academicYear8 ;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_faculty_view);

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

                Log.d("faculty" , departmentName8);
                // Toast.makeText(CalendarType.this , facultyName , Toast.LENGTH_SHORT).show();
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
                        Intent intent = new Intent(FacultyViewActivity.this , Home2Activity.class);
                        startActivity(intent);
                        break;

                    case R.id.navigation_profile:
                        Intent intent2 = new Intent(FacultyViewActivity.this , Profile_Activity.class);
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
        final Faculty faculty = (Faculty) intent.getSerializableExtra("departmentCurrent");

        facultyImage = (ImageView) findViewById(R.id.image);
        description = (TextView) findViewById(R.id.description);
        facultyName = (TextView) findViewById(R.id.name);
        btnList = (ImageButton) findViewById(R.id.listBtn);

        btnList.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                if(faculty.getName().trim().equalsIgnoreCase("Faculty of Arts") ){
                    Intent intent =  new Intent(FacultyViewActivity.this  , FacultyArtsInfoActivity.class);
                    startActivity(intent);
                }

                else if(faculty.getName().trim().equalsIgnoreCase("Faculty of Science") ){
                    Intent intent =  new Intent(FacultyViewActivity.this  , FacultyScienceInfoActivity.class);
                    startActivity(intent);
                }

                else if(faculty.getName().trim().equalsIgnoreCase("Faculty of Law") ){
                    Intent intent =  new Intent(FacultyViewActivity.this  , FacultyLawInfoActivity.class);
                    startActivity(intent);
                }

                else if(faculty.getName().trim().equalsIgnoreCase("Faculty of Business Studies") ){
                    Intent intent =  new Intent(FacultyViewActivity.this  , FacultyCommerceInfoActivity.class);
                    startActivity(intent);
                }

                else if(faculty.getName().trim().equalsIgnoreCase("Faculty of Social Sciences") ){
                    Intent intent =  new Intent(FacultyViewActivity.this  , FacultySocialScienceInfoActivity.class);
                    startActivity(intent);
                }

                else if(faculty.getName().trim().equalsIgnoreCase("Faculty of Biological Sciences") ){
                    Intent intent =  new Intent(FacultyViewActivity.this  , FacultyBiologicalScienceInfoActivity.class);
                    startActivity(intent);
                }

                else if(faculty.getName().trim().equalsIgnoreCase("Faculty of Pharmacy") ){
                    Intent intent =  new Intent(FacultyViewActivity.this  , FacultyPharmacyInfoActivity.class);
                    startActivity(intent);
                }

                else if(faculty.getName().trim().equalsIgnoreCase("Faculty of Earth and Environmental") ){
                    Intent intent =  new Intent(FacultyViewActivity.this  , FacultyEarthInfoActivity.class);
                    startActivity(intent);
                }

                else if(faculty.getName().trim().equalsIgnoreCase("Faculty of Engineering and Technology") ){
                    Intent intent =  new Intent(FacultyViewActivity.this  , FacultyEngineeringInfoActivity.class);
                    startActivity(intent);
                }

                else if(faculty.getName().trim().equalsIgnoreCase("Faculty of Arts") ){
                    Intent intent =  new Intent(FacultyViewActivity.this  , FacultyArtsInfoActivity.class);
                    startActivity(intent);
                }

                else if(faculty.getName().trim().equalsIgnoreCase("Faculty of Fine Arts") ){
                    Intent intent =  new Intent(FacultyViewActivity.this  , FacultyFineArtsInfoActivity.class);
                    startActivity(intent);
                }

            }
        });

        facultyName.setText(faculty.getName());
        description.setText(faculty.getDescription().trim());
        Glide.with(FacultyViewActivity.this).load(faculty.getImage())
                .placeholder(R.drawable.dulogo).into(facultyImage);


    }
}
