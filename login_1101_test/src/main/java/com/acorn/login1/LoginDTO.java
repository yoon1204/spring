package com.acorn.login1;

public class LoginDTO {

	String id;
	String pw;
	
	public LoginDTO() {
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	@Override
	public String toString() {
		return "Login [id=" + id + ", pw=" + pw + "]";
	}

	public LoginDTO(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}
	
	
}
