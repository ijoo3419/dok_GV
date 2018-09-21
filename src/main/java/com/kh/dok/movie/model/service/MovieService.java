package com.kh.dok.movie.model.service;

import java.util.ArrayList;

import com.kh.dok.movie.model.vo.Movie;

public interface MovieService {
	
		ArrayList<Movie> selectMovie(Movie v);

}
