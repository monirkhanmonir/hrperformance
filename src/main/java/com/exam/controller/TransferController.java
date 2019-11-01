package com.exam.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	@GetMapping(value = "/taskissue/{id}")
	public ModelAndView getIssueById(@PathVariable("id") int id, Map<String, Object > map) {
		map.put("emptask",taskIssueInterFService.getIssueById(id) );
		System.out.println("con Ok"+""+ taskIssueInterFService.getIssueById(id) .get(0));
		return new ModelAndView("emptaskshow",map);
	}
	
	@PostMapping("/taskDone")
	public ModelAndView getEmpTaskPage(HttpServletRequest req) {
		String taskId = (req.getParameter("taskId"));
		TaskIssue task = taskIssueInterFService.getIssueByTaskId(taskId);
		if(task == null) {
			return null;
		}
		task.setFinishDate(req.getParameter("finishDate"));
		task.setIssueStatus("Done");
		System.err.println(req.getParameter("taskId"));
		task = taskIssueInterFService.taskEmpUpdate(task);
		if(task!=null) {
			
			return new ModelAndView("redirect:/employee/taskissue/21");
		}else {
			return null;
		}
		
		
	}
	
	
	@GetMapping(value = "/onGoingTask")
	public List<TaskIssue> taskList(){
		
		System.out.println("on going accept");
		return null;
	}
	
	
	@GetMapping(value = "/editTask/{id}")
	public ModelAndView taskEdit(@PathVariable ("id") String id,Map<String, Object> map) {
		map.put("editTask",taskIssueInterFService.getIssueByIdForEdit(id));
		System.out.println(taskIssueInterFService.getIssueByIdForEdit(id).getAssignName());
		return new ModelAndView("/transfer",map);
	}
	
	
	@GetMapping(value = "/deleteTask/{id}")
	public ModelAndView deleteTaskIssue(@PathVariable("id") String id) {
		taskIssueInterFService.deleteTask(id);
		return new ModelAndView("redirect:/employee/showAllTask");
	}	

}
