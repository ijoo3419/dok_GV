package com.kh.dok.cinema.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dok.cinema.model.vo.Cinema;

@Repository
public class CinemaDaoImpl implements CinemaDao{

	@Override
	public Cinema selectCinema(SqlSessionTemplate sqlSession, Cinema c) {
		Cinema cienmaView = (Cinema) sqlSession.selectList("Cinema.selectCinema",c);
		
		
		return cienmaView;
	}

}
