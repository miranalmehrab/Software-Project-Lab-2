package com.example.ohno;

import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.widget.Toast;

import com.example.ohno.decorators.EventDecorator;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.database.DatabaseReference;
import com.prolificinteractive.materialcalendarview.CalendarDay;
import com.prolificinteractive.materialcalendarview.MaterialCalendarView;
import com.prolificinteractive.materialcalendarview.OnDateSelectedListener;

import org.threeten.bp.LocalDate;

import java.util.ArrayList;
import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class CalendarSpecificClass extends AppCompatActivity {

    MaterialCalendarView myCalendar ;
    List <CalendarDay> calendarDayList = new ArrayList<CalendarDay>();
    List <String> eventDescription = new ArrayList<String>();
    List <String> eventName = new ArrayList<String>();

    Retrofit retrofit;
    Api api;
    Call<List<SpecificCalendarDay>> call;

    String departmentName = "lalala";
    String academicYear = "momomo";


   // List<SpecificCalendarDay> events = new ArrayList<SpecificCalendarDay>();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_calendar);

        Intent intent = getIntent();
        departmentName = intent.getStringExtra("departmentName" );
        academicYear = intent.getStringExtra("academicYear" );

        //departmentName = "iit";
        myCalendar = (MaterialCalendarView) findViewById(R.id.calendarView);

        retrofit =  new Retrofit.Builder()
                .baseUrl(Api.baseURL)
                .addConverterFactory(GsonConverterFactory.create())
                .build();


        api = retrofit.create(Api.class);
        Toast.makeText(CalendarSpecificClass.this , departmentName , Toast.LENGTH_SHORT).show();
        Log.d("department3" , departmentName);

        getApiCall();

       // call = api.getIITFirstYearEvents();

        call.enqueue(new Callback<List<SpecificCalendarDay>>() {
            @Override
            public void onResponse(Call<List<SpecificCalendarDay>> call,
                                   Response<List<SpecificCalendarDay>> response) {

                final List<SpecificCalendarDay> events  = response.body();

                // Toast.makeText(CalendarClass.this, events.get(0).getName() , Toast.LENGTH_SHORT).show();
                for(SpecificCalendarDay d : events){
                    String temp = d.getDate();
                    //String temp = "29/03/2019";
                    String  fullDate[] = temp.split("/");
                    int day = Integer.parseInt(fullDate[0]);
                    int month = Integer.parseInt(fullDate[1]);
                    int year = Integer.parseInt(fullDate[2]);

                    final String temp2 = d.getName();
                    final String temp3 = d.getDescription();
                    addEvent(LocalDate.of(year, month , day) ,temp2 , temp3);

                    Log.d("Pass" , d.getId() );
                    Log.d("Pass" , d.getName());
                    Log.d("Pass" , d.getDescription() );
                    Log.d("Pass" , d.getDate());
                    Log.d("Department Name" , d.getDeptName());
                    Log.d("Academic year" , d.getAcademicYear());

                    // Toast.makeText(CalendarClass.this, d.getName() , Toast.LENGTH_SHORT).show();
                }

                final EventDecorator eventDecorator = new EventDecorator(Color.BLUE,calendarDayList);
                myCalendar.addDecorator(eventDecorator);

            }

            @Override
            public void onFailure(Call<List<SpecificCalendarDay>> call, Throwable t) {
                Toast.makeText(CalendarSpecificClass.this, t.getMessage() , Toast.LENGTH_SHORT).show();
            }
        });
/*
        addEvent(LocalDate.of(2019,2,23) , "Hellow");
        addEvent(LocalDate.of(2019,2,26) , "Important Day");

*/
        myCalendar.setOnDateChangedListener(new OnDateSelectedListener() {
            @Override
            public void onDateSelected(@NonNull MaterialCalendarView widget,
                                       @NonNull CalendarDay date, boolean selected) {

                String s = myCalendar.getSelectedDate().toString();
                List<EventDay> speficEvents = new ArrayList<EventDay>();

                for(int i=0 ;i< eventDescription.size() ; i++ ) {

                    String temp = "CalendarDay{" + calendarDayList.get(i).getYear() +"-"+
                            calendarDayList.get(i).getMonth() +"-"+ calendarDayList.get(i).getDay() + "}";
                    if (s.equals(temp)) {
                        EventDay eventDay = new EventDay( "1" ,
                                eventName.get(i) , eventDescription.get(i),s  );
                        speficEvents.add(eventDay);
                    }

                }

                if(eventName.get(0).length()>0) {
                    Intent intent = new Intent(CalendarSpecificClass.this, CalendarListViewEvent.class);
                    intent.putExtra("eventname", eventName.get(0));
                    intent.putExtra("eventdescription", eventDescription.get(0));
                    intent.putExtra("eventList", (ArrayList<EventDay>) speficEvents);
                    startActivity(intent);
                    //Toast.makeText(getApplicationContext(), eventDescription.get(i).toString(), Toast.LENGTH_SHORT).show();
                }
                else{

                }
            }
        });

        Log.d("department5" , departmentName);

    }

    private void getApiCall( ) {

        if(departmentName!=null ) {
            Log.d("Pass" , departmentName );
            Log.d("Pass" , academicYear );
            if (departmentName.equalsIgnoreCase("Institute of Information Technology") && 
                    academicYear.equalsIgnoreCase("1st Year")) {
                call = api.getIITFirstYearEvents();

            } else if (departmentName.equalsIgnoreCase("Institute of Information Technology") &&
                    academicYear.equalsIgnoreCase("2nd Year")) {
                call = api.getIITSecondYearEvents();

            }  else if (departmentName.equalsIgnoreCase("Institute of Information Technology") &&
                    academicYear.equalsIgnoreCase("3rd Year")) {
                call = api.getIITThirdYearEvents();

            }  else if (departmentName.equalsIgnoreCase("Institute of Information Technology") &&
                    academicYear.equalsIgnoreCase("4th Year")) {
                call = api.getIITFourthYearEvents();

            }

        }
        else{
            Toast.makeText(CalendarSpecificClass.this , "Department name is Null ... Error" ,
                    Toast.LENGTH_SHORT).show();
            Intent intent = new Intent();
            startActivity(intent);
        }

    }

    public void addEvent(LocalDate localDate , String eventN , String eventDes ){

        CalendarDay day = CalendarDay.from(localDate);
        calendarDayList.add(day);
        eventDescription.add(eventDes);
        eventName.add(eventN);

    }
}
