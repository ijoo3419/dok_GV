package com.kh.dok.movie.model.service;

import java.sql.Date;
import java.util.ArrayList;

import com.kh.dok.movie.model.vo.Movie;

public interface MovieService {
	
		ArrayList<Movie> selectMovie(Movie v);

		//박지용 영화 리스트 출력기능
		ArrayList<Movie> selectMovieList(Movie v);

}
