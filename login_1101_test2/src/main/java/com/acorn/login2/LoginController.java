package com.acorn.login2;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LoginController {

	@Autowired
	LoginDAO dao;
	
	@GetMapping("/login2")
	public String login2() {
		
		return "login";
	}
	
	@PostMapping("/memberList1")
	public void get(String id, String pw) {
		
		System.out.println(id);
		System.out.println(pw);
	}
	
	@GetMapping("/list2")
	public void list() {
		ArrayList<Login> list = dao.memberList();
		
		System.out.println(list);
		
	}
}
