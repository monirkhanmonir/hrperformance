package com.exam.controller;

import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.exam.model.TaskIssue;

@RestController(value = "/taskissue")
public class RestReqController {
	@RequestMapping("/onGoingTask")
	public List<TaskIssue> getTaskList(){
		
		System.out.println("ok");
		return null;
	}

}
