package com.acorn.day1.실습;

public class Program {
	
	Calculator calculator;
	
	
	public Program() {
		// TODO Auto-generated constructor stub
	}


	public Calculator getCalculator() {
		return calculator;
	}


	public void setCalculator(Calculator calculator) {
		this.calculator = calculator;
	}


	@Override
	public String toString() {
		return "Program [calculator=" + calculator + "]";
	}


	public Program(Calculator calculator) {
		super();
		this.calculator = calculator;
	}

	public int minusP(int num1, int num2) {
		int result;
		result = calculator.minus(num1, num2);
		return result;
	}
}
