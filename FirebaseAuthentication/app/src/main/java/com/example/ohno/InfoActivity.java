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

public class InfoActivity extends AppCompatActivity {

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

        departmentName  = (EditText) findViewById(R.id.hallName);
        description = (EditText) findViewById(R.id.Description);
        descriptionTitle = (TextView) findViewById(R.id.DescriptionTitle);
        upload = (Button) findViewById(R.id.Upload);
        departmentImage = (ImageView) findViewById(R.id.hallImage);
        imageChoser = (Button) findViewById(R.id.chosebutton);

        mStorageReference = FirebaseStorage.getInstance().getReference("Departments");


        imageChoser.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openFileChoosee();
            }
        });

        upload.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // mFirebaseDatabase = FirebaseDatabase.getInstance();
                // databaseDepartment = mFirebaseDatabase.getReference("Departments");
                // databaseDepartment.setValue("lala");

                if (mUploadTask != null && mUploadTask.isInProgress()) {
                    Toast.makeText(InfoActivity.this, "Upload In Progress", Toast.LENGTH_LONG).show();
                } else {
                    addDepartment();
                }
            }
        });

    }

    private void openFileChoosee() {

        Intent intent = new Intent();
        intent.setType("image/*");
        intent.setAction(intent.ACTION_GET_CONTENT);
        startActivityForResult(intent, PICK_IMAGE_REQUEST);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if (requestCode == PICK_IMAGE_REQUEST && resultCode == RESULT_OK
        && data!=null && data.getData()!=null){
            mImageUri = data.getData();

            Picasso.get().load(mImageUri).into(departmentImage);
        }
    }

    private String getFileExtension(Uri uri){
        ContentResolver cr = getContentResolver();
        MimeTypeMap mime = MimeTypeMap.getSingleton();
        return mime.getExtensionFromMimeType(cr.getType(uri));
    }
    public void addDepartment() {

        String departmnentName2 = departmentName.getText().toString().trim();
        String description2 = description.getText().toString().trim();
        String descriptionTitle2 = descriptionTitle.getText().toString().trim();

        if(mImageUri!= null) {
            StorageReference fileReference = mStorageReference.child(System.currentTimeMillis() + "." + getFileExtension(mImageUri));

            FirebaseDatabase mFirebaseDatabase = FirebaseDatabase.getInstance();
            databaseDepartment = mFirebaseDatabase.getReference("Departments");


            mUploadTask = fileReference.putFile(mImageUri)
                    .addOnSuccessListener(new OnSuccessListener<UploadTask.TaskSnapshot>() {
                        @Override
                        public void onSuccess(UploadTask.TaskSnapshot taskSnapshot) {
                            Toast.makeText(InfoActivity.this, "Upload Successful" , Toast.LENGTH_LONG).show();
                        }
                    })
                    .addOnFailureListener(new OnFailureListener() {
                        @Override
                        public void onFailure(@NonNull Exception e) {
                            Toast.makeText(InfoActivity.this, e.getMessage() , Toast.LENGTH_LONG).show();
                        }
                    })
                    .addOnProgressListener(new OnProgressListener<UploadTask.TaskSnapshot>() {
                        @Override
                        public void onProgress(UploadTask.TaskSnapshot taskSnapshot) {
                            Toast.makeText(InfoActivity.this, "Uploading Image", Toast.LENGTH_LONG).show();
                        }
                    });


            String departmentId = databaseDepartment.push().getKey();

            DepartmentInfo department = new DepartmentInfo(departmentId.toString(), departmnentName2, mImageUri.toString(), description2.toString(), 1922);

            //Saving the Artist
            databaseDepartment.child(departmentId).setValue(department);

            Toast.makeText(this, "Department added", Toast.LENGTH_LONG).show();
        }
        else{
            Toast.makeText(this, "No Image Selected", Toast.LENGTH_LONG).show();
        }

    }
}
