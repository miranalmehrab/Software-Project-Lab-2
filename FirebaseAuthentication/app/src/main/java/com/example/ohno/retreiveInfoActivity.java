package com.example.ohno;

import android.content.ContentResolver;
import android.content.Intent;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.webkit.MimeTypeMap;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.storage.FirebaseStorage;
import com.google.firebase.storage.OnProgressListener;
import com.google.firebase.storage.StorageReference;
import com.google.firebase.storage.StorageTask;
import com.google.firebase.storage.UploadTask;
import com.squareup.picasso.Picasso;

public class retreiveInfoActivity extends AppCompatActivity {

    private  static  final int PICK_IMAGE_REQUEST = 1;
    EditText departmentName;
    EditText description;
    TextView descriptionTitle;
    Button upload;
    Button imageChoser;
    private ProgressBar mProgressBar;
    private ImageView departmentImage;
    private Uri mImageUri;
    DatabaseReference databaseDepartment;
    FirebaseDatabase mFirebaseDatabase;
    StorageReference mStorageReference;
    private StorageTask mUploadTask;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_info);

        FirebaseDatabase database = FirebaseDatabase.getInstance();

        departmentName  = (EditText) findViewById(R.id.departmentName);
        description = (EditText) findViewById(R.id.Description);
        descriptionTitle = (TextView) findViewById(R.id.DescriptionTitle);
        upload = (Button) findViewById(R.id.Upload);
        departmentImage = (ImageView) findViewById(R.id.departmentImage);
        imageChoser = (Button) findViewById(R.id.chosebutton);

        mStorageReference = FirebaseStorage.getInstance().getReference("Departments");


    }

}
