package com.kh.dok.movie.model.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dok.member.model.vo.Member;
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
	public ArrayList<Movie> selectMovieList() {
		ArrayList<Movie> list = md.selectMovieList(sqlSession);
		
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



	//이진희 영화상세 비디오 출력
	@Override
	public ArrayList<MovieSumbnail> selectMovieVideo(MovieSumbnail msn) {
		ArrayList<MovieSumbnail> movievideo = md.selectMovieVideo(sqlSession,msn);
		
		return movievideo;
	}


	//박지용 상영 리스트 출력기능
	@Override
	public ArrayList<Movie> selectTurningList(Movie v) {
		ArrayList<Movie> list = md.selectTurningList(sqlSession, v);
		
		return list;
	}


	//박지용 날짜 리스트 가져오기
	@Override
	public ArrayList<Movie> selectDateList(Movie v) {
		ArrayList<Movie> list = md.selectDateList(sqlSession, v);
		
		return list;
	}



	//이진희 영화순위1
	@Override
	public ArrayList<MovieSumbnail> selectMovieRank1(MovieSumbnail msn) {
		ArrayList<MovieSumbnail> movieRank1 = null;
		
		movieRank1 = md.selectMovieRank1(sqlSession, msn);
		
		return movieRank1;


	}

	//이진희 영화순위2	
	@Override
	public ArrayList<MovieSumbnail> selectMovieRank2(MovieSumbnail msn) {
		ArrayList<MovieSumbnail> movieRank2 = null;
		
		movieRank2 = md.selectMovieRank2(sqlSession, msn);
		
		return movieRank2;
	}

	//이진희 영화순위3
	@Override
	public ArrayList<MovieSumbnail> selectMovieRank3(MovieSumbnail msn) {
		ArrayList<MovieSumbnail> movieRank3 = null;
		
		movieRank3 = md.selectMovieRank3(sqlSession, msn);
		
		return movieRank3;
	}



	//박지용 예매 수 가져오기
	@Override
	public int selectPayCount(Movie v) {
		
		int count  = md.selectPayCount(sqlSession, v);
		
		return count;
	}




}
