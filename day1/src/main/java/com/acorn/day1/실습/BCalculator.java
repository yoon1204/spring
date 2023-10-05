package com.acorn.day1.실습;

public class BCalculator implements Calculator{
	
	@Override
	public int minus(int su1, int su2) {
		System.out.println("B calculator");
		return su1-su2;
	}

}
