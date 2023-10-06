package com.acorn.day2.실습;

public class Movie {
	String genre;
	String title;
	String actors;

	public Movie() {
		// TODO Auto-generated constructor stub
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getActors() {
		return actors;
	}

	public void setActors(String actors) {
		this.actors = actors;
	}

	@Override
	public String toString() {
		return "Movie [genre=" + genre + ", title=" + title + ", actors=" + actors + "]";
	}

	public Movie(String genre, String title, String actors) {
		super();
		this.genre = genre;
		this.title = title;
		this.actors = actors;
	}
	
	

}
