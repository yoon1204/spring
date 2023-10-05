package com.acorn.day1.실습;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class pController implements Controller{
	Program p;
	
	public void setP(Program p) {
		this.p=p;
	}
	
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) {
		int result=p.minusP(9, 3);
		System.out.println(result);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("view");
		mv.addObject("data",result);
		return mv;
	}
	

}
