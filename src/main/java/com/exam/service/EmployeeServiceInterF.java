package com.exam.service;

import java.util.List;

import com.exam.model.Employee;

public interface EmployeeServiceInterF {
	public void storeEmployee(Employee emp);
	public List<Employee> getAll();
	public Employee getById(int id);
}
