package com.acorn.web;

public class Book {

	String name;
	String writer;
	
	public Book() {
		// TODO Auto-generated constructor stub
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	@Override
	public String toString() {
		return "Book [name=" + name + ", writer=" + writer + "]";
	}

	public Book(String name, String writer) {
		super();
		this.name = name;
		this.writer = writer;
	}
	
	
}
