package com.kh.dok.movie.model.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dok.movie.model.dao.MovieDao;
import com.kh.dok.movie.model.vo.Movie;
import com.kh.dok.movie.model.vo.MovieSumbnail;


@Service
public class MovieServiceImpl implements MovieService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private MovieDao md;
	
	//이진희 전체영화 출력
	@Override
	public ArrayList<MovieSumbnail> selectMovie(MovieSumbnail msn) {
		ArrayList<MovieSumbnail> movieView = null;
		
		movieView = md.selectMovie(sqlSession, msn);
		
		return movieView;
	}

	
	
	//박지용 영화 리스트 출력기능
	@Override
	public ArrayList<Movie> selectMovieList(Movie v) {
		ArrayList<Movie> list = md.selectMovieList(sqlSession, v);
		
		return list;
	}


	//이진희 영화상세 출력
	@Override
	public ArrayList<MovieSumbnail> selectMovieDetail(MovieSumbnail msn) {
		ArrayList<MovieSumbnail> movieDetail = md.selectMovieDetail(sqlSession,msn);
		
		return movieDetail;
	}


	//이진희 영화이미지컷 출력
	@Override
	public ArrayList<MovieSumbnail> selectMovieImageCut(MovieSumbnail msn) {
		ArrayList<MovieSumbnail> movieimagecut = md.selectMovieImageCut(sqlSession,msn);
		
		return movieimagecut;
	}


	//박지용 상영 리스트 출력기능
	@Override
	public ArrayList<Movie> selectTurningList(Movie v) {
		ArrayList<Movie> list = md.selectTurningList(sqlSession, v);
		
		return list;
	}
}
