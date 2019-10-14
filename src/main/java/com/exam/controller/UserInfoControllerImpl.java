package com.exam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.exam.model.UserInfo;
import com.exam.service.UserInfoService;
@RestController
@RequestMapping(value = "/api/user")
public class UserInfoControllerImpl implements UserInfoController{
	
	@Autowired
	UserInfoService userInfoService;
	
	@PostMapping(value = "/save")
	@Override
	public UserInfo save(UserInfo entity, BindingResult bindingResult) {
		
		if(!bindingResult.hasErrors()) {
			return userInfoService.save(entity);
		}
		
		return userInfoService.save(entity);
	}

	@Override
	public UserInfo update(UserInfo entity, BindingResult bindingResult) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String delete(long id) {
		// TODO Auto-generated method stub
		return null;
	}
	@GetMapping("/one/{id}")
	@Override
	public UserInfo getById(@PathVariable long id) {
		return  userInfoService.getById(id);
	}

	@Override
	public List<UserInfo> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
