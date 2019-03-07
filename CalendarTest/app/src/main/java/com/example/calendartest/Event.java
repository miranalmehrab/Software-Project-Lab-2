package com.example.calendartest;

public class Event {

    String date;
    String eventName;

    public Event(String date, String eventName) {
        this.date = date;
        this.eventName = eventName;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getEventName() {
        return eventName;
    }

    public void setEventName(String eventName) {
        this.eventName = eventName;
    }
}
