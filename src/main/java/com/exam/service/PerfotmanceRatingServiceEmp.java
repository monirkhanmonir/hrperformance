package com.exam.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.dao.PerformanceRatingDaoInterF;
import com.exam.model.EmpRating;
@Service
@Transactional
public class PerfotmanceRatingServiceEmp implements PerformanceRatingServiceInterF{
	@Autowired
	PerformanceRatingDaoInterF performanceRatingDaoInterF;

	@Override
	public List<EmpRating> getAllRating() {
		
		return performanceRatingDaoInterF.getAllRating();
	}
	

}
