package com.example.ohno;

import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.design.widget.BottomNavigationView;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.MenuItem;
import android.widget.Toast;

import com.example.ohno.decorators.EventDecorator;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;
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

public class CalendarClass extends AppCompatActivity {

    MaterialCalendarView myCalendar ;
    List <CalendarDay> calendarDayList = new ArrayList<CalendarDay>();
    List <String> eventDescription = new ArrayList<String>();
    List <String> eventName = new ArrayList<String>();
   // List<EventDay> events = new ArrayList<EventDay>();

    String profileName8 ;
    String profileEmail8 ;
    String departmentName8 ;
    String academicYear8 ;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_calendar);

        myCalendar = (MaterialCalendarView) findViewById(R.id.calendarView);


        FirebaseAuth auth = FirebaseAuth.getInstance();
        FirebaseUser user = auth.getCurrentUser();
        DatabaseReference reference = FirebaseDatabase.getInstance().getReference("Profile").child(user.getUid());

        reference.addValueEventListener(new ValueEventListener() {
            @Override
            public void onDataChange(@NonNull DataSnapshot dataSnapshot) {

                profileName8 = dataSnapshot.child("name").getValue().toString();
                profileEmail8= dataSnapshot.child("email").getValue().toString();
                departmentName8 = dataSnapshot.child("department").getValue().toString();
                academicYear8 = dataSnapshot.child("academicYear").getValue().toString();

                Log.d("department" , departmentName8);
                // Toast.makeText(CalendarType.this , departmentName , Toast.LENGTH_SHORT).show();
            }

            @Override
            public void onCancelled(@NonNull DatabaseError databaseError) {
                //Toast.makeText(Home2Activity.this , databaseError.getMessage() , Toast.LENGTH_SHORT).show();
            }

        });

        BottomNavigationView navView = findViewById(R.id.nav_view);
        navView.setOnNavigationItemSelectedListener(new BottomNavigationView.OnNavigationItemSelectedListener() {
            @Override
            public boolean onNavigationItemSelected(@NonNull MenuItem menuItem) {
                switch (menuItem.getItemId()){

                    case R.id.navigation_home:
                        Intent intent = new Intent(CalendarClass.this , Home2Activity.class);
                        startActivity(intent);
                        break;

                    case R.id.navigation_profile:
                        Intent intent2 = new Intent(CalendarClass.this , Profile_Activity.class);
                        intent2.putExtra("profileName" , profileName8);
                        intent2.putExtra("profileEmail" , profileEmail8);
                        intent2.putExtra("departmentName" , departmentName8);
                        intent2.putExtra("academicYear" , academicYear8);
                        startActivity(intent2);
                        break;

                    case R.id.back_button:
                        finish();
                        break;

                }
                return  true;
            }
        });


        Retrofit retrofit =  new Retrofit.Builder()
                .baseUrl(Api.baseURL)
                .addConverterFactory(GsonConverterFactory.create())
                .build();

        Api api = retrofit.create(Api.class);

        Call<List<EventDay>> call = api.getEventDays();

        call.enqueue(new Callback<List<EventDay>>() {
            @Override
            public void onResponse(Call<List<EventDay>> call, Response<List<EventDay>> response) {

                final List<EventDay> events  = response.body();

               // Toast.makeText(CalendarClass.this, events.get(0).getName() , Toast.LENGTH_SHORT).show();
                for(EventDay d : events){
                    String temp = d.getdate();
                    //String temp = "29/03/2019";
                    String  fullDate[] = temp.split("/");
                    int day = Integer.parseInt(fullDate[0]);
                    int month = Integer.parseInt(fullDate[1]);
                    int year = Integer.parseInt(fullDate[2]);

                    final String temp2 = d.getName();
                    final String temp3 = d.getDescription();
                    addEvent(LocalDate.of(year, month , day) ,temp2 , temp3);
/*
                    Log.d("id" , d.getId() );
                    Log.d("eventname" , d.getName());
                    Log.d("description" , d.getDescription() );
                    Log.d("date" , d.getdate());

                    */
                   // Toast.makeText(CalendarClass.this, d.getName() , Toast.LENGTH_SHORT).show();
                }

                final EventDecorator eventDecorator = new EventDecorator(Color.RED,calendarDayList);
                myCalendar.addDecorator(eventDecorator);

            }

            @Override
            public void onFailure(Call<List<EventDay>> call, Throwable t) {
                Toast.makeText(CalendarClass.this, t.getMessage() , Toast.LENGTH_SHORT).show();
            }
        });
/*
        addEvent(LocalDate.of(2019,2,23) , "Hellow");
        addEvent(LocalDate.of(2019,2,26) , "Important Day");

*/
        myCalendar.setOnDateChangedListener(new OnDateSelectedListener() {
            @Override
            public void onDateSelected(@NonNull MaterialCalendarView widget, @NonNull CalendarDay date, boolean selected) {

                String s = myCalendar.getSelectedDate().toString();
                List<EventDay> events = new ArrayList<EventDay>();

                for(int i=0 ;i< eventDescription.size() ; i++ ) {

                    String temp = "CalendarDay{" + calendarDayList.get(i).getYear() +"-"+ calendarDayList.get(i).getMonth() +"-"+ calendarDayList.get(i).getDay() + "}";
                    if (s.equals(temp)) {
                        EventDay eventDay = new EventDay( "1" , eventName.get(i) , eventDescription.get(i),s );
                        events.add(eventDay);
                    }

                }
                
                Intent intent = new Intent(CalendarClass.this , CalendarListViewEvent.class);
                intent.putExtra("eventname" , eventName.get(0));
                intent.putExtra("eventdescription" , eventDescription.get(0));
                intent.putExtra("eventList" , (ArrayList<EventDay>) events);
                startActivity(intent);
                //Toast.makeText(getApplicationContext(), eventDescription.get(i).toString(), Toast.LENGTH_SHORT).show();



            }
        });
    }

    public void addEvent(LocalDate localDate , String eventN , String eventDes ){

        CalendarDay day = CalendarDay.from(localDate);
        calendarDayList.add(day);
        eventDescription.add(eventDes);
        eventName.add(eventN);

    }
}
