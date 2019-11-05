package com.exam.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class WorkReport {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int id;
	public int empId;
	public String empName;
	public String jobTitle;
	public String repoDuration;
	public String reopDate;
	public  String workReport;
	public String repoStatus;
	
	public String getRepoStatus() {
		return repoStatus;
	}
	public void setRepoStatus(String repoStatus) {
		this.repoStatus = repoStatus;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getJobTitle() {
		return jobTitle;
	}
	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	public String getRepoDuration() {
		return repoDuration;
	}
	public void setRepoDuration(String repoDuration) {
		this.repoDuration = repoDuration;
	}
	
	public String getWorkReport() {
		return workReport;
	}
	public void setWorkReport(String workReport) {
		this.workReport = workReport;
	}
	public String getReopDate() {
		return reopDate;
	}
	public void setReopDate(String reopDate) {
		this.reopDate = reopDate;
	}
	@Override
	public String toString() {
		return "WorkReport [id=" + id + ", empId=" + empId + ", empName=" + empName + ", jobTitle=" + jobTitle
				+ ", repoDuration=" + repoDuration + ", reopDate=" + reopDate + ", workReport=" + workReport + "]";
	}

	
}
