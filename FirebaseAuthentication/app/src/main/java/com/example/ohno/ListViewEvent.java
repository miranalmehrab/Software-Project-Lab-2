package com.example.ohno;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.ArrayAdapter;
import android.widget.ListView;

import java.util.ArrayList;
import java.util.List;

public class ListViewEvent extends AppCompatActivity {

    private ListView eventlist;
    List <EventDay> eventDayList = new ArrayList<EventDay>();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_calendar_list_view);

        List <String> eventlistDescription = new ArrayList<String>();

        eventlist = (ListView) findViewById(R.id.eventList);

        Intent intent = getIntent();
        String eventName = intent.getStringExtra("eventname");
        String description = intent.getStringExtra("eventdescription");
        eventDayList = (List<EventDay>) intent.getSerializableExtra("eventList");
        eventlistDescription.add(description);

      //  EventDay event  = new EventDay("1" , eventName , description , "000");
      //  eventDayList.add(event);

        CalendarEventListAdapter  eventListAdapter = new CalendarEventListAdapter(ListViewEvent.this ,
                R.layout.event_list_item ,eventDayList );
        eventlist.setAdapter(eventListAdapter);
/*
        ArrayAdapter <String> arrayAdapter = new ArrayAdapter<String>(this, android.R.layout.simple_list_item_1, eventlistDescription);

        eventlist.setAdapter(arrayAdapter);
  */
    }
}
