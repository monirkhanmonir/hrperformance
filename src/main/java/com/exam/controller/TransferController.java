package com.exam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/employee")
public class TransferController {
	@GetMapping("/transfer")
	public ModelAndView getTransferPage() {
		return new ModelAndView("transfer");
	}
}
