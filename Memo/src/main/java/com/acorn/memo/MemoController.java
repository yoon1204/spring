package com.acorn.memo;

 
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MemoController {
	
	@Autowired
	MemoService serv;
		
	//조회
	@RequestMapping("/memo")
	public String test1(Model model) {
		ArrayList<Memo> memolist = serv.getMemo();
		model.addAttribute("list", memolist);
		return "memo";
	}
	
	//등록
	@ResponseBody
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public void register(String content) {
		//System.out.println(memo);
		serv.register(content);
	}
	
	//삭제
	@ResponseBody
	@RequestMapping(value="/delete/{code}", method=RequestMethod.DELETE)
	public void delete(@PathVariable String code) {
		serv.delete(code);
	}

}
