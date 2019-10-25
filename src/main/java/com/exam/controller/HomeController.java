package com.exam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	@GetMapping(value = "/")
	public ModelAndView getIndexPage() {
		return new ModelAndView("home");
	}
	
	@GetMapping(value = "/about")
	public ModelAndView getAboutPage() {
		return new ModelAndView("about");
	}
	
	@GetMapping(value = "/contactus")
	public ModelAndView getContactPage() {
		return new ModelAndView("contactus");
	}
	
}
