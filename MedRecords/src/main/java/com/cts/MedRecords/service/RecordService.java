package com.cts.MedRecords.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cts.MedRecords.model.Record;
import com.cts.MedRecords.repository.RecordRepository;

@Service
public class RecordService implements IntfRecordService {

	@Autowired
	private RecordRepository recordRepository;
	/* to retrieve all the records */
	public List<Record> getRecords() {
		return recordRepository.findAll();
	}
	/* to retrieve records based on primary key Id*/
	public Optional<Record> getRecordById(long id) {
		return recordRepository.findById(id);
	}

	@Override
	public void updateRecord(Record record) {
		recordRepository.save(record);
	}

	/* to add new Record into Repository*/
	@Override
	public void addRecord(String doctorname, String diseasename, String prescription) {
		recordRepository.save(new Record(doctorname, diseasename, prescription));

	}
	/* delete the record if the record belongs to that is Id is found*/
	@Override
	public void deleteRecord(long id) {
		Optional<Record> record = recordRepository.findById(id);
		if (record.isPresent()) {
			recordRepository.delete(record.get());
		}
	}
	/* to save a record in repository*/
	@Override
	public void saveRecord(Record record) {
		recordRepository.save(record);

	}

}
