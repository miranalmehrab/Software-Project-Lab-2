package com.example.ohno;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.text.method.ScrollingMovementMethod;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

import com.bumptech.glide.Glide;

public class OfficeViewActivity extends AppCompatActivity {


    ImageView officeImage;
    TextView description;
    TextView officeName;
    TextView establishedYear;
    Button btnMap;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_office_view);

        Intent intent = getIntent();
        final Office office = (Office) intent.getSerializableExtra("officeCurrent");

        officeImage = (ImageView) findViewById(R.id.image);
        description = (TextView) findViewById(R.id.description);
        officeName = (TextView) findViewById(R.id.name);
        establishedYear = (TextView) findViewById(R.id.establishedYear);
        btnMap = (Button) findViewById(R.id.buttonMap);

        btnMap.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
              //  Toast.makeText(OfficeViewActivity.this , "Map for " + office.getName(),
                 //       Toast.LENGTH_SHORT).show();
            }
        });

        establishedYear.setText(office.getEstablishedYear());
        officeName.setText(office.getName());
        description.setText(office.getDescription().trim());
        description.setMovementMethod(new ScrollingMovementMethod());
        Glide.with(OfficeViewActivity.this).load(office.getImage())
                .placeholder(R.drawable.dulogo).into(officeImage);


    }
}
