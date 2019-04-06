package com.example.projektcalendar;

import android.content.DialogInterface;
import android.content.Intent;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageButton;

public class HomeActivity extends AppCompatActivity implements View.OnClickListener {

    ImageButton location;
    ImageButton exit;
    ImageButton calendar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        calendar = findViewById(R.id.imgCalendar);
        location = findViewById(R.id.imgLocation);
        exit = findViewById(R.id.imgExit);

        calendar.setOnClickListener(this);
        location.setOnClickListener(this);
        exit.setOnClickListener(this);
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

    void initCalendar()
    {
        Intent intent = new Intent(HomeActivity.this, CalendarClass.class);
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
                System.exit(0);
            }
        });

        builder.setNegativeButton("No", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which)
            {

            }
        });

        builder.show();
    }


}
