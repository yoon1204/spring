package com.acorn.Exam;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MemberService {

	@Autowired
	MemberDAO dao;
	
	// 목록 조회
	public ArrayList<Member> getMemebers(){
		ArrayList<Member> list = dao.findAll();
		return list;
	}
	
	// 등록
	public void registerMember(Member member) {
		dao.registerMember(member);
	}
	
	// 조회
	public Member getMember(String id) {
		Member s = dao.findOne(id);
		return s;
	}
	
	// 변경
	public void changeInfoMember(Member member) {
		dao.updateUser(member);
	}
	
	// 삭제
	public void deleteMember(String id) {
		dao.deleteMember(id);
	}
	
}
