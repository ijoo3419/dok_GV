package com.kh.dok.movie.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.dok.common.PageInfo;
import com.kh.dok.member.model.vo.Member;
import com.kh.dok.movie.model.vo.Movie;
import com.kh.dok.movie.model.vo.MovieSumbnail;


public interface MovieDao {
	
	//이진희 전체영화 출력
	ArrayList<MovieSumbnail> selectMovie(SqlSessionTemplate sqlSession, MovieSumbnail msn, PageInfo pi);

	//박지용 영화 리스트 출력기능
	ArrayList<Movie> selectMovieList(SqlSessionTemplate sqlSession);

	//이진희 영화상세 출력
	ArrayList<MovieSumbnail> selectMovieDetail(SqlSessionTemplate sqlSession, MovieSumbnail msn);

	//이진희 영화이미지컷 출력
	ArrayList<MovieSumbnail> selectMovieImageCut(SqlSessionTemplate sqlSession, MovieSumbnail msn);
	
	//이진희 영화 비디오 출력
	ArrayList<MovieSumbnail> selectMovieVideo(SqlSessionTemplate sqlSession, MovieSumbnail msn);

	//박지용 상영 리스트 출력기능
	ArrayList<Movie> selectTurningList(SqlSessionTemplate sqlSession, Movie v);

	//박지용 날짜 리스트 출력기능
	ArrayList<Movie> selectDateList(SqlSessionTemplate sqlSession, Movie v);
	
	//이진희 영화순위1
	ArrayList<MovieSumbnail> selectMovieRank1(SqlSessionTemplate sqlSession, MovieSumbnail msn);
	//이진희 영화순위2
	ArrayList<MovieSumbnail> selectMovieRank2(SqlSessionTemplate sqlSession, MovieSumbnail msn);
	//이진희 영화순위3
	ArrayList<MovieSumbnail> selectMovieRank3(SqlSessionTemplate sqlSession, MovieSumbnail msn);

	//박지용 예매 수 가져오기
	int selectPayCount(SqlSessionTemplate sqlSession, Movie v);

	//이진희 전체영화 수 조회
	int getlistCount(SqlSessionTemplate sqlSession);
	
}
