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
    MaterialSpinner academicYearSpinner;

    RecyclerView mrecyclerView;

    DatabaseReference mDatabaseReference;
    FirebaseDatabase mFirebaseDatabase;

    private FirebaseAuth mAuth;
    private FirebaseAuth.AuthStateListener mAuthListener;
    private List<List<String>> faculty = new ArrayList<List<String>>();
    private String departmentName;
    private int pos;

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

        addDepartmentData();

        departmentFunctions();
        //Material Spinner


        academicYearSpinner = (MaterialSpinner) findViewById(R.id.year);
        ArrayAdapter <CharSequence> academicYearSpinnerAdapter = ArrayAdapter.createFromResource(AccountActivity.this,
                R.array.Year, android.R.layout.simple_spinner_item);

        academicYearSpinnerAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        facultySpinner.setAdapter(academicYearSpinnerAdapter);



        mLogOutButton = (Button) findViewById(R.id.logOutBtn);

        mLogOutButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                FirebaseAuth.getInstance().signOut();
            }
        });


    }

    public void departmentFunctions() {
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

                //String l = position + "";
                //Toast.makeText(parent.getContext(),l,Toast.LENGTH_SHORT).show();

                for(int i=0 ; i< faculty.size() ; i++) {
                    String temp = faculty.get(i).get(0).toString();
                    temp.trim();
                    if (facultyName.equalsIgnoreCase(temp)) {

                        // Toast.makeText(parent.getContext(),"Match Found",Toast.LENGTH_SHORT).show();
                        ArrayAdapter<String> departmentSpinnerAdapter = new ArrayAdapter<String>(AccountActivity.this,
                                android.R.layout.simple_spinner_dropdown_item  ,faculty.get(i));
                        departmentSpinnerAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);

                        departmentSpinner.setAdapter(departmentSpinnerAdapter);
                        break;

                    }
                    else{
                        List<String> empty = new ArrayList<String>();
                        empty.add("No Department in this Faculty");
                        ArrayAdapter<String> noDepartmentAdapter = new ArrayAdapter<String>(AccountActivity.this,
                                android.R.layout.simple_spinner_dropdown_item  ,empty);
                        noDepartmentAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);

                        departmentSpinner.setAdapter(noDepartmentAdapter);
                    }

                }
                //Toast.makeText(parent.getContext(),test,Toast.LENGTH_SHORT).show();

            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {

            }
        });



        departmentSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                departmentName = parent.getItemAtPosition(position).toString();
                pos = position;
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {

            }
        });

    }

    public void addDepartmentData() {
        String [] temp = {"Faculty of Arts","Department of Bangla", "Department of English",
                "Department of Persian Language and Literature","Department of Philosophy",
                "Department of History", "Department of Arabic","Department of Islamic Study",
                "Department of Islamic History and Culture","Department of Sanskrit and Pali",
                "Department of Information Science and Library Management",
                "Department of Languages and Linguistics", "Department of Theater and Music",
                "Department of World Religion and Culture"
        };
        List<String> arts = new ArrayList<String>(Arrays.asList(temp));

        String [] temp2 = {"Faculty of Business Studies","Department of Management Studies",
                "Department of Accounting & Information Systems", "Department of Marketing",
                "Department of Finance", "Department of Banking and Insurance",
                "Department of Management Information Systems", "Department of International Business",
                "Department of Tourism and Hospitality Management",
                "Department of Organization Strategy and Leadership"
        };
        List<String> bussiness = new ArrayList<String>(Arrays.asList(temp2));

        String [] temp3 = {"Faculty of Biological Science","Department of Soil, Water and Environment",
                "Department of Botany", "Department of Zoology",
                "Department of Biochemistry and Molecular Biology", "Department of Psychology",
                "Department of Microbiology", "Department of Fisheries Science",
                "Department of Medical Psychology",
                "Department of Genetic Engineering and Biotechnology",
                "Department of Educational Psychology"
        };
        List<String> biology = new ArrayList<String>(Arrays.asList(temp3));

        String [] temp4 = {"Faculty of Engineering and Technology",
                "Department of Electrical and Electronic Engineering",
                "Department of Applied Chemistry and Chemical Engineering",
                "Department of Computer Science and Engineering",
                "Department of Nuclear Engineering", "Department of Robotics and Mechatronics"
        };
        List<String> engineering = new ArrayList<String>(Arrays.asList(temp4));

        String [] temp5 = {"Faculty of Fine Arts","Department of Drawing and Painting",
                "Department of Graphic Design",
                "Department of Printmaking", "Department of Oriental Art",
                "Department of Ceramics", "Department of Sculpture",
                "Department of Craft", "Department of History of Art"
        };
        List<String>  fineArts  = new ArrayList<String>(Arrays.asList(temp5));

        String [] temp6 = {"Faculty of Law","Department of Law"};
        List<String> law = new ArrayList<String>(Arrays.asList(temp6));

        String [] temp7 = {"Faculty of Medicine","Bachelor of physiotherapy(BPT)"};
        List<String> medicine = new ArrayList<String>(Arrays.asList(temp7));

        String [] temp8 = {"Faculty of Pharmacy","Department of Pharmaceutical Chemistry",
                "Department of Clinical Pharmacy and Pharmacology",
                "Department of Pharmaceutical Technology", "Department of Pharmacy"
        };
        List<String> pharmacy = new ArrayList<String>(Arrays.asList(temp8));

        String [] temp9 = {"Faculty of Science","Department of Physics",
                "Department of Mathematics", "Department of Chemistry",
                "Department of Biomedical Physics and Technology", "Department of Theoretical Physics",
                "Department of Applied Mathematics", "Department of Statistics",
                "Department of Theoretical and Computational Chemistry"
        };
        List<String> science = new ArrayList<String>(Arrays.asList(temp9));



        String [] temp11 = {"Faculty of Social Sciences","Department of Economics",
                "Department of Health Economics ", "Department of Political Science",
                "Department of International Relations", "Department of Anthropology",
                "Department of Public Administration", "Department of Mass Communication and Journalism",
                "Department of Communication Disorders",
                "Department of Printing and Publication Studies",
                "Department of Television, Film and Photography",
                "Department of Sociology", "Department of Development Studies",
                "Department of Criminology", "Department of Japanese Studies"
        };
        List<String> socialSciences = new ArrayList<String>(Arrays.asList(temp11));

        String [] temp12 = {"Faculty of Earth and Environmental Sciences",
                "Department of geography and environment", "Department of Geology",
                "Department of oceanography",
                "Department of Disaster Science and Management", "Department of Meteorology"
        };
        List<String> earthEnvironmentalSciences = new ArrayList<String>(Arrays.asList(temp12));

        faculty.add(arts);
        faculty.add(bussiness);
        faculty.add(biology);
        faculty.add(engineering);
        faculty.add(fineArts);
        faculty.add(law);
        faculty.add(medicine);
        faculty.add(pharmacy);
        faculty.add(science);
        faculty.add(socialSciences);
        faculty.add(earthEnvironmentalSciences);


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

            // Check if user's email is verified
            boolean emailVerified = user.isEmailVerified();

            if(pos == 0 || pos ==-1){

                Toast.makeText(AccountActivity.this,"Please choose a Department/Institute" ,
                        Toast.LENGTH_SHORT).show();
            }
            else {
                UserProfile userProfile = new UserProfile(uid, name, email, departmentName , phoneText.getText().toString());
                mDatabaseReference.child(uid).setValue(userProfile);
                mDatabaseReference.orderByKey();

                Toast.makeText(AccountActivity.this, "Database add Successful.", Toast.LENGTH_SHORT).show();
            }
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
