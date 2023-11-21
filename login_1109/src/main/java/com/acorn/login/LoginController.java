package com.acorn.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {

	@Autowired
	LoginService loginService;
	
	@RequestMapping("/login2")
	public String loginForm() {
		return "login";
	}
	
	@ResponseBody
	@PostMapping("/login2")
	public String login(@RequestParam("id") String id, @RequestParam("pw") String pw, Model model) {
		
		String data = "0";
		boolean result = loginService.isValidUser(id, pw);
		
		if (result) {
			data = "1";
		}
		return data;
	}
}
