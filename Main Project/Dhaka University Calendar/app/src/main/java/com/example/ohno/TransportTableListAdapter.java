package com.example.ohno;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

import java.util.List;

public class TransportTableListAdapter extends ArrayAdapter<Transport> {

    int vg;
    List<Transport> transportList;
    Context context;

    public TransportTableListAdapter(Context context , int vg , List <Transport> transportList){
        super(context , vg , transportList);
        this.context = context;
        this.vg = vg;
        this.transportList= transportList;
    }

    static class ViewHolder{
        public TextView route;
        public TextView type;
        public TextView time;

    }

    public View getView(int position , View convertView , ViewGroup parent){
        View rowView = convertView;
        if(rowView ==null){
            LayoutInflater inflater =  (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            rowView = inflater.inflate(vg , parent , false);
            ViewHolder holder = new ViewHolder();
            holder.route = (TextView) rowView.findViewById(R.id.route);
            holder.type = (TextView) rowView.findViewById(R.id.type);
            holder.time = (TextView) rowView.findViewById(R.id.txtmembership);

            rowView.setTag(holder);
        }

        ViewHolder holder =(ViewHolder) rowView.getTag();

        holder.route.setText(transportList.get(position).getRoute());
        holder.type.setText(transportList.get(position).getBusType()+" ("
        +transportList.get(position).getRunType()+")");
        holder.time.setText(transportList.get(position).getTime());

        return rowView;
    }

}
