package com.kh.dok.movie.controller;

import java.util.ArrayList;
import java.util.GregorianCalendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.dok.movie.model.service.MovieService;
import com.kh.dok.movie.model.vo.Movie;
import com.kh.dok.movie.model.vo.MovieSumbnail;

@Controller
public class MovieController {
	
	@Autowired
	private MovieService ms;
	
	@RequestMapping("movie.mo")
	public String showmovieView(MovieSumbnail msn, Model model){
		
		ArrayList<MovieSumbnail> movieView = ms.selectMovie(msn);
		
		model.addAttribute("movieView",movieView);
		
		return "movie/movie";
	}
	
	@RequestMapping("movieDetail.mo")
	public String showmovieDetailView(@RequestParam String id, Model model){
		
		System.out.println("파라미터 옴?" +id);
		MovieSumbnail msn = new MovieSumbnail();
		
		msn.setMovie_id(id);
		
		ArrayList<MovieSumbnail> movieDetail = ms.selectMovieDetail(msn);
		ArrayList<MovieSumbnail> movieimagecut = ms.selectMovieImageCut(msn);
		
		model.addAttribute("movieDetail",movieDetail);
		model.addAttribute("movieimagecut",movieimagecut);
		
		return "movie/movieDetail";
	}
	
	//박지용 예매페이지 이동
	@RequestMapping("moviePay.mo")
	public String showmoviePayView(){
		return "movie/moviePay";
	}
	
	//박지용 @ResponseBody를 이용한 ajax 처리
	@RequestMapping(value="selectMovieList.mo")
	public @ResponseBody ArrayList<Movie> selectMovieList(@RequestParam String fromDate){
		
		java.sql.Date startDay = null;
		
		if(fromDate != "" || fromDate != null) {
			String[] dateArr = fromDate.split("-");
			
			int[] arr = new int[dateArr.length];
			
			for(int i = 0; i < dateArr.length; i++) {
				arr[i] = Integer.parseInt(dateArr[i]);
			}
			
			startDay = new java.sql.Date(new GregorianCalendar(arr[0], arr[1] - 1, arr[2]).getTimeInMillis());
			
		}else {
			startDay = new java.sql.Date(new GregorianCalendar().getTimeInMillis());
		}
		
		Movie v = new Movie();
		v.setOpen_date(startDay);
		
		ArrayList<Movie> list = ms.selectMovieList(v);
		
		return list;
		//작성후 movie-servlet.xml로 이동하기 메시지 컨버터 추가하기
	}
	
	@RequestMapping(value="selectPlayList.mo")
	public @ResponseBody ArrayList<Movie> selectPlayList(@RequestParam String fromDate, String theaterId, String movieId){
		System.out.println("오니??");
		System.out.println(fromDate);
		System.out.println(theaterId);
		System.out.println(movieId);
		
		return null;
	}
	
/*	//황이주 - 보고싶어 insert
	@RequestMapping("insertLike.mo")
	public int insertWish(Model model, Member m){
		
	}
	*/
}

