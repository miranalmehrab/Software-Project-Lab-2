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

public class FacultyListAdapter extends ArrayAdapter<Faculty> {

    Context context;
    int resource ;
    List <Faculty> facultyList;

    public FacultyListAdapter(Context context , int resource , List<Faculty> facultyList){
        super(context , resource , facultyList);

        this.context = context;
        this.resource = resource;
        this.facultyList = facultyList;
    }

    private class MyviewHolder{

        TextView facultyName;
        ImageView facultyImg;

        public MyviewHolder(View v) {
            this.facultyName = (TextView) v.findViewById(R.id.name);
            this.facultyImg = (ImageView) v.findViewById(R.id.image);
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


        Faculty faculty = facultyList.get(position);

        holder.facultyName.setText(faculty.getName());

       // Picasso.get().load(faculty.getImageUrl()).into(facultyImageView);
        Glide.with(context).load(faculty.getImage())
                .placeholder(R.drawable.dulogo).into(holder.facultyImg);

        //return super.getView(position, convertView, parent);
        return  view;
    }
}
