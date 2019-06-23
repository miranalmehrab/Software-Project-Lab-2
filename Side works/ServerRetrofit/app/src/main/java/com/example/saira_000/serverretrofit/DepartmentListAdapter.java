package com.example.saira_000.serverretrofit;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.squareup.picasso.Picasso;

import java.util.List;

public class DepartmentListAdapter extends ArrayAdapter<Department> {

    Context context;
    int resource ;
    List <Department> departmentList;

    public DepartmentListAdapter(Context context , int resource , List<Department> departmentList){
        super(context , resource , departmentList);

        this.context = context;
        this.resource = resource;
        this.departmentList = departmentList;
    }

    @NonNull
    @Override
    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {

        LayoutInflater inflater = LayoutInflater.from(context);

        View view = inflater.inflate(resource, null);

        TextView departmentNameTextView = (TextView) view.findViewById(R.id.departmentName);
        TextView facultyTextView = (TextView) view.findViewById(R.id.faculty);

        ImageView departmentImageView = (ImageView) view.findViewById(R.id.departmentImage);

        Department department = departmentList.get(position);

        departmentNameTextView.setText(department.getName());
        facultyTextView.setText(department.getFaculty());

       // Picasso.get().load(department.getImageUrl()).into(departmentImageView);
        Glide.with(context).load(department.getImage()).placeholder(R.drawable.ic_launcher_foreground).into(departmentImageView);

        //return super.getView(position, convertView, parent);
        return  view;
    }
}
