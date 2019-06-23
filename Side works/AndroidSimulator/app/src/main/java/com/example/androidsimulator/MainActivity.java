package com.example.androidsimulator;

import android.Manifest;
import android.content.Context;
import android.content.pm.PackageManager;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.telephony.SmsManager;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class MainActivity extends AppCompatActivity {

    private Button btn;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);


        final int SEND_SMS_PERMISSION_REQUEST_CODE = 1;


        btn = (Button)findViewById(R.id.btn);
        btn.setEnabled(false);

        if(checkPermission(Manifest.permission.SEND_SMS)){
            btn.setEnabled(true);
        }else{
            ActivityCompat.requestPermissions(this, new String[] {Manifest.permission.SEND_SMS},SEND_SMS_PERMISSION_REQUEST_CODE);
        }

//        request();
//        btn = (Button)findViewById(R.id.btn);
////
//        btn.setOnClickListener(new View.OnClickListener() {
//            @Override
//            public void onClick(View v) {
//
//
//            }
//        });
    }
    public void onSend(View v){
        if(checkPermission(Manifest.permission.SEND_SMS)){
            SmsManager smsManager = SmsManager.getDefault();
            smsManager.sendTextMessage("2121",null,"rakib continue 2",null,null);

            Toast.makeText(this,"message Sent",Toast.LENGTH_SHORT).show();
        }else {
            Toast.makeText(this,"Permission Denied",Toast.LENGTH_SHORT).show();
        }

    }

    public boolean checkPermission(String permission){
        int check = ContextCompat.checkSelfPermission(MainActivity.this,permission);
        return (check == PackageManager.PERMISSION_GRANTED);
    }


    public void request(){

        Retrofit.Builder builder = new Retrofit.Builder()
                .baseUrl("http://developer.bdapps.com/sms/")
                .addConverterFactory(GsonConverterFactory.create());

        Retrofit retrofit = builder.build();


        Profile profile = new Profile("APP_000001","password","lol", "tel:8801866742387");
        Log.d("rkib"," "+profile.toString());
        Toast.makeText(MainActivity.this," "+profile.toString(),Toast.LENGTH_SHORT).show();
        Apii  api = retrofit.create(Apii.class);
        Call<Profile> call = api.getProfilePost(profile);

        call.enqueue(new Callback<Profile>() {
            @Override
            public void onResponse(Call<Profile> call, Response<Profile> response) {
                // Toast.makeText(Login.this, " Yes Yes !right"+response.body().getUserName(),Toast.LENGTH_SHORT).show();
              /*  if(response.body().getUserName().equals("invalid") && response.body().getPassword().equals("invalid"))
                    Toast.makeText(Login.this, "Invalid username of password ",Toast.LENGTH_SHORT).show();
                else openBusList();
                */
                Toast.makeText(MainActivity.this,"yes",Toast.LENGTH_SHORT).show();


            }

            @Override
            public void onFailure(Call<Profile> call, Throwable t) {
                Toast.makeText(MainActivity.this,"trying man",Toast.LENGTH_SHORT).show();

            }
        });


    }
}
