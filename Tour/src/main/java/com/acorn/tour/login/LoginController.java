package com.acorn.tour.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {
	// 수정한 부분
	@Autowired
	LoginService loginService;

    @RequestMapping("/login")
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
    
    
    @PostMapping("/login/kakao")
    public String kakaologin(String user_kakao, String nickname, String profile_image) {
    	
    	System.out.println(user_kakao);
    	System.out.println(nickname);
    	System.out.println(profile_image);    	
    	
    	// 데이터베이스    
    	// 테이블에 user_kakao (이메일로 등록된 것이 있는지 확인 !!!)
    	boolean result = loginService.isMember(user_kakao);
    	
    	if(result) {  // result  == true 
    		loginService.registerKakao(user_kakao, nickname, profile_image);
    	}
    	
    	
    	return "ok";
    	
    }
    
}