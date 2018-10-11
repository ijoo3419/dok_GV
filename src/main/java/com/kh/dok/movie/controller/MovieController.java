package com.kh.dok.movie.controller;

import java.util.ArrayList;
import java.util.GregorianCalendar;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.dok.common.PageInfo;
import com.kh.dok.common.Pagination;
import com.kh.dok.licensee.controller.sheetController.cellClass;
import com.kh.dok.movie.model.service.MovieService;
import com.kh.dok.movie.model.vo.Movie;
import com.kh.dok.movie.model.vo.MovieThumbnail;

@Controller
public class MovieController {
	
	@Autowired
	private MovieService ms;
	
	
	
	//이진희 전체영화 출력
	@RequestMapping("movie.mo")
	public String showmovieView(MovieThumbnail msn, Model model, HttpServletRequest request){
		int currentPage =1;
		
		if(request.getParameter("currentPage") != null){
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		int listCount = ms.getlistCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<MovieThumbnail> movieView = ms.selectMovie(msn, pi);
		ArrayList<MovieThumbnail> movieRank1 = ms.selectMovieRank1(msn);
		ArrayList<MovieThumbnail> movieRank2 = ms.selectMovieRank2(msn);
		ArrayList<MovieThumbnail> movieRank3 = ms.selectMovieRank3(msn);
		
		model.addAttribute("pi",pi);
		model.addAttribute("movieView",movieView);
		model.addAttribute("movieRank1",movieRank1);
		model.addAttribute("movieRank2",movieRank2);
		model.addAttribute("movieRank3",movieRank3);
		
		return "movie/movie";
	}
	
	//이진희 영화상세 출력
	@RequestMapping("movieDetail.mo")
	public String showmovieDetailView(@RequestParam String id, Model model){
		
		System.out.println("파라미터 옴?" +id);
		MovieThumbnail msn = new MovieThumbnail();
		
		msn.setMovie_id(id);
		
		ArrayList<MovieThumbnail> movieDetail = ms.selectMovieDetail(msn);
		ArrayList<MovieThumbnail> movieimagecut = ms.selectMovieImageCut(msn);
		ArrayList<MovieThumbnail> movievideo= ms.selectMovieVideo(msn);
		
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
		
		return list;
	}
	
	//박지용 @ResponseBody를 이용한 ajax 처리
	@RequestMapping(value="selectDateList.mo")
	public @ResponseBody ArrayList<Movie> selectDateList(@RequestParam String movieId, @RequestParam String theaterId){
		
		Movie v = new Movie();
		
		v.setMovie_id(movieId);
		v.setArea_id(theaterId);
		
		ArrayList<Movie> list = ms.selectDateList(v);
		
		return list;
	}
	
	//박지용 @ResponseBody를 이용한 ajax 처리
	@RequestMapping(value="selectPayCount.mo")
	public @ResponseBody int selectPayCount(@RequestParam String roomId, @RequestParam String turningId){

		Movie v = new Movie();

		v.setMovieroom_id(roomId);
		v.setTurning_id(turningId);

		int count = ms.selectPayCount(v);

		return count;
	}

	//박지용 @ResponseBody를 이용한 ajax 처리
	@RequestMapping(value="selectMovieRoom.mo")
	public @ResponseBody String[][] selectMovieRoom(@RequestParam String movieRoomIdVal, HttpServletRequest request){
		System.out.println("영화관 출력하기: " + movieRoomIdVal);
		
		String name = movieRoomIdVal;
		
		System.out.println(name);
		String[][] arr = new cellClass().test(name, request);
		
		for(String[] str : arr){
			for(String s : str)
				System.out.print(s);
			System.out.println();
		}
		
		return arr;
	}
	
	@RequestMapping(value="insertSeat.mo")
	public @ResponseBody void insertSeat(@RequestParam String turningId, @RequestParam String movieRoomId, @RequestParam String seatSplit){

		System.out.println(turningId + " " + movieRoomId + " " + seatSplit);
	}
	
}

