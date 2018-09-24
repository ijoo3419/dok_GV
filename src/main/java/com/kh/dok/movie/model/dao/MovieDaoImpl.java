package com.kh.dok.movie.model.dao;

import java.sql.Date;
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

	//박지용 영화 리스트 출력기능
	@Override
	public ArrayList<Movie> selectMovieList(SqlSessionTemplate sqlSession, Movie v) {
		ArrayList<Movie> list = null;
		
		Date fromDate = v.getOpen_date();
				
		return list = (ArrayList)sqlSession.selectList("Movie.selectMovieList", fromDate);
	}

}
