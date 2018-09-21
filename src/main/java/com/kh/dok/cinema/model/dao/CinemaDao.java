package com.kh.dok.cinema.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.dok.cinema.model.vo.Cinema;

public interface CinemaDao {

	Cinema selectCinema(SqlSessionTemplate sqlSession, Cinema c);

}
