package com.kh.dok.movie.model.dao;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import com.kh.dok.movie.model.vo.Movie;
import com.kh.dok.movie.model.vo.MovieSumbnail;


@Repository
public class MovieDaoImpl implements MovieDao{
	
	//이진희 전체영화 출력
	@Override

	public ArrayList<MovieSumbnail> selectMovie(SqlSessionTemplate sqlSession, MovieSumbnail msn) {
		ArrayList<MovieSumbnail> movieView =  null;
		
		movieView = (ArrayList)sqlSession.selectList("MovieSumbnail.selectMovie");
		
		System.out.println("나오냐?: " + movieView);
		return movieView;
	}

	//박지용 영화 리스트 출력기능
	@Override
	public ArrayList<Movie> selectMovieList(SqlSessionTemplate sqlSession) {
		ArrayList<Movie> list = null;
				
		return list = (ArrayList)sqlSession.selectList("Movie.selectMovieList");
	}
	

	//이진희 영화상세 출력	
	@Override
	public ArrayList<MovieSumbnail> selectMovieDetail(SqlSessionTemplate sqlSession, MovieSumbnail msn) {
		
		String id = msn.getMovie_id();
		
		ArrayList<MovieSumbnail> movieDetail = (ArrayList)sqlSession.selectList("MovieSumbnail.movieDetail",id);
		
		System.out.println("영화상세 : " + movieDetail);
		return movieDetail;
	}
	
	//이진희 영화 이미지컷 출력
	@Override
	public ArrayList<MovieSumbnail> selectMovieImageCut(SqlSessionTemplate sqlSession, MovieSumbnail msn) {
		
		String id = msn.getMovie_id();
		
		ArrayList<MovieSumbnail> movieimagecut = (ArrayList)sqlSession.selectList("MovieSumbnail.movieImageCut",id);
		
		System.out.println("영화이미지컷 : " + movieimagecut);
		return movieimagecut;
	}
	
	//이진희 영화 비디오 출력
	@Override
	public ArrayList<MovieSumbnail> selectMovieVideo(SqlSessionTemplate sqlSession, MovieSumbnail msn) {
		String id = msn.getMovie_id();
		
		ArrayList<MovieSumbnail> movievideo = (ArrayList)sqlSession.selectList("MovieSumbnail.movieVideo",id);
		
		System.out.println("영화이미지컷 : " + movievideo);
		return movievideo;
	}

	//박지용 상영 리스트 출력기능
	@Override
	public ArrayList<Movie> selectTurningList(SqlSessionTemplate sqlSession, Movie v) {
		
		ArrayList<Movie> list = (ArrayList)sqlSession.selectList("Movie.selectTurningList", v);
		
		return list;
	}

	//박지용 날짜 리스트 출력기능
	@Override
	public ArrayList<Movie> selectDateList(SqlSessionTemplate sqlSession, Movie v) {
		ArrayList<Movie> list = (ArrayList)sqlSession.selectList("Movie.selectDateList", v);
		
		return list;
	}

	//이진희 영화순위1
	@Override
	public ArrayList<MovieSumbnail> selectMovieRank1(SqlSessionTemplate sqlSession, MovieSumbnail msn) {
		ArrayList<MovieSumbnail> movieRank1 =  null;
		
		movieRank1 = (ArrayList)sqlSession.selectList("MovieSumbnail.selectMovieRank1");
		
		System.out.println("랭크1: " + movieRank1);
		return movieRank1;
	}
	//이진희 영화순위2
	@Override
	public ArrayList<MovieSumbnail> selectMovieRank2(SqlSessionTemplate sqlSession, MovieSumbnail msn) {
		ArrayList<MovieSumbnail> movieRank2 =  null;
		
		movieRank2 = (ArrayList)sqlSession.selectList("MovieSumbnail.selectMovieRank2");
		
		System.out.println("랭크2: " + movieRank2);
		return movieRank2;
	}
	//이진희 영화순위3
	@Override
	public ArrayList<MovieSumbnail> selectMovieRank3(SqlSessionTemplate sqlSession, MovieSumbnail msn) {
		ArrayList<MovieSumbnail> movieRank3 =  null;
		
		movieRank3 = (ArrayList)sqlSession.selectList("MovieSumbnail.selectMovieRank3");
		
		System.out.println("랭크3: " + movieRank3);
		return movieRank3;
	}
	
	
}
