package com.exam.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.mapping.Value;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.exam.model.EmpRating;
import com.exam.model.Employee;
import com.exam.model.TaskIssue;
import com.exam.model.UserInfo;
import com.exam.service.EmployeeServiceInterF;
import com.exam.service.PerformanceRatingServiceInterF;
import com.exam.service.TaskIssueInterFService;
import com.exam.service.UserInfoService;


@RestController
@RequestMapping(value = "/")
public class RestTaskController {
	@Autowired
	TaskIssueInterFService taskIssueInterFService;
	@Autowired
	EmployeeServiceInterF employeeServiceInterF;
	@Autowired
	PerformanceRatingServiceInterF performanceRatingServiceInterF;
	
	@Autowired
	PasswordEncoder passwordEncoder;
	@Autowired
	UserInfoService userInfoService;
	
	@RequestMapping(value = "showtaskById/{id}")
	public TaskIssue getTest(@PathVariable String id) {	
		System.out.println(id);
		return taskIssueInterFService.getIssueByTaskId(id);
	}
	
	@RequestMapping(value = "employee/getEmpById/{id}")
	public Employee getEmpById(@PathVariable int id) {
		return  employeeServiceInterF.getById(id);
	}
	
	
	@RequestMapping(value = "/performance/report")
	public List<EmpRating> getPerformanceReport() {
	List<EmpRating> ratingList  = performanceRatingServiceInterF.getAllRating();
		System.out.println("performance Accept");
		return ratingList;
	}
	
	@RequestMapping(value = "/managerHome")
	public ModelAndView getManagerHome() {
		return new ModelAndView("managerHome");
	}
	
	
	@GetMapping("/allEmployee")
	public List<Employee> showAll() {
	List<Employee> emplist = 	employeeServiceInterF.getAll();

		return emplist;
	}
	
	
	
	
	@PostMapping(value = "/storeEmp")
	public Employee employeeRegister(@RequestBody Employee employee) {
		System.out.println(employee.getEmpName());

		 employeeServiceInterF.storeEmployee(employee);

		return employee;
	}
	
	
	
	
	
	
}
