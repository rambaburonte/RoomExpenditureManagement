package com.tk.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.tk.Service.IRoomServiceMngImpl;
import com.tk.dto.UserDto;
import com.tk.entity.Person;

import jakarta.servlet.http.HttpSession;

@Controller
public class RoomController {
	@Autowired
	private IRoomServiceMngImpl service;
	
	@GetMapping
	public String home() {
		return "home";
	}
	@GetMapping("about")
	public String about() {
		return "about";
	}
	@GetMapping("contact")
	public String contact() {
		return "contact";
	}
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@PostMapping("/login")
	public String login(@ModelAttribute UserDto loginDto , Map<String,Object> model, HttpSession session) {
		
		try {
	        // Extract username and password from the DTO
	        Integer username = loginDto.getUsername();
	        String password = loginDto.getPassword();
	        
	        // Call your login service to validate credentials
	        Person p = service.loginCheck(username, password);
	        
	        // On success, store relevant user details in the session
	        session.setAttribute("person", p);
	     
	        
	        // Redirect to dashboard or role-specific page
	        if(p.getRole().equalsIgnoreCase("admin")) {
	        	return "adminlogin";
	        }
	        return "adminlogin";
	    } catch (IllegalArgumentException ex) {
	        // On failure, add the error message to the model and return to the login view
	        model.put("error", ex.getMessage());
	        return "login";
	    }
	}
	
}
