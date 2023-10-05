package com.acorn.day1.실습;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

@Controller
public class pController3 {

	@Autowired
	TestService service;
	
	public String test1(Model model) {
		
		ArrayList<String> list = service.getList();
		model.addAttribute("list",list);
		return "memberList";
	}
}
