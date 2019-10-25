package com.exam.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.exam.model.EmpRating;

@Repository
public class PerformanceRatingEmpDao implements PerformanceRatingDaoInterF{
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public List<EmpRating> getAllRating() {
		List<EmpRating> ratingLest = sessionFactory.getCurrentSession().createQuery("From EmpRating").list();
		if(ratingLest!=null) {
			System.out.println("Kaj ok");
		}else {
			System.out.println("fail");
		}
		return ratingLest;
	}

	
	
}
