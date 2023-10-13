package com.acorn.Exam;
 

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor // 기본생성자
@AllArgsConstructor // 매개변수 있는 생성자
public class Member {
	
	private String id; 
	private String pwd; 
	private String name; 
	private String email; 
	private String birth; 
	private String sns; 
	private Date reg_date;
	
	@Override
	public String toString() {
		return "Member [id=" + id + ", pwd=" + pwd + ", name=" + name + ", email=" + email + ", birth=" + birth
				+ ", sns=" + sns + ", reg_date=" + reg_date + "]";
	}
	
	

}
