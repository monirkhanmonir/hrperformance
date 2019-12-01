package com.exam.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.exam.model.Employee;

@Repository
public class EmployeeDaoImp implements EmployeeInterF{
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public void storeEmployee(Employee emp) {
		sessionFactory.getCurrentSession().saveOrUpdate(emp);
		
	}
	@Override
	public List<Employee> getAll() {
		try {
			return	sessionFactory.getCurrentSession().createQuery("FROM Employee").list();
			
		} catch (HibernateException e) {
			return null;
		}	
	}
	@Override
	public Employee getById(int id) {
		
		return  sessionFactory.getCurrentSession().get(Employee.class, id);
	}
	@Override
	public List<Employee> getByUser(String user) {
		List emp = sessionFactory.getCurrentSession().createQuery("From Employee emp where emp.user=:user").setParameter("user",user).list();
		
//		.createQuery("From TaskIssue task where task.empId=:empId and task.issueStatus='Begin'")
//		.setParameter("empId", empId).list();
		return emp;
	}
	@Override
	public void empDelete(int id) {
		
	Employee emp = 	sessionFactory.getCurrentSession().get(Employee.class, id);
	sessionFactory.getCurrentSession().delete(emp);
	}
	
	
	@Override
	public Employee getUserLogin(String user, String psd) {	Employee employee=	(Employee)sessionFactory.getCurrentSession().createQuery("From Employee emp where emp.user='"+user+"' and emp.password='"+psd+"'").uniqueResult();
		if(employee==null) {
			return null;
		}else {
			return employee;
		}	}
	
	
	
}
