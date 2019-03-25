package com.example.ohno;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Toast;

import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import fr.ganfra.materialspinner.MaterialSpinner;

public class AccountActivity extends AppCompatActivity {

    private static final String TAG =AccountActivity.class.getSimpleName();

    private Button mLogOutButton;
    private EditText departmaentText;
    private EditText phoneText;
    private EditText nameText;
    private EditText emailText;
    private Button submitBtn;
    MaterialSpinner facultySpinner;
    MaterialSpinner departmentSpinner;

    RecyclerView mrecyclerView;

    DatabaseReference mDatabaseReference;
    FirebaseDatabase mFirebaseDatabase;

    private FirebaseAuth mAuth;
    private FirebaseAuth.AuthStateListener mAuthListener;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_account);

        mAuth = FirebaseAuth.getInstance();
      //  mrecyclerView =(RecyclerView) findViewById(R.id.recyclerView);


        mAuthListener = new FirebaseAuth.AuthStateListener() {
            @Override
            public void onAuthStateChanged(@NonNull FirebaseAuth firebaseAuth) {
                if(firebaseAuth.getCurrentUser() == null){

                    Intent intent = new Intent(getApplicationContext() , MainActivity.class);
                    intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK);
                    startActivity(intent);
                }
            }
        };

        getUserProfile();

        submitBtn = (Button) findViewById(R.id.submitBtn);
        submitBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                addInfoToDatabase();
            }
        });

        ////Spinner
        /*
        departmentSpinner = (Spinner) findViewById(R.id.departmentSpinner);

        ArrayAdapter <CharSequence> departmentNameAdapter = ArrayAdapter.createFromResource(this,
                R.array.department, android.R.layout.simple_spinner_item);


        departmentNameAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        departmentSpinner.setAdapter(departmentNameAdapter);
*/
        List<String> notSelected = new ArrayList<String>();

        String [] temp = {"love","kha"};
        List<String> arts = new ArrayList<String>(Arrays.asList(temp));
        String [] temp2 = {"Faculty Of Arts","one"};
        List<String> bussiness = new ArrayList<String>(Arrays.asList(temp2));

        final List<List<String>> faculty = new ArrayList<List<String>>();
        faculty.add(arts);
        faculty.add(bussiness);

        //System.out.println("faculty name" + faculty.get(1).get(0));
        Log.d(TAG, "faculty name" + faculty.get(1).get(0));
        //Material Spinner

        departmentSpinner = (MaterialSpinner) findViewById(R.id.departmentSpinner);

        facultySpinner = (MaterialSpinner) findViewById(R.id.materialSpinner);
        ArrayAdapter <CharSequence> materialSpinnerAdapter = ArrayAdapter.createFromResource(AccountActivity.this,
                R.array.Faculty, android.R.layout.simple_spinner_item);

        materialSpinnerAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        facultySpinner.setAdapter(materialSpinnerAdapter);

        facultySpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                String facultyName = parent.getItemAtPosition(position).toString();
                facultyName.trim();

               // Toast.makeText(parent.getContext(),tt,Toast.LENGTH_SHORT).show();
                for(int i=0 ; i< faculty.size() ; i++) {
                    String temp = faculty.get(i).get(0).toString();
                    temp.trim();
                    if (facultyName.equalsIgnoreCase(temp)) {

                        Toast.makeText(parent.getContext(),"Match Found",Toast.LENGTH_SHORT).show();
                        ArrayAdapter<String> departmentSpinnerAdapter = new ArrayAdapter<String>(AccountActivity.this,
                                android.R.layout.simple_spinner_dropdown_item  ,faculty.get(i));
                        departmentSpinnerAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);

                        departmentSpinner.setAdapter(departmentSpinnerAdapter);

                    }

                }
                //Toast.makeText(parent.getContext(),test,Toast.LENGTH_SHORT).show();

            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {

            }
        });

        mLogOutButton = (Button) findViewById(R.id.logOutBtn);

        mLogOutButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                FirebaseAuth.getInstance().signOut();
            }
        });


    }

    @Override
    protected void onStart() {
        super.onStart();

        FirebaseAuth.getInstance().addAuthStateListener(mAuthListener);
    }

    public void getUserProfile() {
        // [START get_user_profile]
        FirebaseUser user = FirebaseAuth.getInstance().getCurrentUser();
        if (user != null) {


            // Name, email address, and profile photo Url

            String name = user.getDisplayName();
            String email = user.getEmail();
            Uri photoUrl = user.getPhotoUrl();

            nameText = (EditText) findViewById(R.id.nameText);
            nameText.setText(name);

            emailText = (EditText) findViewById(R.id.emailText);
            emailText.setText(email);

            // Check if user's email is verified
            boolean emailVerified = user.isEmailVerified();

            // The user's ID, unique to the Firebase project. Do NOT use this value to
            // authenticate with your backend server, if you have one. Use
            // FirebaseUser.getIdToken() instead.
            String uid = user.getUid();

        }
        // [END get_user_profile]
    }

    public void addInfoToDatabase(){


        FirebaseUser user = FirebaseAuth.getInstance().getCurrentUser();
        if (user != null) {
            // Name, email address, and profile photo Url

            mFirebaseDatabase = FirebaseDatabase.getInstance();
            mDatabaseReference = mFirebaseDatabase.getReference("Profile");

            // The user's ID, unique to the Firebase project. Do NOT use this value to
            // authenticate with your backend server, if you have one. Use
            // FirebaseUser.getIdToken() instead.
            String uid = user.getUid();
            final String name =  nameText.getText().toString();
            final String email = emailText.getText().toString();
            Uri photoUrl = user.getPhotoUrl();

            departmaentText = (EditText) findViewById(R.id.departmentName);
            phoneText = (EditText) findViewById(R.id.phoneNo);




            // Check if user's email is verified
            boolean emailVerified = user.isEmailVerified();


            UserProfile userProfile = new UserProfile(uid, name, email, departmaentText.getText().toString(), phoneText.getText().toString());
            mDatabaseReference.child(uid).setValue(userProfile);

            Toast.makeText(AccountActivity.this, "Database add Successful.", Toast.LENGTH_SHORT).show();

        }

    }
/*
    @Override
    public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
       // String test = parent.getItemAtPosition(position).toString();
       // Toast.makeText(parent.getContext(),test,Toast.LENGTH_SHORT).show();
    }

    @Override
    public void onNothingSelected(AdapterView<?> parent) {

    }
*/
}
