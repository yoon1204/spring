package com.acorn.day1.실습;

import java.util.ArrayList;

import org.springframework.stereotype.Component;

@Component
public class TestDao {

	public ArrayList<String> selectAll(){
		ArrayList<String> list = new ArrayList<>();
		list.add("빨강");
		list.add("주황");
		list.add("노랑");
		return list;
	}
}
