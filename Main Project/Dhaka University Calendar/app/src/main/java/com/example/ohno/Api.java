package com.example.ohno;

import java.util.List;

import retrofit2.Call;
import retrofit2.http.GET;

public interface Api {

    String baseURL = "http://52.29.113.22/miran/DUC/android/";

    @GET("headOfDU.php")
    Call<List<HeadOfDU>> getHeadOfDU();

    @GET("faculty.php")
    Call<List<Faculty>> getFacultyList();

    @GET("duHistory.php")
    Call<List<Faculty>> getDuHistory();

    @GET("Faculty/facultyOfBiologicalSciences.php")
    Call<List<Department>> getBiologicalScienceDepartments();

    @GET("Faculty/facultyOfEngineering.php")
    Call<List<Department>> getEngineeringDepartments();

    @GET("Faculty/facultyOfEarthAndEnvironment.php")
    Call<List<Department>> getEarthAndEnvironmentDepartments();

    @GET("Faculty/facultyOfFineArtsSciences.php")
    Call<List<Department>> getFineArtsDepartments();

    @GET("Faculty/facultyOfPharmacy.php")
    Call<List<Department>> getPharmacyDepartments();

    @GET("Faculty/facultyOfLaw.php")
    Call<List<Department>> getLawDepartments();

    @GET("Faculty/facultyOfSocialSciences.php")
    Call<List<Department>> getSocialScienceDepartments();

    @GET("Faculty/facultyOfBusinessStudies.php")
    Call<List<Department>> getCommerceDepartments();

    @GET("Faculty/facultyOfArts.php")
    Call<List<Department>> getArtsDepartments();

    @GET("Faculty/facultyOfSciences.php")
    Call<List<Department>> getScienceDepartments();

    @GET("institutes.php")
    Call<List<Department>> getInstitues();

    @GET("excitingPlaces.php")
    Call<List<Department>> getExcitingPlaces();

    @GET("calendar.php")
    Call<List<EventDay>> getEventDays();

    @GET("calendarIIT.php")
    Call<List<EventDay>> getIITevents();

    @GET("calendarCSE.php")
    Call<List<EventDay>> getCSEevents();

    @GET("SpecificCalendar/IIT/calendarIITFirst.php")
    Call<List<SpecificCalendarDay>> getIITFirstYearEvents();

    @GET("SpecificCalendar/IIT/calendarIITSecond.php")
    Call<List<SpecificCalendarDay>> getIITSecondYearEvents();

    @GET("SpecificCalendar/IIT/calendarIITThird.php")
    Call<List<SpecificCalendarDay>> getIITThirdYearEvents();

    @GET("SpecificCalendar/IIT/calendarIITFourth.php")
    Call<List<SpecificCalendarDay>> getIITFourthYearEvents();

    @GET("hall.php")
    Call<List<Hall>> getHall();

    @GET("club.php")
    Call<List<Club>> getClub();

    @GET("office.php")
    Call<List<Office>> getOffice();

    @GET("editorialCommittee.php")
    Call<List<CommitteMember>> getEditorialCommittee();

    @GET("implementationCommittee.php")
    Call<List<CommitteMember>> getImplementationCommittee();

    @GET("deanList.php")
    Call<List<DeanMember>> getDeanList();

    @GET("Transport/transportChytali.php")
    Call<List<Transport>> getTransportChytali();

    @GET("Transport/transportBaishakhi.php")
    Call<List<Transport>> getTransportBaishakhi();

    @GET("Transport/transportHemonto.php")
    Call<List<Transport>> getTransportHemonto();

    @GET("Transport/transportKhonika.php")
    Call<List<Transport>> getTransportKhonika();

    @GET("Transport/transportTorongo.php")
    Call<List<Transport>> getTransportTorongo();
}
