package com.example.projektcalendar;

import android.content.Intent;
import android.graphics.Color;
import android.support.annotation.NonNull;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

import com.example.cccalendar.decorators.EventDecorator;
import com.prolificinteractive.materialcalendarview.CalendarDay;
import com.prolificinteractive.materialcalendarview.MaterialCalendarView;
import com.prolificinteractive.materialcalendarview.OnDateSelectedListener;

import org.threeten.bp.LocalDate;

import java.util.ArrayList;
import java.util.List;

public class CalendarClass extends AppCompatActivity {

    MaterialCalendarView myCalendar ;
    List <CalendarDay> calendarDayList = new ArrayList<CalendarDay>();
    List <String> eventDescription = new ArrayList<String>();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_calendar);

        myCalendar = (MaterialCalendarView) findViewById(R.id.calendarView);


        addEvent(LocalDate.of(2019,2,23) , "Hellow");
        addEvent(LocalDate.of(2019,2,26) , "Important Day");

        final EventDecorator eventDecorator = new EventDecorator(Color.RED,calendarDayList);
        myCalendar.addDecorator(eventDecorator);


        myCalendar.setOnDateChangedListener(new OnDateSelectedListener() {
            @Override
            public void onDateSelected(@NonNull MaterialCalendarView widget, @NonNull CalendarDay date, boolean selected) {

                String s = myCalendar.getSelectedDate().toString();

                for(int i=0 ;i< eventDescription.size() ; i++ ) {

                    String temp = "CalendarDay{" + calendarDayList.get(i).getYear() +"-"+ calendarDayList.get(i).getMonth() +"-"+ calendarDayList.get(i).getDay() + "}";
                    if (s.equals(temp)) {
                        Intent intent = new Intent(CalendarClass.this ,com.example.projektcalendar.ListViewEvent.class);
                        intent.putExtra("event" , eventDescription.get(i));intent.putExtra("event" , eventDescription.get(i));
                        startActivity(intent);
                        //Toast.makeText(getApplicationContext(), eventDescription.get(i).toString(), Toast.LENGTH_SHORT).show();
                    }


                }

            }
        });
    }

    public void addEvent(LocalDate localDate , String eventDes){

        CalendarDay day = CalendarDay.from(localDate);
        calendarDayList.add(day);
        eventDescription.add(eventDes);


    }
}
