package com.kh.dok.movie.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kh.dok.movie.model.dao.MovieDao;
import com.kh.dok.movie.model.vo.Movie;

public class MovieServiceImpl implements MovieService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private MovieDao md;
	

	@Override
	public ArrayList<Movie> selectMovie(Movie v) {
		ArrayList<Movie> movieView = null;
		
		
		movieView = md.selectCinema(sqlSession, v);
		
		return movieView;
	}

}
