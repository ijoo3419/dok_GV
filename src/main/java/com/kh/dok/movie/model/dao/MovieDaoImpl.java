package com.kh.dok.movie.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dok.movie.model.vo.Movie;

@Repository
public class MovieDaoImpl implements MovieDao{

	@Override
	public ArrayList<Movie> selectCinema(SqlSessionTemplate sqlSession, Movie v) {
		ArrayList<Movie> movieView =  null;
		
		movieView = (ArrayList)sqlSession.selectList("movie.selectmovie",v);
		
		
		return movieView;
	}

}
