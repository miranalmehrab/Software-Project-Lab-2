package com.example.calendartest;

import android.content.Context;
import android.graphics.Color;
import android.support.annotation.NonNull;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.CalendarView;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MainActivity extends AppCompatActivity {

    CalendarView calendarView;
    TextView showDate;
    EditText eventDescription;
    List <Event> events = new ArrayList<>();

    @Override

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        calendarView = (CalendarView) findViewById(R.id.calendarView);
        showDate = (TextView) findViewById(R.id.showDate);


        calendarView.setOnDateChangeListener(new CalendarView.OnDateChangeListener() {
            private CalendarView view;
            private int year;
            private int month;
            private int dayOfMonth;

            @Override
            public void onSelectedDayChange(@NonNull CalendarView view, int year, int month, int dayOfMonth) {

                this.view = view;
                this.year = year;
                this.month = month;
                this.dayOfMonth = dayOfMonth;
                month++;
                String date = dayOfMonth + "/"+ month + "/" + year + "";
                showDate.setText(date);


                String dateTime = year + "-" + month + "-" + dayOfMonth ;


                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                sdf.setTimeZone(java.util.TimeZone.getTimeZone("GMT+6"));

                Date mDate = null;
                try {
                    mDate = sdf.parse(dateTime);

                } catch (ParseException e) {
                    e.printStackTrace();
                }

                long timeInMilliseconds = mDate.getTime();

                view.setDate(timeInMilliseconds);

                Context context = getApplicationContext();
                SimpleDateFormat mdformat = new SimpleDateFormat("yyyy / MM / dd ");
                String strDate =  mdformat.format(view.getDate());
                //Toast.makeText(context, strDate, Toast.LENGTH_SHORT).show();

                addEvents();

                for(int i=0 ; i< events.size() ; i++){
                    if(strDate.compareTo(events.get(i).getDate())==0){
                        //Toast.makeText(context, events.get(i).getEventName(), Toast.LENGTH_SHORT).show();

                    }
                    else{

                    }
                }

            }
        });


    }

    public void addEvents(){

        Event ev1 = new Event("2019 / 02 / 21 " , "Martyer's Day");
        Event ev2 = new Event("2019 / 02 / 01 " , "First Day of February");

        events.add(ev1);
        events.add(ev2);
    }
}
