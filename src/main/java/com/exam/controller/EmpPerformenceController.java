package com.exam.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.exam.model.EmpRating;
import com.exam.model.TaskIssue;
import com.exam.service.TaskIssueInterFService;

@Controller
@RequestMapping(value = "/performance")
public class EmpPerformenceController {
	@Autowired
	TaskIssueInterFService taskIssueInterFService;
	@GetMapping(value = "/ratingRecord")
	public ModelAndView getRetirementPage() {
		Map<String, Object> task = new HashMap<>();		
		List<TaskIssue> taskLsit = taskIssueInterFService.getAllDoneTask();
		task.put("taskEntity", taskLsit);
		return new ModelAndView("empPerformanceReport",task);
	
	}
	
	@PostMapping(value = "/storeRating")
	public ModelAndView storeRating(HttpServletRequest req, Map<String, Object> map) {
		EmpRating rating  = new EmpRating();
		rating.setTaskId(req.getParameter("taskId"));
		rating.setJobKnowledge(req.getParameter("jobKnowledge"));
		rating.setJobKnowledgeCmnt(req.getParameter("jobKnowledgeCmnt"));
		rating.setWorkquality(req.getParameter("workquality"));
		rating.setWorkqualityCmnt(req.getParameter("workqualityCmnt"));
		rating.setAttendance(req.getParameter("attendance"));
		rating.setAttendanceCmnt(req.getParameter("attendanceCmnt"));
		rating.setProductivity(req.getParameter("productivity"));
		rating.setProductivityCmnt(req.getParameter("productivityCmnt"));
		rating.setCommunicationSkills(req.getParameter("communicationSkills"));
		rating.setCommunicationSkillsCmnt(req.getParameter("communicationSkillsCmnt"));
		rating.setDependability(req.getParameter("dependability"));
		rating.setDependabilityCmnt(req.getParameter("dependabilityCmnt"));
		rating.setOverallRating(req.getParameter("overallRating"));
		rating.setAdditionalCmnt(req.getParameter("additionalCmnt"));
		
		taskIssueInterFService.storePerformanceRating(rating);
		
		System.out.println("storeRating accept");
		return new ModelAndView("redirect:/performance/ratingRecord");
	}
	
	
	
	

}
