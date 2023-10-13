package com.acorn.Exam;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MemberController {
	
	@Autowired
	MemberService s;

	//조회
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
