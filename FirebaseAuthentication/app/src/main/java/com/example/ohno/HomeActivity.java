package com.example.ohno;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.ImageButton;

public class HomeActivity extends AppCompatActivity implements View.OnClickListener {

    ImageButton location;
    ImageButton user;
    ImageButton exit;
    ImageButton calendar;
    ImageButton info;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home);

        calendar = findViewById(R.id.imgCalendar);
        user = findViewById(R.id.imgProfile);
        location = findViewById(R.id.imgLocation);
        info = findViewById(R.id.imgList);
        exit = findViewById(R.id.imgExit);

        calendar.setOnClickListener(HomeActivity.this);
        user.setOnClickListener(HomeActivity.this);
        location.setOnClickListener(HomeActivity.this);
        info.setOnClickListener(HomeActivity.this);
        exit.setOnClickListener(HomeActivity.this);
    }


    @Override
    public void onClick(View view)
    {
        switch(view.getId())
        {

            case R.id.imgLocation:
                initMap();
                break;
            case R.id.imgCalendar:
                initCalendar();
                break;
            case R.id.imgProfile:
                initProfile();
                break;
            case R.id.imgList:
                initInfo();
                break;
            case R.id.imgExit:
                confirmExit();
                break;

        }
    }

    void initMap()
    {
        Intent intent = new Intent(HomeActivity.this, MapClass.class);
        startActivity(intent);
    }

    void initInfo()
    {
        Intent intent = new Intent(HomeActivity.this, InfoOptions.class);
        startActivity(intent);
    }

    void initCalendar()
    {
        Intent intent = new Intent(HomeActivity.this, CalendarClass.class);
        startActivity(intent);
    }

    void initProfile()
    {
        Intent intent = new Intent(HomeActivity.this, AccountActivity.class);
        startActivity(intent);
    }

    void confirmExit()
    {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle("Really want to exit?");
        builder.setCancelable(false);
        builder.setPositiveButton("Yes", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which)
            {
                finish();
            }
        });

        builder.setNegativeButton("No", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which)
            {
                dialog.dismiss();
            }
        });

        builder.show();
    }


}
