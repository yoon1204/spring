package com.acorn.login;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LoginController {
	
	@Autowired
	Login dao;

	@GetMapping("/login")
	public String login(Model model) {
		model.addAttribute("loginForm", new Login());
		return "login";
	}

	@PostMapping("/registerPost")
	public String get(String id, String pw, Model model){
		
		if(id == null || id.isEmpty()){
			model.addAttribute("errorMessage", "아이디를 입력하세요");
			return "login";
		}
		
		if(pw == null || pw.isEmpty()){
			model.addAttribute("errorMessage", "비밀번호를 입력하세요");
			return "login"; 
		}
		
		 dao.addUser(id,pw);
		
		return "redirect:/success";    
	}
}
	
	

