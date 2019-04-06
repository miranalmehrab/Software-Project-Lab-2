package com.example.ohno;

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

import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;

import java.io.IOException;
import java.util.List;

public class MapClass extends FragmentActivity implements OnMapReadyCallback{
    private GoogleMap mMap;
    private LocationManager locationManager;
    private static final int REQUEST_LOCATION_PERMISSION = 1;
    Marker marker;
    LocationListener locationListener;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_map);
        SupportMapFragment mapFragment = (SupportMapFragment) getSupportFragmentManager()
                .findFragmentById(R.id.map);
        mapFragment.getMapAsync(this);

        locationManager = (LocationManager) getSystemService(LOCATION_SERVICE);

        //Get permission fine_location and coarse_location
        if (ActivityCompat.checkSelfPermission(this,
                Manifest.permission.ACCESS_FINE_LOCATION)
                != PackageManager.PERMISSION_GRANTED )
        {
            ActivityCompat.requestPermissions(this,new String[] {Manifest.permission.ACCESS_FINE_LOCATION},REQUEST_LOCATION_PERMISSION);


        }

        locationListener = new LocationListener() {
            @Override
            public void onLocationChanged(Location location) {
                double latitude = location.getLatitude();
                double longitude = location.getLongitude();

                Geocoder geocoder = new Geocoder(getApplicationContext());
                try
                {
                    List <Address> addresses = geocoder.getFromLocation(latitude,longitude,1);
                    String str = addresses.get(0).getLocality()+":"+addresses.get(0).getCountryName();
                    LatLng currentPosition= new LatLng(latitude,longitude);
                    if(marker!=null)
                    {
                        marker.remove();
                        marker = mMap.addMarker(new MarkerOptions().position(currentPosition).title(str));
                        mMap.setMaxZoomPreference(20);
                        mMap.moveCamera(CameraUpdateFactory.newLatLngZoom(currentPosition,15));
                    }
                    else
                    {
                        marker = mMap.addMarker(new MarkerOptions().position(currentPosition).title(str));
                        mMap.setMaxZoomPreference(20);
                        mMap.moveCamera(CameraUpdateFactory.newLatLngZoom(currentPosition,15));
                    }
                }catch (IOException e)
                {
                    e.printStackTrace();
                }
            }

            @Override
            public void onStatusChanged(String provider, int status, Bundle extras) {

            }

            @Override
            public void onProviderEnabled(String provider) {

            }

            @Override
            public void onProviderDisabled(String provider) {

            }
        };

        locationManager.requestLocationUpdates(locationManager.NETWORK_PROVIDER,0,0,locationListener);
        locationManager.requestLocationUpdates(locationManager.GPS_PROVIDER,0,0,locationListener);

    }


    @Override
    public void onMapReady(GoogleMap googleMap) {
        mMap = googleMap;

        /*LatLng dhakaUniversity = new LatLng(23.734022, 90.392789);
        mMap.addMarker(new MarkerOptions().position(dhakaUniversity).title("University of Dhaka"));
        mMap.animateCamera(CameraUpdateFactory.newLatLngZoom(dhakaUniversity,15));

        /*LatLng iit = new LatLng(23.729055, 90.398291);
        LatLng cse= new LatLng(23.728818, 90.398948);
        LatLng genetics= new LatLng(23.728818, 90.398948);
        LatLng physics= new LatLng(23.728019, 90.398692);
        LatLng chemistry= new LatLng(23.728388, 90.398555);
        LatLng infs = new LatLng(23.728790, 90.398300);
        LatLng ststistics = new LatLng( 23.728160, 90.398009);
        LatLng energy = new LatLng(23.728170, 90.399730);

        mMap.addMarker(new MarkerOptions().position(iit).title("Institute of Information Technology"));
        mMap.addMarker(new MarkerOptions().position(cse).title("Computer Science and Engineering"));
        mMap.addMarker(new MarkerOptions().position(genetics).title("Department of Genetics"));
        mMap.addMarker(new MarkerOptions().position(physics).title("Department of Physics"));
        mMap.addMarker(new MarkerOptions().position(chemistry).title("Department of chemistry"));
        mMap.addMarker(new MarkerOptions().position(infs).title("Institute of Food & Nutrition"));
        mMap.addMarker(new MarkerOptions().position(ststistics).title("Department of Statistics"));
        mMap.addMarker(new MarkerOptions().position(energy).title("Department of Energy"));
        */
    }

    @Override
    protected void onStop()
    {
      super.onStop();
      locationManager.removeUpdates(locationListener);
    }

}

