package com.example.jspdemo.model;

import javax.persistence.*;

@Entity
@Table(name="ANIME")
public class Anime {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column
    private String name;

    @Column
    private int year;

    @Column 
    private String Address;


    public Anime() {

    }
    


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }



    public Anime(String address) {
        Address = address;
    }



    public String getAddress() {
        return Address;
    }




    public void setAddress(String address) {
        Address = address;
    }
}
