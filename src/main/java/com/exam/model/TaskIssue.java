package com.exam.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class TaskIssue {
	@Id
	public String taskId;
	public int empId;
	public String taskName;
	public int taskUnit;

	public String assignName;
	public String issueDate;
	public String restrictionDate;
	public String issueStatus;
	public String issuePriority;
	public String ramark;
	public String finishDate;
	
	public String getFinishDate() {
		return finishDate;
	}
	public void setFinishDate(String finishDate) {
		this.finishDate = finishDate;
	}
	public String getTaskId() {
		return taskId;
	}
	public void setTaskId(String taskId) {
		this.taskId = taskId;
	}
	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getTaskName() {
		return taskName;
	}
	public void setTaskName(String taskName) {
		this.taskName = taskName;
	}
	public String getAssignName() {
		return assignName;
	}
	public void setAssignName(String assignName) {
		this.assignName = assignName;
	}
	public String getIssueDate() {
		return issueDate;
	}
	public void setIssueDate(String issueDate) {
		this.issueDate = issueDate;
	}
	public String getRestrictionDate() {
		return restrictionDate;
	}
	public void setRestrictionDate(String restrictionDate) {
		this.restrictionDate = restrictionDate;
	}
	public String getIssueStatus() {
		return issueStatus;
	}
	public void setIssueStatus(String issueStatus) {
		this.issueStatus = issueStatus;
	}
	public String getIssuePriority() {
		return issuePriority;
	}
	public void setIssuePriority(String issuePriority) {
		this.issuePriority = issuePriority;
	}
	public String getRamark() {
		return ramark;
	}
	public void setRamark(String ramark) {
		this.ramark = ramark;
	}
	
	public int getTaskUnit() {
		return taskUnit;
	}
	public void setTaskUnit(int taskUnit) {
		this.taskUnit = taskUnit;
	}
	@Override
	public String toString() {
		return "TaskIssue [taskId=" + taskId + ", empId=" + empId + ", taskName=" + taskName + ", taskUnit=" + taskUnit
				+ ", assignName=" + assignName + ", issueDate=" + issueDate + ", restrictionDate=" + restrictionDate
				+ ", issueStatus=" + issueStatus + ", issuePriority=" + issuePriority + ", ramark=" + ramark
				+ ", finishDate=" + finishDate + "]";
	}


	
	
}
