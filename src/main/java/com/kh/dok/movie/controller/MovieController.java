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
	
	//박지용 예매페이지 이동
	@RequestMapping("moviePay.mo")
	public String showmoviePayView(){
		return "movie/moviePay";
	}
}

