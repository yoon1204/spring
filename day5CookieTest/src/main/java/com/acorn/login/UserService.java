package com.acorn.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class UserService {

	@Autowired
	UserRepository rep;
	
	public UserDTO getSelectOne(String id) {
		UserDTO user = rep.selectOne(id);
		return user;
	}
}
