package com.example.ohno;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

import com.bumptech.glide.Glide;

public class HallViewActivity extends AppCompatActivity {


    ImageView hallImage;
    TextView description;
    TextView hallName;
    TextView establishedYear;
    Button btnMap;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_hall_view);

        Intent intent = getIntent();
        final Hall hall = (Hall) intent.getSerializableExtra("hallCurrent");

        hallImage = (ImageView) findViewById(R.id.image);
        description = (TextView) findViewById(R.id.description);
        hallName = (TextView) findViewById(R.id.name);
        establishedYear = (TextView) findViewById(R.id.establishedYear);
        btnMap = (Button) findViewById(R.id.buttonMap);

        btnMap.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
              //  Toast.makeText(HallViewActivity.this , "Map for " + hall.getName(),
                 //       Toast.LENGTH_SHORT).show();
            }
        });

        establishedYear.setText(hall.getEstablishedYear());
        hallName.setText(hall.getName());
        description.setText(hall.getDescription().trim());
  //      description.setMovementMethod(new ScrollingMovementMethod());
        Glide.with(HallViewActivity.this).load(hall.getImage())
                .placeholder(R.drawable.dulogo).into(hallImage);


    }
}
