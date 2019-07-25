package com.example.ohno;

public class UserProfile {

    private String uid;
    private String name;
    private String email;
    private String department;
    private String academicYear;

    public UserProfile( String uid , String name , String email , String department , String academicYear ){
        this.uid = uid;
        this.name = name;
        this.email = email;
        this.department = department;
        this.academicYear = academicYear;
    }
   /*
    <ImageView
    android:id="@+id/imageView2"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:alpha=".1"
    android:background="@drawable/curzon_logo"
    android:clickable="false"
    app:layout_constraintBottom_toBottomOf="parent"
    app:layout_constraintEnd_toEndOf="parent"
    app:layout_constraintHorizontal_bias="0.0"
    app:layout_constraintStart_toStartOf="parent"
    app:layout_constraintTop_toTopOf="parent"
    app:layout_constraintVertical_bias="0.0" />
*/
    public String getuid() {
        return uid;
    }
    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getDepartment() {
        return department;
    }

    public String getAcademicYear() {
        return academicYear;
    }
}
