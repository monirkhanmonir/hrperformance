package com.exam.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.exam.model.Employee;
import com.exam.model.TaskIssue;

@Repository
public class TaskIssueImpDao implements TaskIssueInterFDao {
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public TaskIssue storeTask(TaskIssue task) {

		try {
			sessionFactory.getCurrentSession().saveOrUpdate(task);
			return (task);
		} catch (Exception e) {
			return null;
		}

	}

	@Override
	public List<TaskIssue> getAllTask() {

		try {
			
			List<TaskIssue> taskList = (List<TaskIssue>) sessionFactory.getCurrentSession().createQuery("From TaskIssue").list();
			
			return taskList;
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public List<TaskIssue> getIssueById(int empId) {
		
		List<TaskIssue> issu = (List<TaskIssue>)  sessionFactory.getCurrentSession().createQuery("From TaskIssue task where task.empId=:empId").setParameter("empId", empId).list();
		
		return issu;
	}

	@Override
	public TaskIssue taskEmpUpdate(TaskIssue task) {
		sessionFactory.getCurrentSession().update("update TaskIssue set issueStatus='"+task.getIssueStatus()+"',finishDate='"+task.getFinishDate()+"'where taskId='"+task.getTaskId()+"'");
		return task;
	}

}
