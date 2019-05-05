package com.example.spl2;

import android.content.Context;
import android.os.AsyncTask;
import android.widget.TextView;
import android.widget.Toast;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;

import static android.widget.Toast.makeText;

public class ServerData_Activity extends AsyncTask<String,Void,String> {

    //ArrayList<String> list=new ArrayList<>();

    String list="";

    @Override
    protected String doInBackground(String... strings) {
        try
        {
            URL url =new URL(strings[0]);

            HttpURLConnection httpURLConnection = (HttpURLConnection)url.openConnection();
            InputStream inputStream = httpURLConnection.getInputStream();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));

            String temp="";
            while(temp != null)
            {
                temp = bufferedReader.readLine();

                if(temp != null){

                    list = list + temp;
                }
            }

        }catch (MalformedURLException e)
        {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return list;
    }


    @Override
    protected void onPostExecute(String list) {

        super.onPostExecute(list);


    }


}
