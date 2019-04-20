package com.example.spl2;

import android.Manifest;
import android.content.pm.PackageManager;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.Toast;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;

public class Map_Activity extends FragmentActivity implements OnMapReadyCallback, View.OnClickListener
        {
    private Marker marker;
    private GoogleMap mMap;
    private LocationManager locationManager;
    private LocationListener locationListener;
    private static final int REQUEST_LOCATION_PERMISSION = 1;
    private final long MIN_TIME= 1000;
    private final long MIN_DISTANCE= 10;
    private LatLng latlang;


    private final static String TAG = "Map Class";

    // search location in search bar

    private  EditText searchKey;
    private ImageButton searchBtn;
    AutoCompleteTextView autoCompleteTextView;

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_map);
        SupportMapFragment mapFragment = (SupportMapFragment) getSupportFragmentManager().findFragmentById(R.id.map);
        mapFragment.getMapAsync(this);

        ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.ACCESS_FINE_LOCATION}, PackageManager.PERMISSION_GRANTED);
        ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.ACCESS_COARSE_LOCATION}, PackageManager.PERMISSION_GRANTED);

        /*GoogleMapOptions options = new GoogleMapOptions();
        options.mapType(GoogleMap.MAP_TYPE_SATELLITE)
                .compassEnabled(true)
                .rotateGesturesEnabled(false)
                .tiltGesturesEnabled(true);
           */

        /*<EditText
        android:id="@+id/input_search"
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:layout_gravity="center_vertical"
        android:hint="Enter departments or offices"
        android:imeOptions="actionSearch"
        android:textColor="#000" />
        */




        autoCompleteTextView = findViewById(R.id.autoCompleteTextView);


        String[] departments = getResources().getStringArray(R.array.departments);




        ArrayAdapter<String> adapter = new ArrayAdapter<String>(this,R.layout.auto_suggestion,R.id.text_view_list,departments);
        autoCompleteTextView.setAdapter(adapter);
        autoCompleteTextView.setThreshold(1);


        //searchKey = findViewById(R.id.input_search);
        searchBtn = findViewById(R.id.searchBtn);
        //searchForLocation();
        searchBtn.setOnClickListener(this);

    }

    @Override
    public void onClick(View view)
    {
        switch(view.getId())
        {
            case R.id.searchBtn:
                {
                    geoLocate();
                    break;
                }
        }
    }

    void geoLocate()
    {
        Log.d(TAG,"Geo Locate called");

        List <Address>  list= new ArrayList<>();
        String searchString = autoCompleteTextView.getText().toString();
        Geocoder geocoder = new Geocoder(Map_Activity.this);

        if(searchString == null)
        {
            Toast.makeText(this, "Enter an address", Toast.LENGTH_SHORT).show();
            return;
        }
        try { list = geocoder.getFromLocationName(searchString,1); }
        catch (IOException e) {e.printStackTrace();}

        if(list.size() > 0)
        {
            Log.d(TAG,"name found");
            Address address = list.get(0);

            LatLng latLng = new LatLng(address.getLatitude(),address.getLongitude());
            mMap.addMarker(new MarkerOptions().position(latLng).title(address.getAddressLine(0)));
            mMap.moveCamera(CameraUpdateFactory.newLatLngZoom(latLng,15));
        }
    }




   /* void searchForLocation()
    {
        Log.d(TAG,"Search for location called");
        searchKey.setOnEditorActionListener(new TextView.OnEditorActionListener() {
            @Override
            public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
                if(actionId == EditorInfo.IME_ACTION_SEARCH
                        || actionId == EditorInfo.IME_ACTION_DONE
                        || event.getAction() == event.ACTION_DOWN
                        || event.getAction() == event.KEYCODE_ENTER) {

                    geoLocate();

                }
                return false;
            }
        });
    }
    */



    @Override
    public void onMapReady(final GoogleMap googleMap)
    {
        mMap = googleMap;

        locationListener = new LocationListener() {
            @Override
            public void onLocationChanged(Location location) {
                 try{
                        latlang = new LatLng(location.getLatitude(), location.getLongitude());
                        /*if(marker == null) marker =  mMap.addMarker(new MarkerOptions().position(latlang).title("Current Location"));
                        else
                        {
                            marker.remove();
                            marker =  mMap.addMarker(new MarkerOptions().position(latlang).title("Current Location"));
                        }*/

                        /*.icon(BitmapDescriptorFactory.fromResource(R.drawable.truck)));*/
                        mMap.animateCamera(CameraUpdateFactory.newLatLngZoom(latlang, (float) 16.0));
                        /*mMap.addCircle(
                              new CircleOptions()
                                      .center(latlang)
                                      .radius(100)
                                      .strokeWidth(2f)
                                      .strokeColor(Color.BLUE)
                                      .fillColor(Color.argb(50,255,2555,255))

                        );*/

                        mMap.setTrafficEnabled(true);
                        //mMap.isBuildingsEnabled();

                        mMap.setMyLocationEnabled(true);
                        mMap.getUiSettings().setZoomControlsEnabled(true);
                        mMap.getUiSettings().setRotateGesturesEnabled(true);

                 }catch (SecurityException e){
                     e.printStackTrace();
                 }
            }

            @Override
            public void onStatusChanged(String provider, int status, Bundle extras){ }

            @Override
            public void onProviderEnabled(String provider) {}

            @Override
            public void onProviderDisabled(String provider){ }
        };

        locationManager = (LocationManager) getSystemService(LOCATION_SERVICE);
        try{
            locationManager.requestLocationUpdates(LocationManager.NETWORK_PROVIDER,MIN_TIME,MIN_DISTANCE,locationListener);
        }catch (SecurityException e){
            e.printStackTrace();
        }

    }

}