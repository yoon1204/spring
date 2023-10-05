package com.acorn.day1.실습;

public class Book {
	
		String name;
		String year;
		
		public Book() {
			// TODO Auto-generated constructor stub
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getYear() {
			return year;
		}

		public void setYear(String year) {
			this.year = year;
		}

		@Override
		public String toString() {
			return "Book [name=" + name + ", year=" + year + "]";
		}

		public Book(String name, String year) {
			super();
			this.name = name;
			this.year = year;
		}
		
		
}
