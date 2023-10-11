package com.acorn.memo;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MemoService {
	
	
	@Autowired
	MemoDAO dao;
	
	
	public ArrayList<Memo> getMemo() {
		
		
		ArrayList<Memo> memo = dao.selectAll();
		
		return memo;
		
	}
	
	
	public void register(String m) {
		dao.insert(m);
	}
	
	
	
	public void delete(String code) {
		dao.delete(code);
	}
	

}
