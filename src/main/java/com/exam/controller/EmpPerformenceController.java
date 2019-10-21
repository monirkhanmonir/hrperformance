package com.exam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/employee")
public class EmpPerformenceController {
	@GetMapping(value = "/empPerformance")
	public ModelAndView getRetirementPage() {
		return new ModelAndView("empPerformanceReport");
	}

}
