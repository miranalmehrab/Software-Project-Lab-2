package com.example.ohno;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;

import com.bumptech.glide.Glide;

public class DepartmentViewActivity extends AppCompatActivity {


    ImageView departmentImage;
    TextView description;
    TextView departmentName;
    TextView faculty;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_department_view);

        Intent intent = getIntent();
        Department department = (Department) intent.getSerializableExtra("departmentCurrent");

        departmentImage = (ImageView) findViewById(R.id.departmentImage);
        description = (TextView) findViewById(R.id.eventDescription);
        departmentName = (TextView) findViewById(R.id.departmentName);
        faculty = (TextView) findViewById(R.id.faculty);

        faculty.setText(department.getFaculty());
        departmentName.setText(department.getName());
        description.setText(department.getDescription().trim());
        Glide.with(DepartmentViewActivity.this).load(department.getImage())
                .placeholder(R.drawable.ic_launcher_foreground).into(departmentImage);


    }
}
