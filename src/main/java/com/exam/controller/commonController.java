package com.exam.controller;

import java.util.List;

import org.springframework.validation.BindingResult;

public interface commonController<T>{
	public T save(T entity, BindingResult bindingResult);
	public T update(T entity, BindingResult bindingResult);
	public String delete(long id);
	public T getById(long id);
	public List<T> getAll(); 
}
