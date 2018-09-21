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
				
		cienmaView = (ArrayList)sqlSession.selectList("Cinema.selectCinema",c);
		
		
		return cienmaView;
	}

}
