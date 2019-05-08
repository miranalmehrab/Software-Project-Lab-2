package com.example.saira_000.servertest;

import android.os.AsyncTask;
import android.os.StrictMode;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONArray;
import org.json.JSONObject;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;

public class MainActivity extends AppCompatActivity {


    String urladdress = "http://52.29.113.22/miran/server_php/android_php.php";
    String[] name;
    String[] email;
    String[] imagepath;
    ListView listView;
    BufferedInputStream is;
    String line = null;
    String result = null;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

//        listView=(ListView)findViewById(R.id.lview);

        StrictMode.setThreadPolicy((new StrictMode.ThreadPolicy.Builder().permitNetwork().build()));
        collectData();

        Toast.makeText(MainActivity.this,result , Toast.LENGTH_SHORT).show();
        //   CustomListView customListView=new CustomListView(this,name,email,imagepath);
        //   listView.setAdapter(customListView);

    }


    private void collectData() {
//Connection
        try {

            URL url = new URL(urladdress);
            HttpURLConnection con = (HttpURLConnection) url.openConnection();
            con.setRequestMethod("GET");
            is = new BufferedInputStream(con.getInputStream());

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        //content
        try {
            BufferedReader br = new BufferedReader(new InputStreamReader(is));
            StringBuilder sb = new StringBuilder();
            while ((line = br.readLine()) != null) {
                sb.append(line + "\n");
            }
            is.close();
            result = sb.toString();

        } catch (Exception ex) {
            ex.printStackTrace();

        }

//JSON
      /*
        try{
            JSONArray ja=new JSONArray(result);
            JSONObject jo=null;
            name=new String[ja.length()];
            email=new String[ja.length()];
            imagepath=new String[ja.length()];

            for(int i=0;i<=ja.length();i++){
                jo=ja.getJSONObject(i);
                name[i]=jo.getString("name");
                email[i]=jo.getString("email");
                imagepath[i]=jo.getString("photo");
            }
        }
        catch (Exception ex)
        {

            ex.printStackTrace();
        }

*/
    }
}

































/*
    TextView textView;
    String host = "http://52.29.113.22/miran/server_php/android_php.php";
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        new Connection().execute();
    }


        class Connection extends AsyncTask<String , String , String >{
        @Override
        protected String doInBackground(String... strings) {

            String result = "";
            String host = "http://52.29.113.22/miran/server_php/android_php.php";
            try {

                URL url =new URL(host);
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();

                httpURLConnection.setRequestMethod("GET");
                InputStream inputStream = new BufferedInputStream(httpURLConnection.getInputStream());

                BufferedReader reader =  new BufferedReader(new InputStreamReader(inputStream));
                StringBuffer stringBuffer = new StringBuffer("");

                String line = "" ;
                while ((line = reader.readLine()) != null){
                    stringBuffer.append(line);
                    break;
                }
                reader.close();
                result = stringBuffer.toString();

            } catch (ClientProtocolException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }


            return result;
        }

        @Override
        protected void onPostExecute(String result){
            Toast.makeText(MainActivity.this  , result , Toast.LENGTH_LONG).show();
            textView = (TextView) findViewById(R.id.text);
            textView.setText(result);
        }
    }

*/

