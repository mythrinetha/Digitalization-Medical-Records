package com.cts.MedRecords.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cts.MedRecords.model.Patient;
import com.cts.MedRecords.model.Record;
import com.cts.MedRecords.repository.PatientRepository;

@Service
public class PatientService implements IntfPatientService{

		@Autowired
		private PatientRepository patientRepository;
		
		public void updatePatient(Patient patient) {
			
			patientRepository.save(patient);
			
		}
		public List<Patient> getPatient() {
			return patientRepository.findAll();
		}

		public Optional<Patient> getPatientById(long id) {
			return patientRepository.findById(id);
		}
	
}
