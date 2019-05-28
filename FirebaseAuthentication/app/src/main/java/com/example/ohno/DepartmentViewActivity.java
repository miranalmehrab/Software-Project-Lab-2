package com.example.ohno;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.text.method.ScrollingMovementMethod;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.bumptech.glide.Glide;

public class DepartmentViewActivity extends AppCompatActivity {


    ImageView departmentImage;
    TextView description;
    TextView departmentName;
    TextView faculty;
    Button btnMap;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_department_view);

        Intent intent = getIntent();
        final Department department = (Department) intent.getSerializableExtra("departmentCurrent");

        departmentImage = (ImageView) findViewById(R.id.image);
        description = (TextView) findViewById(R.id.description);
        departmentName = (TextView) findViewById(R.id.name);
        faculty = (TextView) findViewById(R.id.establishedYear);
        btnMap = (Button) findViewById(R.id.buttonMap);

        btnMap.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(DepartmentViewActivity.this , "Map for " + department.getName(),
                        Toast.LENGTH_SHORT).show();
                Intent intent =  new Intent(DepartmentViewActivity.this  , MapActivityInfrastructure.class);
                intent.putExtra("longitude" ,department.getLongitude() );
                intent.putExtra("latitude" , department.getLatitude());
                intent.putExtra("name" , department.getName());
                startActivity(intent);
            }
        });

        faculty.setText(department.getFaculty());
        departmentName.setText(department.getName());
        description.setText(department.getDescription().trim());
        description.setMovementMethod(new ScrollingMovementMethod());
        Glide.with(DepartmentViewActivity.this).load(department.getImage())
                .placeholder(R.drawable.dulogo).into(departmentImage);


    }
}
