package com.example.ohno;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

import java.util.List;

public class CalendarEventListAdapter extends ArrayAdapter<EventDay> {

    Context context;
    int resource ;
    List <EventDay> eventList;

    public CalendarEventListAdapter(Context context , int resource , List<EventDay> eventList){
        super(context , resource , eventList);

        this.context = context;
        this.resource = resource;
        this.eventList = eventList;
    }

    private class MyviewHolder{

        TextView eventName;
        TextView description;

        public MyviewHolder(View v) {
            this.eventName = (TextView) v.findViewById(R.id.eventName);
            this.description = (TextView) v.findViewById(R.id.description);
           
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


        EventDay event = eventList.get(position);

        holder.eventName.setText(event.getName());
        holder.description.setText(event.getDescription());

        //return super.getView(position, convertView, parent);
        return  view;
    }
}
