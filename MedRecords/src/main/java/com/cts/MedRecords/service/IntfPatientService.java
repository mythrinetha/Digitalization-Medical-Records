package com.cts.MedRecords.service;

import java.util.List;
import java.util.Optional;

import com.cts.MedRecords.model.Patient;
import com.cts.MedRecords.model.Record;


public interface IntfPatientService {

	void updatePatient(Patient patient);
	Optional<Patient> getPatientById(long id);
	List<Patient> getPatient();
}
