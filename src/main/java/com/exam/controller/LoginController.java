package com.exam.controller;


import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.exam.model.UserInfo;
import com.exam.service.UserInfoService;

@RestController
public class LoginController {
	@Autowired
	PasswordEncoder passwordEncoder;
	@Autowired
	UserInfoService userInfoService;

	@PostMapping("/register")
	public UserInfo register(@RequestBody @Valid UserInfo userInfo, BindingResult results) {

		if (!results.hasErrors()) {
			userInfo.setPassword(passwordEncoder.encode(userInfo.getPassword()));
			return userInfoService.save(userInfo);
		}
		return null;

	}

	@GetMapping(value = "/login")
	public ModelAndView getLoginPage() {
		return new ModelAndView("login");
	}

	@GetMapping(value = "/login-success")
	public ModelAndView getSuccessPage() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String currentPrincipalName = authentication.getName();
		List<GrantedAuthority> roles = (List<GrantedAuthority>) authentication.getAuthorities();
		if(roles.get(0).getAuthority().equalsIgnoreCase("ADMIN")) {
			return new ModelAndView("home");
		}else {
			return new ModelAndView("login");
		}
			
		
	}
	
//	@GetMapping(value = "/lohout")
//	public ModelAndView getLogout() {
//		
//		return
//	}
	

//	@GetMapping("/")
//	public String Home() {
//		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//
//		if (!(auth instanceof AnonymousAuthenticationToken)) {
//			String currentUserName = auth.getName();			
//			return currentUserName;
//		}
//		return null;
//	}

}
