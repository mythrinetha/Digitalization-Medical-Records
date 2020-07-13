package com.cts.MedRecords.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cts.MedRecords.model.Patient;
import com.cts.MedRecords.model.Record;
import com.cts.MedRecords.service.IntfPatientService;
import com.cts.MedRecords.service.IntfRecordService;

@Controller
public class AppController {
	@Autowired
	private IntfRecordService recordService;
	@Autowired
	private IntfPatientService patientService;
	

	/*
	 * @RequestMapping(value="/welcome") public String welcome() { return "welcome";
	 * }
	 *
	 */
	
	@InitBinder
    public void initBinder(WebDataBinder binder) {
        // Date - dd/MM/yyyy
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
    }
	
	@RequestMapping(value = "/patientDetails", method = RequestMethod.GET)
	public String showPatient(ModelMap model) {

		model.put("patient", patientService.getPatient());
		return "patientDetails";
	}
	
	
	@RequestMapping(value = "/listOfRecords", method = RequestMethod.GET)
	public String showRecord(ModelMap model) {

		model.put("records", recordService.getRecords());
		return "listOfRecords";
	}

	@RequestMapping(value = "/addRecords", method = RequestMethod.GET)
	public String showAddRecordPage(ModelMap model) {
		model.addAttribute("record", new Record());
		return "addRecords";
	}

	@RequestMapping(value = "/addRecords", method = RequestMethod.POST)
	public String addRecord(ModelMap model, Record record) {

		recordService.saveRecord(record);
		return "redirect:/listOfRecords";
	}

	@RequestMapping(value = "/deleteRecord", method = RequestMethod.GET)
	public String deleteRecord(@RequestParam long id) {
		recordService.deleteRecord(id);
		return "redirect:/listOfRecords";
	}

	@RequestMapping(value = "/updateRecord", method = RequestMethod.GET)
	public String showUpdateRecordPage(@RequestParam long id, ModelMap model) {
		Record record = recordService.getRecordById(id).get();
		model.put("record", record);
		return "addRecords";
	}

	@RequestMapping(value = "/updateRecord", method = RequestMethod.POST)
	public String updateRecord(ModelMap model, Record record) {
		recordService.updateRecord(record);
		return "redirect:/listOfRecords";
	}
	
	
	@RequestMapping(value = "/updatePatient", method = RequestMethod.GET)
	public String showUpdatePatientPage(@RequestParam long id, ModelMap model) {
		Patient patient = patientService.getPatientById(id).get();
		model.put("patient", patient);
		return "updatePatient";
	}

	@RequestMapping(value = "/updatePatient", method = RequestMethod.POST)
	public String updatePatient(ModelMap model, Patient patient) {
		patientService.updatePatient(patient);
		return "redirect:/patientDetails";
	}
	
	
	@RequestMapping(value = "/addPatient", method = RequestMethod.GET)
	public String showAddPatientPage(ModelMap model) {
		model.addAttribute("patient", new Patient());
		return "updatePatient";
	}

	@RequestMapping(value = "/addPatient", method = RequestMethod.POST)
	public String addPatient(ModelMap model, Patient patient) {

		patientService.savePatient(patient);
		return "redirect:/patientDetails";
	}
	

}
