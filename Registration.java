package com.jfsd.SDPProject.model;
import jakarta.persistence.*;
import java.util.Date;

@Entity
public class Registration {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id; // Unique ID for the registration

    @ManyToOne
    @JoinColumn(name = "student_id", nullable = false)
    private Student student; // Reference to the registered student

    @ManyToOne
    @JoinColumn(name = "event_id", nullable = false)
    private Event event; // Reference to the event

    @Temporal(TemporalType.TIMESTAMP)
    @Column(nullable = false, updatable = false)
    private Date registrationDate; // Date of registration

    // Constructors
    public Registration() {
        this.registrationDate = new Date(); // Automatically set to the current date/time
    }

    public Registration(Student student, Event event) {
        this.student = student;
        this.event = event;
        this.registrationDate = new Date();
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public Event getEvent() {
        return event;
    }

    public void setEvent(Event event) {
        this.event = event;
    }

    public Date getRegistrationDate() {
        return registrationDate;
    }

    public void setRegistrationDate(Date registrationDate) {
        this.registrationDate = registrationDate;
    }
}
