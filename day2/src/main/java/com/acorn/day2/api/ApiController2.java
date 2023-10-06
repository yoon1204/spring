package com.acorn.day2.api;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ApiController2 {
	 
	
	//조회	
	@ResponseBody
	@RequestMapping( value="/drama", method=RequestMethod.GET)
	public ArrayList<Drama> getList(){		
		ArrayList<Drama> list = new ArrayList<>();
		Drama drama = new Drama();
		drama.setName("무빙");
		drama.setActor("류승룡");			
		list.add(drama);
		
		Drama drama2 = new Drama();
		drama2.setName("더 글로리");
		drama2.setActor("송혜교");		
		
		list.add(drama2);
		
		return list;
	}
	
	
	//등록
	
	@ResponseBody
	@RequestMapping(value="/drama", method=RequestMethod.POST)
	public void register(@RequestBody Drama drama) {
		System.out.println(drama);
	}
	
	
	//변경
	@ResponseBody
	@RequestMapping(value="/drama", method=RequestMethod.PUT)
	public void update(@RequestBody Drama drama) {
		System.out.println(drama);
		
		//name -> actor 변경 sql update
	}
	
	
	
	//삭제
	@ResponseBody
	@RequestMapping(value="/drama/{name}", method=RequestMethod.DELETE)
	public void delete(@PathVariable String name) {
		System.out.println(name);
		// sql delete
	}
	
	
}
