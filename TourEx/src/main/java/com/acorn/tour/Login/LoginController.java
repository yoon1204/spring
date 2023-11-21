package com.acorn.tour.Login;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {
	// 수정한 부분
	@Autowired
	LoginService loginService;

//    @Autowired
//    public LoginController(LoginService loginService) {
//        this.loginService = loginService;
//    }

    @RequestMapping("/tour")
    public String loginForm() {
        return "login";
    }
    
    
    @RequestMapping("/welcome")
    public String home() {
        return "welcome";
    }

    @ResponseBody
    @PostMapping("/tour")
    public String login(@RequestParam("id") String id, @RequestParam("pw") String pw, Model model) {
    	
    	
    	// 1:성공 0:실패
    	
    	String data="0";
    	
    	System.out.println(id  + pw);
    	boolean result  = loginService.isValidUser(id, pw);
    	System.out.println("result ====" + result);
    	
        if (result) {
        	data="1";            
        }    
        return data;
    }
}