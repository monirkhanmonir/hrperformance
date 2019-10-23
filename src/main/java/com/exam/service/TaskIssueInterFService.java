package com.exam.service;

import java.util.List;

import com.exam.model.EmpRating;
import com.exam.model.TaskIssue;

public interface TaskIssueInterFService {
	public TaskIssue storeTask(TaskIssue task);
	public List<TaskIssue> getAllTask();
	public List<TaskIssue> getIssueById(int id);
	public TaskIssue taskEmpUpdate(TaskIssue task);
	public List<TaskIssue> getAllDoneTask();	
	public TaskIssue getIssueByTaskId(String taskId);
	public EmpRating storePerformanceRating(EmpRating rating);
	public TaskIssue getIssueByIdForEdit(String id);
}
