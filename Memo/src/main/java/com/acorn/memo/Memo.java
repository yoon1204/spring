package com.acorn.memo;

import lombok.Data;

@Data
public class Memo {
	
	
	String code;
	String contents;
	
	
	public Memo(String code, String contents) {
		super();
		this.code = code;
		this.contents = contents;
	}
	
	
	public Memo() {}
	
	
	
	public Memo(String contents) {
		super();
		this.contents = contents;
	}

}
