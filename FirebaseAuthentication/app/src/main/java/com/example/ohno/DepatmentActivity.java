package com.example.ohno;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;

public class DepatmentActivity extends AppCompatActivity {

    EditText departmentName;
    EditText description;
    TextView descriptionTitle;
    Button upload;
    DatabaseReference databaseDepartment;
    FirebaseDatabase mFirebaseDatabase;

    //List <DepartmentInfo> departmentList = new ArrayList<DepartmentInfo>();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_department);
/*
        departmentName  = (EditText) findViewById(R.id.departmentName);
        description = (EditText) findViewById(R.id.Description);
        descriptionTitle = (TextView) findViewById(R.id.DescriptionTitle);
        upload = (Button) findViewById(R.id.Upload);

        upload.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                //mFirebaseDatabase = FirebaseDatabase.getInstance();
                //addDepartment();
            }
        });
*/
    }
/*
    public void addDepartment() {

        String departmnentName2 = departmentName.getText().toString().trim();
        String description2 = description.getText().toString().trim();
        String descriptionTitle2 = descriptionTitle.getText().toString().trim();


            FirebaseDatabase mFirebaseDatabase = FirebaseDatabase.getInstance();
            databaseDepartment = mFirebaseDatabase.getReference("Departments");

            String departmentId = databaseDepartment.push().getKey();

            DepartmentInfo department = new DepartmentInfo(departmentId.toString(), departmnentName2 , description2.toString(), 1922  );

            //Saving the Artist
            databaseDepartment.child(departmentId).setValue(department);

            //setting edittext to blank again
            //departmentName.setText("");

            //displaying a success toast
            Toast.makeText(this, "Department added", Toast.LENGTH_LONG).show();


    }
    */
}
