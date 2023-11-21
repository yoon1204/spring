package com.acorn.tour.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LogoutController {

	@Autowired
	LoginService loginService;
	
	@GetMapping("/logout")
	public String logout() {
		
		return "logout";
	}
	
}
