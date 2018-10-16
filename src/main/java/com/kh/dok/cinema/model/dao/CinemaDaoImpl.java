package com.kh.dok.cinema.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dok.cinema.model.vo.Cinema;

@Repository
public class CinemaDaoImpl implements CinemaDao{

	@Override
	public ArrayList<Cinema> selectCinema(SqlSessionTemplate sqlSession, Cinema c) {
		ArrayList<Cinema> cienmaView =  null;
				
		cienmaView = (ArrayList)sqlSession.selectList("Cinema.selectCinema");
		
		System.out.println("영화관 Dao : " + cienmaView);
		return cienmaView;
	}

	@Override
	public ArrayList<Cinema> selectCinemaDetail(SqlSessionTemplate sqlSession, Cinema ca) {
		
		String id = ca.getTheaterId();
		
		
		ArrayList<Cinema> cinemaDetail = null;
		
		cinemaDetail= (ArrayList)sqlSession.selectList("Cinema.cinemaDetail",id);
		
		System.out.println("디테일 DAO"+ cinemaDetail);
		
		return cinemaDetail;
	}

}
