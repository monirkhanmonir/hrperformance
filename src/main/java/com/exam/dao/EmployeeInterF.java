package com.exam.dao;

import java.util.List;

import com.exam.model.Employee;

public interface EmployeeInterF {
	public void storeEmployee(Employee emp);
	public List<Employee> getAll();
	public Employee getById(int id);
	public List<Employee> getByUser(String user);
	
}
