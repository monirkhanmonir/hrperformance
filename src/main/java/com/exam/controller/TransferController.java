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

import com.exam.model.TaskIssue;
import com.exam.service.TaskIssueInterFService;

@Controller
@RequestMapping("/employee")
public class TransferController {
	@Autowired
	TaskIssueInterFService taskIssueInterFService;

	@GetMapping("/transfer")
	public ModelAndView getTransferPage() {
		return new ModelAndView("transfer");
	}

	@PostMapping(value = "/taskissue")
	public ModelAndView storeTastIssue(HttpServletRequest req) {

		TaskIssue task = new TaskIssue();
		task.setTaskId(req.getParameter("taskId"));
		task.setEmpId(Integer.parseInt(req.getParameter("empId")));
		task.setTaskName(req.getParameter("taskName"));
		task.setAssignName(req.getParameter("assignName"));
		task.setIssueDate(req.getParameter("issueDate"));
		task.setRestrictionDate(req.getParameter("restrictionDate"));
		task.setIssueStatus(req.getParameter("issueStatus"));
		task.setIssuePriority(req.getParameter("issuePriority"));
		task.setRamark(req.getParameter("ramark"));
		task.setTaskUnit(Integer.parseInt(req.getParameter("taskUnit")));

		task = taskIssueInterFService.storeTask(task);
		
		if(task!=null) {
			return new ModelAndView("/transfer");
		}else {
			return new ModelAndView("/transfer");
		}

	}
	
	@GetMapping(value = "/showAllTask")
	public ModelAndView showAllTask() {
		Map<String, Object> task = new HashMap<>();		
		List<TaskIssue> taskLsit = taskIssueInterFService.getAllTask();
		task.put("taskEntity", taskLsit);
		return new ModelAndView("showAllAdminTask",task);
		
	}
	

}
