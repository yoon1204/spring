package com.acorn.ex;

import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ExceptionCatcher2 {

	@ExceptionHandler(SQLException.class)
	public String catcher1(Model model,SQLException ex) {
		model.addAttribute("ex", ex);
		return "err2";
		//SQL 관련 오류는 여기서 작업함
	}
	
	@RequestMapping("/db2")
	public void method1() throws SQLException{			
		throw new SQLException();		
	}
	
	
	@RequestMapping("/db3")
	public void method2() throws SQLException{			
		throw new SQLException();		
	}
	
}
