package com.example.spl2;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.concurrent.ExecutionException;

public class ShowServerData_Activity extends AppCompatActivity
{

    public ShowServerData_Activity() throws ExecutionException, InterruptedException {
    }
    TextView textView;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_datafromserver);
        textView=findViewById(R.id.textView);
        try {
            String list= new ServerData_Activity().execute("http://52.29.113.22/miran/server_php/android_php.php").get();
            textView.setText(list);
        } catch (ExecutionException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }


    }
}
