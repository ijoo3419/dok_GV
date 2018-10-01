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
	
	
	
	//이진희 전체영화 출력
	@RequestMapping("movie.mo")
	public String showmovieView(MovieSumbnail msn, Model model){
		
		ArrayList<MovieSumbnail> movieView = ms.selectMovie(msn);
		
		model.addAttribute("movieView",movieView);
		
		return "movie/movie";
	}
	
	//이진희 영화상세 출력
	@RequestMapping("movieDetail.mo")
	public String showmovieDetailView(@RequestParam String id, Model model){
		
		System.out.println("파라미터 옴?" +id);
		MovieSumbnail msn = new MovieSumbnail();
		
		msn.setMovie_id(id);
		
		ArrayList<MovieSumbnail> movieDetail = ms.selectMovieDetail(msn);
		ArrayList<MovieSumbnail> movieimagecut = ms.selectMovieImageCut(msn);
		ArrayList<MovieSumbnail> movievideo= ms.selectMovieVideo(msn);
		
		model.addAttribute("movieDetail",movieDetail);
		model.addAttribute("movieimagecut",movieimagecut);
		model.addAttribute("movievideo",movievideo);
		
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
		
		ArrayList<Movie> list = ms.selectMovieList();
		
		return list;
		//작성후 movie-servlet.xml로 이동하기 메시지 컨버터 추가하기
	}
	
	@RequestMapping(value="selectPlayList.mo")
	public @ResponseBody ArrayList<Movie> selectPlayList(@RequestParam String formDateTwo, @RequestParam String movieId, @RequestParam String theaterId){
		
		java.sql.Date startDay = null;
		
		if(formDateTwo != "" || formDateTwo != null) {
			String[] dateArr = formDateTwo.split("-");
			
			int[] arr = new int[dateArr.length];
			
			for(int i = 0; i < dateArr.length; i++) {
				arr[i] = Integer.parseInt(dateArr[i]);
			}
			
			startDay = new java.sql.Date(new GregorianCalendar(arr[0], arr[1] - 1, arr[2]).getTimeInMillis());
			
		}else {
			startDay = new java.sql.Date(new GregorianCalendar().getTimeInMillis());
		}
		
		Movie v = new Movie();
		
		v.setTurning_day(startDay);
		v.setArea_id(theaterId);
		v.setMovie_id(movieId);
		
		ArrayList<Movie> list = ms.selectTurningList(v);
		
		System.out.println(list);
		
		return list;
	}
	
	//박지용 @ResponseBody를 이용한 ajax 처리
	@RequestMapping(value="selectDateList.mo")
	public @ResponseBody ArrayList<Movie> selectDateList(@RequestParam String movieId, @RequestParam String theaterId){
		System.out.println(movieId);
		System.out.println(theaterId);
		
		Movie v = new Movie();
		
		v.setMovie_id(movieId);
		v.setArea_id(theaterId);
		
		ArrayList<Movie> list = ms.selectDateList(v);
		
		System.out.println(list);
		
		return list;
	}
	
/*	//황이주 - 보고싶어 insert
	@RequestMapping("insertLike.mo")
	public int insertWish(Model model, Member m){
		
	}
	*/
}

