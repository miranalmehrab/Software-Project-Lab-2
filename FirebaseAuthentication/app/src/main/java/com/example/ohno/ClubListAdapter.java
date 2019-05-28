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

public class ClubListAdapter extends ArrayAdapter<Club> {

    Context context;
    int resource ;
    List <Club> clubList;

    public ClubListAdapter(Context context , int resource , List<Club> clubList){
        super(context , resource , clubList);

        this.context = context;
        this.resource = resource;
        this.clubList = clubList;
    }

    private class MyviewHolder{

        TextView clubName;
        TextView establishYear;
        ImageView clubImg;

        public MyviewHolder(View v) {
            this.clubName = (TextView) v.findViewById(R.id.name);
            this.establishYear = (TextView) v.findViewById(R.id.establishedYear);;
            this.clubImg = (ImageView) v.findViewById(R.id.image);;
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


        Club club = clubList.get(position);

        holder.clubName.setText(club.getName());
        holder.establishYear.setText(club.getEstablishedYear());

       // Picasso.get().load(club.getImageUrl()).into(clubImageView);
        Glide.with(context).load(club.getImage())
                .placeholder(R.drawable.dulogo).into(holder.clubImg);

        //return super.getView(position, convertView, parent);
        return  view;
    }
}
