package com.example.spl2;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class Main_Activity extends AppCompatActivity implements View.OnClickListener {

    Button map_btn;
    Button server_btn;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        map_btn = findViewById(R.id.map_btn);
        server_btn = findViewById(R.id.server_btn);

        map_btn.setOnClickListener(this);
        server_btn.setOnClickListener(this);


    }

    @Override
    public void onClick(View v)
    {
        switch(v.getId())
        {
            case R.id.map_btn:
            {
                Intent intent = new Intent(this, Map_Activity.class);
                startActivity(intent);
                break;
            }

            case R.id.server_btn:
            {
                Intent intent = new Intent(this, ShowServerData_Activity.class);
                startActivity(intent);
                break;
            }
        }
    }
}
