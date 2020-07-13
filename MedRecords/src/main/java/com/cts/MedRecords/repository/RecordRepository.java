package com.cts.MedRecords.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cts.MedRecords.model.Record;

public interface RecordRepository extends JpaRepository<Record, Long> {
	// List<Record> findRecords();

}
