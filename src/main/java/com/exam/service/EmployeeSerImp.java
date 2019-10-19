package com.exam.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.dao.EmployeeInterF;
import com.exam.model.Employee;
@Service
@Transactional
public class EmployeeSerImp implements EmployeeServiceInterF{
	@Autowired
	EmployeeInterF employeeInterF;

	@Override
	public void storeEmployee(Employee emp) {
		employeeInterF.storeEmployee(emp);
	}
	
	
}
