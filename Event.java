package com.jfsd.SDPProject.model;

import jakarta.persistence.*;

import java.sql.Blob;
import java.util.Date;

@Entity
@Table(name = "events_table")
public class Event {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id; // Unique ID for the event

    @Column(nullable = false)
    private String name; // Name of the event

    @Column(nullable = false)
    private String description; // Description of the event

    @Column(nullable = false)
    @Temporal(TemporalType.DATE)
    private Date eventDate; // Date of the event

    @Column(nullable = false)
    private String location; // Location of the event

    @Lob
    @Column(nullable = true)
    private Blob image; // Image for the event (optional)

    // Constructors, Getters, and Setters
    public Event() {
    }

    public Event(String name, String description, Date eventDate, String location, Blob image) {
        this.name = name;
        this.description = description;
        this.eventDate = eventDate;
        this.location = location;
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getEventDate() {
        return eventDate;
    }

    public void setEventDate(Date eventDate) {
        this.eventDate = eventDate;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Blob getImage() {
        return image;
    }

    public void setImage(Blob blob) {
        this.image = blob;
    }
}
