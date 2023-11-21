package com.acorn.login1;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LoginController {

	@Autowired
	LoginDAO dao;
	
	@GetMapping("/login1")
	public String login1() {
		
		return "login";
	}
	
	@PostMapping("/memberList")
	public void get(String id, String pw) {
		
		System.out.println(id);
		System.out.println(pw);
	}
	
	@GetMapping("/list1")
	public void list() {
		ArrayList<LoginDTO> list = dao.memberList();
		
		System.out.println(list);
	}
}
