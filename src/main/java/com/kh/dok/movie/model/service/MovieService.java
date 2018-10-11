package com.kh.dok.movie.model.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;

import com.kh.dok.common.PageInfo;
import com.kh.dok.member.model.vo.Member;
import com.kh.dok.movie.model.vo.Movie;
import com.kh.dok.movie.model.vo.MovieThumbnail;


public interface MovieService {
	

		//이진희 전체영화 출력
		ArrayList<MovieThumbnail> selectMovie(MovieThumbnail msn, PageInfo pi);
		
		//박지용 영화 리스트 출력기능
		ArrayList<Movie> selectMovieList();

		//이진희 영화상세 출력
		ArrayList<MovieThumbnail> selectMovieDetail(MovieThumbnail msn);

		//이진희 영화 이미지컷 출력
		ArrayList<MovieThumbnail> selectMovieImageCut(MovieThumbnail msn);


		//이진희 영화 비디오 출력
		ArrayList<MovieThumbnail> selectMovieVideo(MovieThumbnail msn);

		//박지용 상영 리스트 출력기능
		ArrayList<Movie> selectTurningList(Movie v);

		
		//박지용 날짜 가져오기
		ArrayList<Movie> selectDateList(Movie v);

		
		//이진희 영화순위1
		ArrayList<MovieThumbnail> selectMovieRank1(MovieThumbnail msn);

		//이진희 영화순위2
		ArrayList<MovieThumbnail> selectMovieRank2(MovieThumbnail msn);

		//이진희 영화순위3
		ArrayList<MovieThumbnail> selectMovieRank3(MovieThumbnail msn);

		//박지용 예매 수 가져오기
		int selectPayCount(Movie v);
		
		//이진희 전체영화수 조회
		int getlistCount();


}
