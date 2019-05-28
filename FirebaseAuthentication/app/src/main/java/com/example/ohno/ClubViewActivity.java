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

public class ClubViewActivity extends AppCompatActivity {


    ImageView clubImage;
    TextView description;
    TextView clubName;
    TextView establishedYear;
    Button btnMap;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_club_view);

        Intent intent = getIntent();
        final Club club = (Club) intent.getSerializableExtra("clubCurrent");

        clubImage = (ImageView) findViewById(R.id.image);
        description = (TextView) findViewById(R.id.description);
        clubName = (TextView) findViewById(R.id.name);
        establishedYear = (TextView) findViewById(R.id.establishedYear);
        btnMap = (Button) findViewById(R.id.buttonMap);

        btnMap.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
              //  Toast.makeText(ClubViewActivity.this , "Map for " + club.getName(),
                 //       Toast.LENGTH_SHORT).show();
            }
        });

        establishedYear.setText(club.getEstablishedYear());
        clubName.setText(club.getName());
        description.setText(club.getDescription().trim());
        description.setMovementMethod(new ScrollingMovementMethod());
        Glide.with(ClubViewActivity.this).load(club.getImage())
                .placeholder(R.drawable.dulogo).into(clubImage);


    }
}
