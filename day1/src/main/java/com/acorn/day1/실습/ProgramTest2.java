package com.acorn.day1.실습;




import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class ProgramTest2 {

	public static void main(String[] args) {
	
		ApplicationContext ac = new GenericXmlApplicationContext("com/acorn/day1/실습/setting.xml");
		Program program = ac.getBean(Program.class);
		int result=program.minusP(9,3);
		System.out.println(result);
		
		
		Book book = ac.getBean(Book.class);
		System.out.println(book);
		
	}

}
