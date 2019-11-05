package com.exam.service;

import java.util.List;

import com.exam.model.WorkReport;

public interface WorkRepoServiceInterF {
	public void storeWorkReport(WorkReport report);
	public List<WorkReport> getAllApplyRepo();
}
