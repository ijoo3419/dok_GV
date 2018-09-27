package com.kh.dok.movie.model.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;

import com.kh.dok.movie.model.vo.Movie;
import com.kh.dok.movie.model.vo.MovieSumbnail;

public interface MovieService {
	

		//이진희 전체영화 출력
		ArrayList<MovieSumbnail> selectMovie(MovieSumbnail msn);

		
		//박지용 영화 리스트 출력기능
		ArrayList<Movie> selectMovieList(Movie v);

		//이진희 영화상세 출력
		ArrayList<MovieSumbnail> selectMovieDetail(MovieSumbnail msn);

		//이진희 영화 이미지컷 출력
		ArrayList<MovieSumbnail> selectMovieImageCut(MovieSumbnail msn);

		//박지용 상영 리스트 출력기능
		ArrayList<Movie> selectTurningList(Movie v);

}
