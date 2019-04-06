package com.example.projektcalendar;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.ArrayAdapter;
import android.widget.ListView;

import java.util.ArrayList;
import java.util.List;

public class ListViewEvent extends AppCompatActivity {

    private ListView eventlist;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_calendar_list_view);

        List <String> eventlistDescription = new ArrayList<String>();
        eventlist = (ListView) findViewById(R.id.eventList);

        Intent intent = getIntent();
        String description = intent.getStringExtra("event");
        eventlistDescription.add(description);

        ArrayAdapter <String> arrayAdapter = new ArrayAdapter<String>(this, android.R.layout.simple_list_item_1, eventlistDescription);

        eventlist.setAdapter(arrayAdapter);
    }
}
