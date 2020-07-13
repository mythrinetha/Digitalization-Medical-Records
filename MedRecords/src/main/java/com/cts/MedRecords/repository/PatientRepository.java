package com.cts.MedRecords.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cts.MedRecords.model.Patient;


public interface PatientRepository extends JpaRepository<Patient, Long>{

}
