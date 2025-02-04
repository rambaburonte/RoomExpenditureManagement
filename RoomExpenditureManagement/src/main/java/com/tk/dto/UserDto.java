package com.tk.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class UserDto {
	
	private Integer username;
	private String password;
	
	
}
