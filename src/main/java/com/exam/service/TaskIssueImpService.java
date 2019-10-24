package com.exam.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.dao.TaskIssueInterFDao;
import com.exam.model.EmpRating;
import com.exam.model.TaskIssue;

@Service
@Transactional
public class TaskIssueImpService implements TaskIssueInterFService{
	@Autowired
	TaskIssueInterFDao TaskIssueInterF;
	@Override
	public TaskIssue storeTask(TaskIssue task) {
		TaskIssueInterF.storeTask(task);
		return (task);
	}
	@Override
	public List<TaskIssue> getAllTask() {
		
		return TaskIssueInterF.getAllTask();
	}
	@Override
	public List<TaskIssue> getIssueById(int id) {
		
		return TaskIssueInterF.getIssueById(id);
	}
	@Override
	public TaskIssue taskEmpUpdate(TaskIssue task) {
		
		return TaskIssueInterF.taskEmpUpdate(task);
	}
	@Override
	public TaskIssue getIssueByTaskId(String taskId) {
		return TaskIssueInterF.getIssueByTaskId(taskId);
	}
	@Override
	public List<TaskIssue> getAllDoneTask() {
		
		return TaskIssueInterF.getAllDoneTask();
	}
	@Override
	public EmpRating storePerformanceRating(EmpRating rating) {
		
		return TaskIssueInterF.storePerformanceRating(rating);
	}
	@Override
	public TaskIssue getIssueByIdForEdit(String id) {
		
		return TaskIssueInterF.getIssueByIdForEdit(id);
	}
	@Override
	public boolean deleteTask(String id) {
		
		return TaskIssueInterF.deleteTask(id);
	}

}
