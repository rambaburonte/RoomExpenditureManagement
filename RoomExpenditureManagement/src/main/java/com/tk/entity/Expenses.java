package com.tk.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import jakarta.persistence.SequenceGenerator;
import lombok.Data;

@Data
@Entity
public class Expenses {
	
	@Id
	@SequenceGenerator(allocationSize = 1,initialValue = 1000,name = "seq2",sequenceName = "seq2")
	@GeneratedValue(strategy = GenerationType.SEQUENCE,generator = "seq2")	
	private Integer id;
	
	private String name;
	
	private Double  price;
	
	private Integer quntity; 
	@Lob
	private byte[] invoice;
	private String store;
	private Double total;
	
	private Integer pid;

}
