package com.example.ohno;

import android.Manifest;
import android.content.Intent;
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

import com.example.ohno.R;
import com.google.android.gms.maps.CameraUpdate;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;

public class MapActivityInfrastructure extends FragmentActivity implements OnMapReadyCallback
{
    private Marker marker;
    private GoogleMap mMap;
    private LocationManager locationManager;
    private LocationListener locationListener;
    private static final int REQUEST_LOCATION_PERMISSION = 1;
    private final long MIN_TIME= 1000;
    private final long MIN_DISTANCE= 10;
    private LatLng latlang;
    private double longitude ;
    private double latitude ;
    private String name;

    private final static String TAG = "Map Class";

    // search location22 in search bar

    private  EditText searchKey;
    private ImageButton searchBtn;

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_map_infrastructure);

        Intent intent = getIntent();
        String  longitudes =  intent.getStringExtra("longitude");
        String  latitudes =  intent.getStringExtra("latitude");
        name = intent.getStringExtra("name");

        longitude = Double.valueOf(longitudes);
        latitude = Double.parseDouble(latitudes);


        SupportMapFragment mapFragment = (SupportMapFragment) getSupportFragmentManager().findFragmentById(R.id.map);
        mapFragment.getMapAsync(this);

        ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.ACCESS_FINE_LOCATION}, PackageManager.PERMISSION_GRANTED);
        ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.ACCESS_COARSE_LOCATION}, PackageManager.PERMISSION_GRANTED);

    }



    void geoLocate()
    {
        Log.d(TAG,"Geo Locate called");
        List <Address>  list= new ArrayList<>();
        Geocoder geocoder = new Geocoder(MapActivityInfrastructure.this);

        Log.d(TAG,"name found");


        LatLng latLng = new LatLng(longitude,latitude);
        MarkerOptions options = new MarkerOptions();

        // Setting position for the MarkerOptions
        options.position(latLng);

        // Setting title for the MarkerOptions
        options.title(name);

        //           LatLng latLng = new LatLng(address.getLatitude(),address.getLongitude());

            mMap.addMarker(options);
            mMap.moveCamera(CameraUpdateFactory.newLatLngZoom(latLng,15));

    }



    @Override
    public void onMapReady(final GoogleMap googleMap)
    {
        mMap = googleMap;

        locationListener = new LocationListener() {
            @Override
            public void onLocationChanged(Location location) {
                try{
                    latlang = new LatLng(location.getLatitude(), location.getLongitude());

                    mMap.animateCamera(CameraUpdateFactory.newLatLngZoom(latlang, (float) 16.0));

                    mMap.setTrafficEnabled(true);
                    mMap.isBuildingsEnabled();

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
        geoLocate();
    }

}