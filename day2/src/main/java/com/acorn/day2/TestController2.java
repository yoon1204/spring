package com.acorn.day2;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TestController2 {
	
	@Autowired
	TestService2 service2;
	
	
	@RequestMapping("/gugudan2")
	public String test1(@RequestParam(required=false, defaultValue="2") int dan, Model model) {
		ArrayList<String> danList = service2.getDan(dan);
		model.addAttribute("list",danList);
		System.out.println(dan);
		return "test2";
	}

	
}
