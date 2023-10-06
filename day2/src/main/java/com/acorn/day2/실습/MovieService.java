package com.acorn.day2.실습;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MovieService {
	
	@Autowired
	MovieDAO dao;

	public ArrayList<Movie> getMovie(){
		
		
		ArrayList<Movie> movieList = dao.movieSelectAll();
		
		return movieList;
	}
	
}
