package com.exam.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.dao.TaskIssueInterFDao;
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

}
