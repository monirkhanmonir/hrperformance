package com.exam.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.exam.model.Employee;
import com.exam.model.UserInfo;
import com.exam.service.EmployeeServiceInterF;
import com.exam.service.UserInfoService;

@Controller
@RequestMapping("/employee")
public class employeeController {

	@Autowired
	EmployeeServiceInterF employeeServiceInterF;
	@Autowired
	UserInfoService userInfoService;
	@Autowired
	PasswordEncoder passwordEncoder;

//	@GetMapping("/showAllEmployee")
//	public ModelAndView showAllEmployee() {
//		return new ModelAndView("showAllEmployee");
//	}

	@PostMapping(value = "/employeeRegister")
	public ModelAndView employeeRegister(HttpServletRequest req) {
		Map<String, Object> model = new HashMap<>();

		Employee emp = new Employee();
		UserInfo user = new UserInfo();
		emp.setEmpName(req.getParameter("empName"));
		emp.setEmpEmail(req.getParameter("empEmail"));
		emp.setGender(req.getParameter("gender"));
		emp.setJobTitle(req.getParameter("jobTitle"));
		emp.setBirthDate(req.getParameter("birthDate"));
		emp.setJoinDate(req.getParameter("joinDate"));
		emp.setPassword(req.getParameter("password"));
		emp.setRepassword(req.getParameter("repassword"));
		emp.setAddress(req.getParameter("address"));
		emp.setUser(req.getParameter("username"));
		
		user.setEmail(req.getParameter("empEmail"));
		user.setFirstName(req.getParameter("empName"));
		user.setPassword(passwordEncoder.encode(req.getParameter("password")));
		user.setRole(req.getParameter("role"));
		user.setUsername(req.getParameter("username"));
		employeeServiceInterF.storeEmployee(emp);
		userInfoService.save(user);

		return new ModelAndView("redirect:/employee/showAllEmployee");
	}

	@GetMapping("/showAllEmployee")
	public ModelAndView showAll(Map<String, Object> map) {
		map.put("employeeList", employeeServiceInterF.getAll());

		return new ModelAndView("/showAllEmployee", map);
	}

	@RequestMapping(value = "/editemp/{id}")
	public ModelAndView showedit(@PathVariable("id") int id, Map<String, Object > map) {
		map.put("employeeEdit", employeeServiceInterF.getById(id));
		System.out.println(id);
		return new ModelAndView("/editemployee",map);
	}
	
	@RequestMapping(value = "/editemppage")
	public ModelAndView showeditpage() {	
		return new ModelAndView("/editemployee");
	}
	
	@RequestMapping(value = "/employeeHome")
	public ModelAndView getEmployeeHome() {
		return new ModelAndView("employeeHome");
	}
	
	
	@RequestMapping(value = "/empreportEditor")
	public ModelAndView getEmpReprtEditor() {
		return new ModelAndView("reportEditor");
	}
	
	
	@RequestMapping(value = "/delete/{id}")
	public ModelAndView employeeEdit(@PathVariable("id")int id) {
		employeeServiceInterF.empDelete(id);
		return new ModelAndView("redirect:/employee/showAllEmployee");
	}
	
}
