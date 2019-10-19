package com.exam.dao;

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
	
}
