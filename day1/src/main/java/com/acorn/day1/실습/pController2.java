package com.acorn.day1.실습;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class pController2 {

	Program p;
	
	@Autowired
	public void setP(Program p) {
		this.p=p;
	}
	
	@GetMapping("/p.ok")
	public String test1() {
		int result=p.minusP(9, 3);
		System.out.println(result);
		return "view2";
	}
}
