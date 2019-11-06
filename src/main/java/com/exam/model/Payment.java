package com.exam.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

//@Entity
public class Payment {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int id;
	String cus_name;
	String cus_email;
	int total_amount;
}
