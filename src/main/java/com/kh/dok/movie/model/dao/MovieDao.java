package com.kh.dok.movie.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.dok.movie.model.vo.Movie;

public interface MovieDao {

	ArrayList<Movie> selectCinema(SqlSessionTemplate sqlSession, Movie v);

}
