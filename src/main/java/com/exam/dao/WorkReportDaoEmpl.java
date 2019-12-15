package com.exam.dao;





import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.exam.model.WorkReport;

@Repository
public class WorkReportDaoEmpl implements WorkReportDaoInterF{
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public void storeWorkReport(WorkReport report) {
		
		 sessionFactory.getCurrentSession().save(report);
		
	}
	@Override
	public List<WorkReport> getAllApplyRepo() {
		
		return sessionFactory.getCurrentSession().createQuery("FROM WorkReport repo where repo.repoStatus='applay'").list();
	}
	@Override
	public WorkReport getWorkReportByID(int id){
		System.out.println(sessionFactory.getCurrentSession().get(WorkReport.class, id));
		
		return sessionFactory.getCurrentSession().get(WorkReport.class, id);
	}
	@Override
	public void updateRepoStatus(WorkReport workReport) {
	sessionFactory.getCurrentSession().update(workReport);
	}
	

	
//	.createQuery("From TaskIssue task where task.empId=:empId and task.issueStatus='Begin'")
//	.setParameter("empId", empId).list();
}
