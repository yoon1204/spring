package com.acorn.day2.실습;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieController {

	@Autowired
	MovieService service;
	
	@RequestMapping("/movie")
	public String test1(Model model) {
		ArrayList<Movie> movieList=service.getMovie();
		model.addAttribute("list",movieList);
		return "movie";
	}
}
