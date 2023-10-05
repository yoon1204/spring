package com.acorn.day1.실습;

public class ProgramTest1 {

	public static void main(String[] args) {
		
		Calculator calculator = new ACalculator();
		Program program = new Program(calculator);
		int result = program.minusP(9, 3);
		System.out.println(result);

	}

}
