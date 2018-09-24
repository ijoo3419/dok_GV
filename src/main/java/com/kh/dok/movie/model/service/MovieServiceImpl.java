package com.kh.dok.movie.model.service;

import java.sql.Date;
import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dok.movie.model.dao.MovieDao;
import com.kh.dok.movie.model.vo.Movie;


@Service
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

	
	//박지용 영화 리스트 출력기능
	@Override
	public ArrayList<Movie> selectMovieList(Movie v) {
		ArrayList<Movie> list = md.selectMovieList(sqlSession, v);
		
		return list;
	}

}
