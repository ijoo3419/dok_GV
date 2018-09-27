package com.kh.dok.movie.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.dok.movie.model.vo.Movie;
import com.kh.dok.movie.model.vo.MovieSumbnail;

public interface MovieDao {
	
	//이진희 전체영화 출력
	ArrayList<MovieSumbnail> selectMovie(SqlSessionTemplate sqlSession, MovieSumbnail msn);

	//박지용 영화 리스트 출력기능
	ArrayList<Movie> selectMovieList(SqlSessionTemplate sqlSession, Movie v);

	//이진희 영화상세 출력
	ArrayList<MovieSumbnail> selectMovieDetail(SqlSessionTemplate sqlSession, MovieSumbnail msn);

	//이진희 영화이미지컷 출력
	ArrayList<MovieSumbnail> selectMovieImageCut(SqlSessionTemplate sqlSession, MovieSumbnail msn);

	//박지용 상영 리스트 출력기능
	ArrayList<Movie> selectTurningList(SqlSessionTemplate sqlSession, Movie v);

}
