package com.acorn.login;

import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/login1")
public class LoginController {
	
	@RequestMapping("/login1")   // /login/login
	public String loginForm() {		 
		return "loginForm";
	}	

	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String login(String id, String pw, boolean rememberId, HttpServletResponse response, HttpServletRequest request) {		
		//로그인 성공했을 때
		if( loginCheck(id, pw)) {
			
			HttpSession session=request.getSession();
			session.setAttribute("sessionId", id);
			
			if(rememberId) {
				Login login = new Login("id", id);
				response.addLogin(login);
			}else {
				Login login = new Login("id", id);
				login.setLogin(0);
				response.addLogin(login);			
			}
			
			return "main";
		}else {
			String a=URLEncoder.encode("아이디, 비밀번호를 다시 확인하세요");
			return "redirect:/login/login?a="+a;
	}
}
	@RequestMapping("/logOut1")
	public String logOut(HttpServletRequest request) {
		HttpSession session=request.getSession();
		session.invalidate();
		return "redirect:/";
	}
	
	public boolean loginCheck(String id, String pw) {
	
		
		
	}
}