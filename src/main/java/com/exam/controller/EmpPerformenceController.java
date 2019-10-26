package com.exam.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.exam.model.EmpRating;
import com.exam.service.EmployeeServiceInterF;
import com.exam.service.PerformanceRatingServiceInterF;
import com.exam.service.TaskIssueInterFService;

@Controller
@RequestMapping(value = "/performance")
public class EmpPerformenceController {
	@Autowired
	TaskIssueInterFService taskIssueInterFService;
	@Autowired
	EmployeeServiceInterF employeeServiceInterF;
	@Autowired
	PerformanceRatingServiceInterF performanceRatingServiceInterF;

	@GetMapping(value = "/ratingRecord")
	public ModelAndView getRetirementPage(Map<String, Object> map) {
				
		map.put("employeeList", employeeServiceInterF.getAll());
		
		return new ModelAndView("empPerformanceReport",map);
	
	}
	
	@PostMapping(value = "/storeRating")
	public ModelAndView storeRating(HttpServletRequest req, Map<String, Object> map) {
		EmpRating rating  = new EmpRating();
		rating.setEmpId(Integer.parseInt(req.getParameter("empId")));
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
		rating.setRatingDate(req.getParameter("ratingDate"));		
		taskIssueInterFService.storePerformanceRating(rating);
		return new ModelAndView("redirect:/performance/ratingRecord");
	}
	
	
	@GetMapping(value = "/reportpage")
	public ModelAndView getReportPage() {
		
		return new ModelAndView("empReport");
	}
	
	
	@GetMapping(value = "/empRating/{id}")
	public ModelAndView getRatingById(@PathVariable ("id") int id, Map<String, Object> map) {

		return new ModelAndView("EmpShowRating");
	}
	
	
	
	

}
