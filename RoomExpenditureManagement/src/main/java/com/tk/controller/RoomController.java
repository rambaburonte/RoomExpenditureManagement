package com.tk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.tk.Service.IRoomServiceMngImpl;
import com.tk.entity.Person;

@Controller
public class RoomController {
	@Autowired
	private IRoomServiceMngImpl service;
	@GetMapping
	public String home() {
		return "home";
	}
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@PostMapping("/loginServlet")
	public String loginServlet(@ModelAttribute Person person ) {
		
			Integer uid=person.getId();
			Long pss=person.getPhone();
		return"login_suesss";
		
	}
}
