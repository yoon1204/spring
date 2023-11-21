package com.acorn.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {

	@Autowired
	LoginRepository rep;
	
	public boolean isValidUser(String userid, String pw) {
		
		boolean result = rep.isValid(userid, pw);
		
		return result;
	}
}
