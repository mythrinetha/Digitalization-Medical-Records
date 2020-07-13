package com.cts.MedRecords.service;

import java.util.List;
import java.util.Optional;

import com.cts.MedRecords.model.Record;

public interface IntfRecordService {

	List<Record> getRecords();

	Optional<Record> getRecordById(long id);

	void updateRecord(Record record);

	void addRecord(String doctorname, String diseasename, String prescription);

	void deleteRecord(long id);

	void saveRecord(Record record);

}
