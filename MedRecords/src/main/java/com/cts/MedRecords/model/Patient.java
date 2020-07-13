package com.cts.MedRecords.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;

@Entity
@Table(name = "patient")
public class Patient {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	@Pattern(regexp="^[a-zA-Z ]*",message="Include only Alphabets.")
	
	private String firstname;
	@Pattern(regexp="^[a-zA-Z ]*",message="Include only Alphabets.")
	private String lastname;
	
	private String gender;
	@Pattern(regexp="^[a-zA-Z ]*",message="Include only Alphabets.")
	private String profession;
	/*private Date dob;
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}*/
	public long getId() {
		return id;
	}
	public String getFirstname() {
		return firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public String getGender() {
		return gender;
	}
	public String getProfession() {
		return profession;
	}
	public void setId(long id) {
		this.id = id;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	
	public Patient( ) {}
	public Patient(String firstname,String lastname,String gender,String profession) {
		this.firstname=firstname;
		this.lastname=lastname;
		this.gender=gender;
		this.profession=profession;
	}



}
