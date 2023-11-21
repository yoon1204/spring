package com.acorn.tour.login;

import org.springframework.stereotype.Component;

@Component
public class UserDTO {

	String userid;
	String nickname;
	String sort;
	String pw;
	String section;
	
	public UserDTO() {
		// TODO Auto-generated constructor stub
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getSection() {
		return section;
	}

	public void setSection(String section) {
		this.section = section;
	}

	@Override
	public String toString() {
		return "Login [userid=" + userid + ", nickname=" + nickname + ", sort=" + sort + ", pw=" + pw + ", section="
				+ section + "]";
	}

	public UserDTO(String userid, String nickname, String sort, String pw, String section) {
		super();
		this.userid = userid;
		this.nickname = nickname;
		this.sort = sort;
		this.pw = pw;
		this.section = section;
	}
	
}