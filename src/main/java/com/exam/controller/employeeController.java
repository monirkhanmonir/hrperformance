package com.exam.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.exam.model.Employee;
import com.exam.service.EmployeeServiceInterF;

@Controller
@RequestMapping("/employee")
public class employeeController {
	
	@Autowired
	EmployeeServiceInterF employeeServiceInterF;
	
	
	@GetMapping("/showAllEmployee")
	public ModelAndView showAllEmployee() {
		return new ModelAndView("showAllEmployee");
	}
	
	@PostMapping(value = "/employeeRegister")
	public String employeeRegister(HttpServletRequest req) {
		
		Employee  emp =new Employee();
		emp.setEmpName(req.getParameter("empName"));
		emp.setEmpEmail(req.getParameter("empEmail"));
		emp.setGender(req.getParameter("gender"));
		emp.setJobTitle(req.getParameter("jobTitle"));
		emp.setBirthDate(req.getParameter("birthDate"));
		emp.setJoinDate(req.getParameter("joinDate"));
		emp.setPassword(req.getParameter("password"));
		emp.setRepassword(req.getParameter("repassword"));
		emp.setAddress(req.getParameter("address"));
		
		
		employeeServiceInterF.storeEmployee(emp);
		
		return null;
	}
}
