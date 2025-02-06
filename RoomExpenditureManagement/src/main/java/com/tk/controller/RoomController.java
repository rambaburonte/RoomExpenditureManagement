package com.tk.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tk.Service.IRoomServiceMngImpl;
import com.tk.dto.UserDto;
import com.tk.entity.Person;

import jakarta.servlet.http.HttpSession;

@Controller
public class RoomController {
	@Autowired
	private IRoomServiceMngImpl service;
	@Autowired
	 private HttpSession session;
	
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
	public String login(@ModelAttribute UserDto loginDto , Map<String,Object> model) {
		
		try {
	        // Extract username and password from the DTO
	        Integer username = loginDto.getUsername();
	        String password = loginDto.getPassword();
	        
	        // Call your login service to validate credentials
	        Person persons = service.loginCheck(username, password);
	        
	        // On success, store relevant user details in the session
	        session.setAttribute("person", persons);
	        // Redirect to dashboard or role-specific page
	        
	        return "redirect:getAll";
	    } catch (IllegalArgumentException ex) {
	        // On failure, add the error message to the model and return to the login view
	        model.put("error", ex.getMessage());
	        return "login";
	    }
	}
	@GetMapping("/getAll")
	public String getAllPersons(Map<String,Object> map,RedirectAttributes rd) {
	List<Person> plist=	service.allRecords();
	Person logegedInPerson=(Person) session.getAttribute("person");
	 if (logegedInPerson  != null) {
	        plist.removeIf(p -> p.getId().equals(logegedInPerson.getId()));
	  }
	 else if(logegedInPerson == null){
		 return "login";
		 	
	 }
	
	map.put("persons", plist);
		
		return "adminlogin" ;
	}
	public boolean isLogin() {
		Person logegedInPerson=(Person) session.getAttribute("person");
		if(logegedInPerson != null)
			return true;
		return false;
	}

	@GetMapping("/addPerson")
	public String addPerson() {
		if(isLogin() == false)
			return "redirect:login";
		return "addPerson";
	}
	@PostMapping("/savePerson")
	public String addPerson(@ModelAttribute("person") Person person,RedirectAttributes rd) {
		if(isLogin() == false)
			return "redirect:login";
	Integer id=	service.addPerson(person);
		rd.addFlashAttribute("msg","user is added with id " + id+ " default pass word is '123456' ");
		return "redirect:getAll";
	}
	
	
	@GetMapping("/deletePerson")
	public String deletePerson(@RequestParam("no") Integer no,RedirectAttributes rd) {
		if(isLogin() == false)
			return "redirect:login";
		String msg=service.deleteById(no);
		rd.addFlashAttribute("msg",msg);
		return "redirect:getAll";
	}
	
	@GetMapping("/editPerson")
	public String editPerson(@RequestParam("no") Integer no, Map<String,Object> map){
		if(isLogin() == false)
			return "redirect:login";
		Person p=service.getPersonById(no);
		map.put("person", p);
		
		return "editPersonForm" ;
	}
	@PostMapping("/updatePerson")
	public String updatePerson(@ModelAttribute("person") Person person,RedirectAttributes rd) {
		if(isLogin() == false)
			return "redirect:login";
		if(service.updateUser(person)) {
			String msg = "User Updated Sucessfully";
			rd.addFlashAttribute("msg",msg);
			
		}
		else 
			rd.addAttribute("No Data Changed In user");
		return "redirect:getAll";
		
	}
	
	public String 

}

//	@GetMapping("/adminLogin")
//	public String adminLogin(HttpSession session) {
//		
//		return "adminlogin";
//	}
	

