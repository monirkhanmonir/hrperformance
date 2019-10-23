package com.exam.dao;

import java.util.List;

import com.exam.model.EmpRating;
import com.exam.model.TaskIssue;



public interface TaskIssueInterFDao {
	public TaskIssue storeTask(TaskIssue task);
	public List<TaskIssue> getAllTask();
	public List<TaskIssue> getAllDoneTask();
	public List<TaskIssue> getIssueById(int id);
	public TaskIssue taskEmpUpdate(TaskIssue task);
	public TaskIssue getIssueByTaskId(String taskId);
	public EmpRating storePerformanceRating(EmpRating rating);
	public TaskIssue getIssueByIdForEdit(String id);
	public boolean deleteTask(String id);
}
