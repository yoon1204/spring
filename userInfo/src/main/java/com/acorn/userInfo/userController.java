package com.acorn.userInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class userController {

	@Autowired
	userDAO dao;
	
	/*@GetMapping("/user")
	public String user() {
		
		return "user";
	}*/
	
	@GetMapping("/user")
	public void list(  String id  , Model model) {
		
		System.out.println( id);
		
		
	   User  u = new User();
	   
	   u.setId("ly");
	   u.setName("이윤");
	   u.setTel("010-9183-9995");
	   u.setAddr("서울시 마포구"); 
	   
	   
	   model.addAttribute("k", u); 
		
		 
	}
	
	
	}

