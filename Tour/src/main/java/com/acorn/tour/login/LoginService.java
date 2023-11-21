package com.acorn.tour.login;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Service
public class LoginService {

	@Autowired
	LoginRepository rep;
	
	 public boolean isValidUser(String userid, String pw) {

	     //return userid.equals("test") && pw.equals("1234");
		 
		 boolean result = rep.isValid(userid, pw);		 
		 System.out.println("kkjkj"+result);
		 return result;
    }
	 
	 
	 
	 public int registerKakao(String user_kakao, String nickname, String profile_image) {
		 
		int result = rep.register(user_kakao, nickname, profile_image);
	    return result;
	 }
	 
	 
	 public boolean isMember(String user_kakao) {		 
			boolean result = rep.isMember(user_kakao);
		    return result;
	 }
	 
	 
	 
}