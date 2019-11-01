package com.exam.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.dao.EmployeeInterF;
import com.exam.dao.UserInfoDaoImpl;
import com.exam.model.Employee;
@Service
@Transactional
public class EmployeeSerImp implements EmployeeServiceInterF{
	@Autowired
	EmployeeInterF employeeInterF;
	UserInfoDaoImpl userInfoDaoImpl;
	@Override
	public void storeEmployee(Employee emp) {
		employeeInterF.storeEmployee(emp);
		
	}

	@Override
	public List<Employee> getAll() {
		
		return employeeInterF.getAll();
	}

	@Override
	public Employee getById(int id) {
		
		return employeeInterF.getById(id);
	}

	@Override
	public List<Employee> getByUser(String user) {
		
		return employeeInterF.getByUser(user);
	}
	
	
}
