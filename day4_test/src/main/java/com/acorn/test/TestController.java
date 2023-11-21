package com.acorn.test;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {

	@GetMapping("/yInfo")
	public String mvc1(Model model) {
		
		String name = "이윤";
		String tel = "010-9183-9995";
		String addr = "서울시 마포구";
		
		model.addAttribute("name", name);
		model.addAttribute("tel", tel);		
		model.addAttribute("addr", addr);

		return "yInfo";
	}
	
	
	
	@GetMapping("/yInfo2")
	public String mvc2(Model model) {
		
		String name = "이윤";
		String tel = "010-9183-9995";
		String addr = "서울시 마포구";
		
		
		User user = new User();
		
		model.addAttribute("user", user);
	 
		return "yInfo2";
	}
	
	
	@GetMapping("/yLikes")
	public String mvc3(Model model) {
		ArrayList<Goods> goodsList = new ArrayList<>();
	        
	        String code = "001";
	        String name = "강남구 논현동 빌딩";
	        String price = "95억";
	        
	        String code1 = "002";
	        String name1 = "시그니엘";
	        String price1 = "74억";
	        
	        model.addAttribute("code", code);
	        model.addAttribute("name", name);
	        model.addAttribute("price", price);
	        

	        return "yLikes";
	    }
	}
		
	
	
	
	

