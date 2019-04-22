package com.example.ohno;

import android.content.Context;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.storage.StorageReference;
import com.google.firebase.storage.StorageTask;
import com.squareup.picasso.Picasso;

import java.util.List;

public class ImageAdapter extends RecyclerView.Adapter <ImageAdapter.imageViewHolder>{


    private Context mContext;
    private List<DepartmentInfo> departmentInfoList;

    public ImageAdapter(Context context , List<DepartmentInfo> depapartments){
        this.mContext = context;
        this.departmentInfoList = depapartments;
    }

    @NonNull
    @Override
    public imageViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        View v= LayoutInflater.from(mContext).inflate(R.layout.image_item, viewGroup, false);
        return  new imageViewHolder(v);
    }

    @Override
    public void onBindViewHolder(@NonNull imageViewHolder holder, int i) {
        DepartmentInfo departmentCurrent = departmentInfoList.get(i);
        holder.departmentName.setText(departmentCurrent.getDepartmentName());
        holder.description.setText(departmentCurrent.getDescription());
        Picasso.get().load(departmentCurrent.getmImageUrl())
                .fit()
                .placeholder(R.drawable.dhaka_university_logo)
                .centerCrop()
                .into(holder.departmentImage);
    }

    @Override
    public int getItemCount() {
        return departmentInfoList.size();
    }

    public class imageViewHolder extends RecyclerView.ViewHolder {

        EditText departmentName;
        EditText description;
        TextView descriptionTitle;
        Button upload;
        Button imageChoser;

        private ImageView departmentImage;
        private Uri mImageUri;
        DatabaseReference databaseDepartment;
        FirebaseDatabase mFirebaseDatabase;
        StorageReference mStorageReference;
        private StorageTask mUploadTask;


        public imageViewHolder(@NonNull View itemView) {
            super(itemView);

            departmentName  = itemView.findViewById(R.id.departmentName);
            description = itemView.findViewById(R.id.Description);
            descriptionTitle = itemView.findViewById(R.id.DescriptionTitle);
            upload = itemView.findViewById(R.id.Upload);
            departmentImage = itemView.findViewById(R.id.departmentImage);
            imageChoser = itemView.findViewById(R.id.chosebutton);

        }
    }
}
