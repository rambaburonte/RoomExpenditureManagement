package com.tk.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import lombok.Data;

@Entity
@Data
public class Person {
	
	@Id
	@SequenceGenerator(name = "seq1",sequenceName = "seq1" , initialValue = 1000,allocationSize = 1)
	@GeneratedValue(strategy = GenerationType.SEQUENCE,generator = "seq1")
	private Integer id; 
	
	private String name;
	
	private Integer phone;
	private String email;
	private Integer currentMonth;
	private Integer totalBalance;
}
