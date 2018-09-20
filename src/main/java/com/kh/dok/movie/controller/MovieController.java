
package com.kh.dok.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieController {
	
	@RequestMapping("movie.mo")
	public String showmovieView(){
		return "movie/movie";
	}
	
	@RequestMapping("movieDetail.mo")
	public String showmovieDetailView(){
		return "movie/movieDetail";
	}
}
