package com.cts.MedRecords.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "records")
public class Record {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	private String doctorname;
	private String diseasename;
	private String prescription;

	public Record() {
		super();
	}

	public Record(long id, String doctorname, String diseasename, String prescription) {
		super();
		this.id = id;
		this.doctorname = doctorname;
		this.diseasename = diseasename;
		this.prescription = prescription;
	}

	public Record(String doctorname, String diseasename, String prescription) {
		super();

		this.doctorname = doctorname;
		this.diseasename = diseasename;
		this.prescription = prescription;
	}

	public long getId() {
		return id;
	}

	public String getDoctorname() {
		return doctorname;
	}

	public String getDiseasename() {
		return diseasename;
	}

	public String getPrescription() {
		return prescription;
	}

	public void setId(long id) {
		this.id = id;
	}

	public void setDoctorname(String doctorname) {
		this.doctorname = doctorname;
	}

	public void setDiseasename(String diseasename) {
		this.diseasename = diseasename;
	}

	public void setPrescription(String prescription) {
		this.prescription = prescription;
	}

}
