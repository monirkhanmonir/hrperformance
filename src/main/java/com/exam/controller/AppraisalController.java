package com.exam.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping(value = "/employee")
public class AppraisalController {
	@GetMapping(value = "/appraisal")
	public ModelAndView getAppraisalPage() {
		return new ModelAndView("appraisal");
	}
}
