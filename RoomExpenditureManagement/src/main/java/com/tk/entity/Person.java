package com.tk.entity;

import java.time.LocalDateTime;
import java.util.Set;

import org.hibernate.annotations.CreationTimestamp;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name="Person_Table")
public class Person {
	
	@Id
	@SequenceGenerator(name = "seq1",sequenceName = "seq1" , initialValue = 1000,allocationSize = 1)
	@GeneratedValue(strategy = GenerationType.SEQUENCE,generator = "seq1")
	@Column(name="Person Id",length = 20)
	private Integer id; 
	
	@Column(name="Person Name",length = 30)
	private String name;
	
	@Column(name="Person Contact",length = 12)
	private Integer phone;
	
	@Column(name="Person Email",length = 30)
	private String email;
	@Column(name="Current Month",length = 20)
	private Integer currentMonth;
	
	@Column(name="Invest Money",length = 20)
	private Double totalMoney;
	
	@Column(name="Joining Date")
	@CreationTimestamp
	private LocalDateTime joiningDate;
	@OneToMany(targetEntity = Expenses.class,cascade = CascadeType.ALL,mappedBy = "pid")
	private Set<Expenses> expenses;
	
}
