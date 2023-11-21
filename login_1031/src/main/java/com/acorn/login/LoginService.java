package com.acorn.login;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class LoginService {

	@Autowired
	LoginDAO dao;
	
	public ArrayList<Login> getLoginList(){
		return dao.Select();
	}
}
