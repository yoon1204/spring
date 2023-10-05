package com.acorn.day1.di;

public class Program {

	// 의존성 dependency
	Calculator calculator;

	public Program() {
		
	}
	
	// 생성자주입 constructor injection
	public Program(Calculator calculator) {
		super();
		this.calculator = calculator;
	}

	// 세터주입 setter injection
	public void setCalculator(Calculator calculator) {
		this.calculator = calculator;
	}
	
	
	public int addP(int num1, int num2) {
		int result;
		result = calculator.add(num1, num2);
		return result;
	}
	
	
	
	
	
	
}
