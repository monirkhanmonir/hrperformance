package com.exam.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Files;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.exam.jasperreports.SimpleReportExporter;
import com.exam.jasperreports.SimpleReportFiller;
import com.exam.model.EmpRating;
import com.exam.model.Employee;
import com.exam.model.WorkReport;
import com.exam.service.EmployeeServiceInterF;
import com.exam.service.PerformanceRatingServiceInterF;
import com.exam.service.TaskIssueInterFService;
import com.exam.service.WorkRepoServiceInterF;

@Controller
@RequestMapping(value = "/performance")
public class EmpPerformenceController {
	@Autowired
	TaskIssueInterFService taskIssueInterFService;
	@Autowired
	EmployeeServiceInterF employeeServiceInterF;
	@Autowired
	PerformanceRatingServiceInterF performanceRatingServiceInterF;
	@Autowired
	SimpleReportFiller simpleReportFiller;
	@Autowired
	WorkRepoServiceInterF workRepoServiceInterF;
	
	

	@GetMapping(value = "/ratingRecord")
	public ModelAndView getRetirementPage(Map<String, Object> map) {
				
		//map.put("employeeList", employeeServiceInterF.getAll());
		
		
		map.put("workRepo", workRepoServiceInterF.getAllApplyRepo());
		
		return new ModelAndView("empPerformanceReport",map);
	
	}
	
	@PostMapping(value = "/storeRating")
	public ModelAndView storeRating(HttpServletRequest req, Map<String, Object> map) {
		EmpRating rating  = new EmpRating();
		rating.setEmpId(Integer.parseInt(req.getParameter("empId")));
		rating.setJobKnowledge(req.getParameter("jobKnowledge"));
		rating.setJobKnowledgeCmnt(req.getParameter("jobKnowledgeCmnt"));
		rating.setWorkquality(req.getParameter("workquality"));
		rating.setWorkqualityCmnt(req.getParameter("workqualityCmnt"));
		rating.setAttendance(req.getParameter("attendance"));
		rating.setAttendanceCmnt(req.getParameter("attendanceCmnt"));
		rating.setProductivity(req.getParameter("productivity"));
		rating.setProductivityCmnt(req.getParameter("productivityCmnt"));
		rating.setCommunicationSkills(req.getParameter("communicationSkills"));
		rating.setCommunicationSkillsCmnt(req.getParameter("communicationSkillsCmnt"));
		rating.setDependability(req.getParameter("dependability"));
		rating.setDependabilityCmnt(req.getParameter("dependabilityCmnt"));
		rating.setOverallRating(req.getParameter("overallRating"));
		rating.setAdditionalCmnt(req.getParameter("additionalCmnt"));
		rating.setRatingDate(req.getParameter("ratingDate"));		
		taskIssueInterFService.storePerformanceRating(rating);
		return new ModelAndView("redirect:/performance/ratingRecord");
	}
	
	
	@GetMapping(value = "/reportpage")
	public ModelAndView getReportPage() {
		
		return new ModelAndView("empReport");
	}
	
	
	@GetMapping(value = "/empRating/{id}")
	public ModelAndView getRatingById(@PathVariable ("id") int id, Map<String, Object> map) {

		return new ModelAndView("EmpShowRating");
	}
	
	
	
	
	
	@Autowired
	private ServletContext servletContext;

	@GetMapping("/pdf")
	public String pdf(HttpServletResponse response) {
		response.setContentType("application/pdf");
		try {
			SimpleReportExporter simpleExporter = new SimpleReportExporter();

			simpleReportFiller.setReportFileName("Performance.jrxml");
			simpleReportFiller.compileReport();

			Map<String, Object> parameters = new HashMap<>();

			simpleReportFiller.setParameters(parameters);
			simpleReportFiller.fillReport();
			simpleExporter.setJasperPrint(simpleReportFiller.getJasperPrint());

			simpleExporter.exportToPdf("Performance.pdf", "olonsoft");

			File file = new File("src/main/resources/reports/Performance.pdf");
			response.setHeader("Content-Type", servletContext.getMimeType(file.getName()));
			response.setHeader("Content-Length", String.valueOf(file.length()));
			response.setHeader("Content-Disposition", "inline; filename=\"Performance.pdf\"");
			Files.copy(file.toPath(), response.getOutputStream());
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	
	


	@PostMapping("byId")
	public String getByIdpdf(HttpServletResponse response, HttpServletRequest req) {
	int id= 	Integer.parseInt(req.getParameter("id"));
		
		response.setContentType("application/pdf");
		try {
			SimpleReportExporter simpleExporter = new SimpleReportExporter();

			simpleReportFiller.setReportFileName("employeePerformance.jrxml");
			simpleReportFiller.compileReport();

			Map<String, Object> parameters = new HashMap<>();
			parameters.put("id", id);

			simpleReportFiller.setParameters(parameters);
			simpleReportFiller.fillReport();
			simpleExporter.setJasperPrint(simpleReportFiller.getJasperPrint());

			simpleExporter.exportToPdf("employeePerformance.pdf", "olonsoft");

			File file = new File("src/main/resources/reports/employeePerformance.pdf");
			response.setHeader("Content-Type", servletContext.getMimeType(file.getName()));
			response.setHeader("Content-Length", String.valueOf(file.length()));
			response.setHeader("Content-Disposition", "inline; filename=\"employeePerformance.pdf\"");
			Files.copy(file.toPath(), response.getOutputStream());
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	
	
	
	
	
	
	
	@PostMapping(value = "/workReport/{user}")
	public ModelAndView getEmpReport(@PathVariable("user") String user,HttpServletRequest req) {
		List<Employee> empList = employeeServiceInterF.getByUser(user);
		WorkReport wr = new WorkReport();
		wr.setEmpId(empList.get(0).getId());
		wr.setEmpName(empList.get(0).getEmpName());
		wr.setJobTitle(empList.get(0).getJobTitle());
		wr.setReopDate(req.getParameter("reopDate"));
		wr.setRepoDuration(req.getParameter("repoDuration"));
		wr.setWorkReport(req.getParameter("workReport"));
		wr.setRepoStatus("applay");
		workRepoServiceInterF.storeWorkReport(wr);
		
		
		
		
		return new ModelAndView("redirect:/employee/empreportEditor");
	}
	

	

}
