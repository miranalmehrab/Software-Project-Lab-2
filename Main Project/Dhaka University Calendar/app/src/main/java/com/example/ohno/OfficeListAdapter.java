package com.example.ohno;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.bumptech.glide.Glide;

import java.util.List;

public class OfficeListAdapter extends ArrayAdapter<Office> {

    Context context;
    int resource ;
    List <Office> officeList;

    public OfficeListAdapter(Context context , int resource , List<Office> officeList){
        super(context , resource , officeList);

        this.context = context;
        this.resource = resource;
        this.officeList = officeList;
    }

    private class MyviewHolder{

        TextView officeName;
        ImageView officeImg;

        public MyviewHolder(View v) {
            this.officeName = (TextView) v.findViewById(R.id.name);
            this.officeImg = (ImageView) v.findViewById(R.id.image);;
        }

    }

    @NonNull
    @Override
    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {

        View view = convertView;
        MyviewHolder holder = null;

        if(view == null){
            LayoutInflater inflater = LayoutInflater.from(context);
            view = inflater.inflate(resource, null);
            holder = new MyviewHolder(view);
            view.setTag(holder);
            Log.d("VIVZ" , "Creating a new row");
        }

        else {
            holder = (MyviewHolder) view.getTag();
            Log.d("VIVZ" , "Reclycing old row");
        }


        Office office = officeList.get(position);

        holder.officeName.setText(office.getName());
       // Picasso.get().load(office.getImageUrl()).into(officeImageView);
        Glide.with(context).load(office.getImage())
                .placeholder(R.drawable.dulogo).into(holder.officeImg);

        //return super.getView(position, convertView, parent);
        return  view;
    }
}
