package com.acorn.tour.Login;

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
	 
	 
	 
}