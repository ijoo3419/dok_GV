package com.kh.dok.movie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.dok.movie.model.service.MovieService;
import com.kh.dok.movie.model.vo.Movie;

@Controller
public class MovieController {
	
	@Autowired
	private MovieService ms;
	
	@RequestMapping("movie.mo")
	public String showmovieView(Movie v, Model model){
		
		model.addAttribute("mobvieView",ms.selectMovie(v));
		
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

