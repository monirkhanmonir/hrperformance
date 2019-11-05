package com.exam.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.dao.WorkReportDaoInterF;
import com.exam.model.WorkReport;

@Service
@Transactional
public class WorkRepoServiceImpl implements WorkRepoServiceInterF{
	@Autowired
	WorkReportDaoInterF workReportDaoInterF;

	@Override
	public void storeWorkReport(WorkReport report) {
		
		 workReportDaoInterF.storeWorkReport(report);
	}

	@Override
	public List<WorkReport> getAllApplyRepo() {
		
		return workReportDaoInterF.getAllApplyRepo();
	}


}
