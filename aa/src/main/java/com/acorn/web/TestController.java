package com.acorn.web;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestController {

	
	@GetMapping("/test1")
	public String  method1( Model model) {		
		model.addAttribute("key", "스프링 좋아요 !!!!!");
		return "viewname";
	}
	
	

	@ResponseBody
	//@GetMapping(value="/test2", produces="application/json;charset=UTF-8")
	@GetMapping(value="/test2", produces="text/plain;charset=UTF-8")
	public String  method2 (  ) {		
	 
		return "스프링좋아요 ";
	}
	
	
	

	@ResponseBody	 
	@GetMapping(value="/test3", produces="application/json;charset=UTF-8")
	public ArrayList<User>  method3 (  ) { 		
		ArrayList<User> list  = new ArrayList<>();
		list.add(new User("홍길동", "0000"));
		list.add(new User("김길동", "1234"));
		list.add(new User("test03", "9999"));
		return list;	
		 
	}
	
	
	@GetMapping("/test5")
	public void method5(HttpServletResponse response) {		
		try {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/plain;charset=utf-8");			
			response.getWriter().println("데이터간다");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}
	
	
	
	@ResponseBody	 
	@GetMapping(value="/test4", produces="application/json;charset=UTF-8")
	public ArrayList<User>  method4 (  ) {
		
		ArrayList<User> list  = new ArrayList<>();
		list.add(new User("test01", "0000"));
		list.add(new User("test02", "1234"));
		list.add(new User("test03", "9999"));
		return list;	
		 
	}
}
