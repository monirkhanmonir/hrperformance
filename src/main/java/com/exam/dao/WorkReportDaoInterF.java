package com.exam.dao;

import java.util.List;

import com.exam.model.WorkReport;

public interface WorkReportDaoInterF {
	public void storeWorkReport(WorkReport report);
	public List<WorkReport> getAllApplyRepo();
	public WorkReport getWorkReportByID(int id);
	public void updateRepoStatus(WorkReport workReport);
}
