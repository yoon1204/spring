package com.acorn.prac2;

import lombok.Data;

@Data
public class Member {

	String id;
	String pwd;
	String name;
	public Member(String id, String pwd, String name) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
	}
	public Member() {
		super();
	}
	
	
}


