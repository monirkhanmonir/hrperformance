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
		sessionFactory.getCurrentSession().save(emp);
		
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
		System.out.println("ok");
		return  sessionFactory.getCurrentSession().get(Employee.class, id);
	}
	
	
	
	
}
