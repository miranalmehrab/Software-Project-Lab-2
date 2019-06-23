package com.example.androidsimulator;

public class Profile {

       public String applicationId;
       public String password;
       public String  message;
       public String destinationAddresses;

    public Profile(String applicationId, String password, String message, String destinationAddresses) {
        this.applicationId = applicationId;
        this.password = password;
        this.message = message;
        this.destinationAddresses = destinationAddresses;
    }
}
