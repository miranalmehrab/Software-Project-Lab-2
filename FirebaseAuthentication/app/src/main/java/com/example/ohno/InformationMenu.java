package com.example.ohno;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class InformationMenu extends AppCompatActivity {

    private Button departmentBtn;
    private Button hallBtn;
    private Button officeBtn;
    private Button clubBtn;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_information_menu);

        departmentBtn = (Button) findViewById(R.id.Department);
        hallBtn = (Button) findViewById(R.id.Hall);
        officeBtn = (Button) findViewById(R.id.Office);
        clubBtn = (Button) findViewById(R.id.Club);

        departmentBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(InformationMenu.this , DepartmentInfoActivity.class);
                startActivity(intent);
            }
        });

        hallBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(InformationMenu.this , HallInfoActivity.class);
                startActivity(intent);
            }
        });

        officeBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(InformationMenu.this , OfficeInfoActivity.class);
                startActivity(intent);
            }
        });

        clubBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(InformationMenu.this , ClubInfoActivity.class);
                startActivity(intent);
            }
        });
    }
}



