package com.exam.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.exam.model.TaskIssue;
import com.exam.service.TaskIssueInterFService;
@Controller
@RequestMapping(value = "/task")
public class TaskStatusController {
	@Autowired
	TaskIssueInterFService taskIssueInterFService;
	@GetMapping(value = "/status")
	public ModelAndView getAppraisalPage() {
		Map<String, Object> task = new HashMap<>();		
		List<TaskIssue> taskLsit = taskIssueInterFService.getAllDoneTask();
		task.put("taskEntity", taskLsit);
		return new ModelAndView("taskStatus",task);		
	}
}
