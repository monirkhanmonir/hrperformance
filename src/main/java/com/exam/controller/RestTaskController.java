package com.exam.controller;

import org.hibernate.mapping.Value;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.exam.model.TaskIssue;
import com.exam.service.TaskIssueInterFService;


@RestController
@RequestMapping(value = "/")
public class RestTaskController {
	@Autowired
	TaskIssueInterFService taskIssueInterFService;
	@RequestMapping(value = "showtaskById/{id}")
	public TaskIssue getTest(@PathVariable String id) {
		
		System.out.println(id);
		return taskIssueInterFService.getIssueByTaskId(id);
	}
}
