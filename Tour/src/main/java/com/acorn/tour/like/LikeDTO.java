package com.acorn.tour.like;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor // 기본생성자
@AllArgsConstructor // 매개변수 있는 생성자
public class LikeDTO {

	
	String userId;
	String contentid;
	String contenttypeid;
	String title;
	String sidocode;
	String nickname;
	String sigungucode;
	String sigunguname;
	String firstimage;
	String cat2;
	String contenttypename;
	
	public LikeDTO(String userId, String contentid, String contenttypeid, String title, String sidocode,
			String nickname, String sigungucode, String sigunguname, String firstimage, String cat2) {
		super();
		this.userId = userId;
		this.contentid = contentid;
		this.contenttypeid = contenttypeid;
		this.title = title;
		this.sidocode = sidocode;
		this.nickname = nickname;
		this.sigungucode = sigungucode;
		this.sigunguname = sigunguname;
		this.firstimage = firstimage;
		this.cat2 = cat2;
	}
	
	
	
	
	
}
