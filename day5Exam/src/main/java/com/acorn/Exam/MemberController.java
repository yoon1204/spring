package com.acorn.Exam;

import java.util.ArrayList;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

public class MemberController {
	
	MemberService s = new MemberService();

	//조회
	@ResponseBody
	@RequestMapping("/find")
	public String FindAll(Model model) {
		ArrayList<Member> memberList = new ArrayList<>();
		memberList = s.getMemebers();
		model.addAttribute("memberList", memberList);
		return "member";
	}
	
	public String method1(Model model) {
		Member member = new Member();
		model.addAttribute("Member", member);
		return "member2";
	}
}
