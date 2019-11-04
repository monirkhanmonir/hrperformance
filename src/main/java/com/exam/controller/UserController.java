
package com.exam.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.exam.service.EmployeeServiceInterF;

@Controller

@RequestMapping(value = "/user")
public class UserController { 
	@Autowired
	EmployeeServiceInterF employeeServiceInterF;

//	@GetMapping(value = "/profile")
//	public ModelAndView profilePage() {
//
//		return new ModelAndView("profile");
//
//	};	
	
	@GetMapping(value = "/profile/{user}")
	public ModelAndView getUsersProfile(@PathVariable("user") String user, Map<String, Object > map) {
		map.put("users", employeeServiceInterF.getByUser(user));
	System.out.println(employeeServiceInterF.getByUser(user).get(0));	
		return new ModelAndView("profile",map);
	}
	
	@GetMapping(value = "/adminProfile/{user}")
	public ModelAndView getAdminProfile(@PathVariable("user") String user, Map<String, Object > map) {
		map.put("users", employeeServiceInterF.getByUser(user));
	System.out.println(employeeServiceInterF.getByUser(user).get(0));	
		return new ModelAndView("adminProfile",map);
	}
	
	
	
	@GetMapping(value = "/employeeProfile/{user}")
	public ModelAndView getEmployeeProfile(@PathVariable("user") String user, Map<String, Object > map) {
		map.put("users", employeeServiceInterF.getByUser(user));
	System.out.println(employeeServiceInterF.getByUser(user).get(0));	
		return new ModelAndView("employeeProfile",map);
	}
	

}
