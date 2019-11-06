package com.exam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/payment")
public class PaymentController {

	@RequestMapping(value = "")
	public ModelAndView getPaypentPage(){
		return new ModelAndView("payment");
	}
	
	
	
	
	
}
