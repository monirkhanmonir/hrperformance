package com.exam.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class EmpRating {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int ratingId;
	public String taskId;
	public String jobKnowledge;
	public String jobKnowledgeCmnt;
	public String workquality;
	public String workqualityCmnt;
	public String attendance;
	public String attendanceCmnt;
	public String productivity;
	public String productivityCmnt;
	public String communicationSkills;
	public String communicationSkillsCmnt;
	public String dependability;
	public String dependabilityCmnt;
	public String overallRating;
	public String additionalCmnt;
	public String getTaskId() {
		return taskId;
	}
	public void setTaskId(String taskId) {
		this.taskId = taskId;
	}
	public String getJobKnowledge() {
		return jobKnowledge;
	}
	public void setJobKnowledge(String jobKnowledge) {
		this.jobKnowledge = jobKnowledge;
	}
	public String getJobKnowledgeCmnt() {
		return jobKnowledgeCmnt;
	}
	public void setJobKnowledgeCmnt(String jobKnowledgeCmnt) {
		this.jobKnowledgeCmnt = jobKnowledgeCmnt;
	}
	public String getWorkquality() {
		return workquality;
	}
	public void setWorkquality(String workquality) {
		this.workquality = workquality;
	}
	public String getWorkqualityCmnt() {
		return workqualityCmnt;
	}
	public void setWorkqualityCmnt(String workqualityCmnt) {
		this.workqualityCmnt = workqualityCmnt;
	}
	public String getAttendance() {
		return attendance;
	}
	public void setAttendance(String attendance) {
		this.attendance = attendance;
	}
	public String getAttendanceCmnt() {
		return attendanceCmnt;
	}
	public void setAttendanceCmnt(String attendanceCmnt) {
		this.attendanceCmnt = attendanceCmnt;
	}
	public String getProductivity() {
		return productivity;
	}
	public void setProductivity(String productivity) {
		this.productivity = productivity;
	}
	public String getProductivityCmnt() {
		return productivityCmnt;
	}
	public void setProductivityCmnt(String productivityCmnt) {
		this.productivityCmnt = productivityCmnt;
	}
	public String getCommunicationSkills() {
		return communicationSkills;
	}
	public void setCommunicationSkills(String communicationSkills) {
		this.communicationSkills = communicationSkills;
	}
	public String getCommunicationSkillsCmnt() {
		return communicationSkillsCmnt;
	}
	public void setCommunicationSkillsCmnt(String communicationSkillsCmnt) {
		this.communicationSkillsCmnt = communicationSkillsCmnt;
	}
	public String getDependability() {
		return dependability;
	}
	public void setDependability(String dependability) {
		this.dependability = dependability;
	}
	public String getDependabilityCmnt() {
		return dependabilityCmnt;
	}
	public void setDependabilityCmnt(String dependabilityCmnt) {
		this.dependabilityCmnt = dependabilityCmnt;
	}
	public String getOverallRating() {
		return overallRating;
	}
	public void setOverallRating(String overallRating) {
		this.overallRating = overallRating;
	}
	public String getAdditionalCmnt() {
		return additionalCmnt;
	}
	public void setAdditionalCmnt(String additionalCmnt) {
		this.additionalCmnt = additionalCmnt;
	}
	@Override
	public String toString() {
		return "EmpRating [taskId=" + taskId + ", jobKnowledge=" + jobKnowledge + ", jobKnowledgeCmnt="
				+ jobKnowledgeCmnt + ", workquality=" + workquality + ", workqualityCmnt=" + workqualityCmnt
				+ ", attendance=" + attendance + ", attendanceCmnt=" + attendanceCmnt + ", productivity=" + productivity
				+ ", productivityCmnt=" + productivityCmnt + ", communicationSkills=" + communicationSkills
				+ ", communicationSkillsCmnt=" + communicationSkillsCmnt + ", dependability=" + dependability
				+ ", dependabilityCmnt=" + dependabilityCmnt + ", overallRating=" + overallRating + ", additionalCmnt="
				+ additionalCmnt + "]";
	}
	
	
	
}
