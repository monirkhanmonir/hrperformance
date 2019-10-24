package com.exam.controller;

import java.util.Map;

import org.hibernate.mapping.Value;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.exam.model.Employee;
import com.exam.model.TaskIssue;
import com.exam.service.EmployeeServiceInterF;
import com.exam.service.TaskIssueInterFService;


@RestController
@RequestMapping(value = "/")
public class RestTaskController {
	@Autowired
	TaskIssueInterFService taskIssueInterFService;
	@Autowired
	EmployeeServiceInterF employeeServiceInterF;
	@RequestMapping(value = "showtaskById/{id}")
	public TaskIssue getTest(@PathVariable String id) {
		
		System.out.println(id);
		return taskIssueInterFService.getIssueByTaskId(id);
	}
	
	@RequestMapping(value = "employee/getEmpById/{id}")
	public Employee getEmpById(@PathVariable int id) {
		return  employeeServiceInterF.getById(id);
	}
}
