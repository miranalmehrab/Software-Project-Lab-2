package com.example.ohno;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;

public class AccountActivity extends AppCompatActivity {

    private Button mLogOutButton;
    private EditText departmaentText;
    private EditText phoneText;
    private EditText nameText;
    private EditText emailText;
    private Button submitBtn;

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
}
