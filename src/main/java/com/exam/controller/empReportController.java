package com.exam.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping(value = "/employee")
public class empReportController {
	@GetMapping("/report")
	public ModelAndView getEmpReportPage() {
		return new ModelAndView("empReport");
	}
	
	
}
