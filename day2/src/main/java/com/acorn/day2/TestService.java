package com.acorn.day2;

import java.util.ArrayList;

import org.springframework.stereotype.Component;

@Component
public class TestService {

	public ArrayList<String> getDan(int dan){
		
		ArrayList<String> danList = new ArrayList<String>();	
		for(int i=1; i<=9; i++) {
			danList.add(dan+"*"+i+"="+dan*i);	//"3*i=3"
		}		
		return danList;
		
	}
	
}
