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

public class HallListAdapter extends ArrayAdapter<Hall> {

    Context context;
    int resource ;
    List <Hall> hallList;

    public HallListAdapter(Context context , int resource , List<Hall> hallList){
        super(context , resource , hallList);

        this.context = context;
        this.resource = resource;
        this.hallList = hallList;
    }

    private class MyviewHolder{

        TextView departmentName;
        TextView faculty;
        ImageView departmentImg;

        public MyviewHolder(View v) {
            this.departmentName = (TextView) v.findViewById(R.id.hallName);
            this.faculty = (TextView) v.findViewById(R.id.establishedYear);;
            this.departmentImg = (ImageView) v.findViewById(R.id.hallImage);;
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


        Hall department = hallList.get(position);

        holder.departmentName.setText(department.getName());
        holder.faculty.setText(department.getEstablishedYear());

       // Picasso.get().load(department.getImageUrl()).into(departmentImageView);
        Glide.with(context).load(department.getImage())
                .placeholder(R.drawable.ic_launcher_foreground).into(holder.departmentImg);

        //return super.getView(position, convertView, parent);
        return  view;
    }
}
