package com.kh.dok.cinema.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.dok.cinema.model.vo.Cinema;

public interface CinemaDao {

	ArrayList<Cinema> selectCinema(SqlSessionTemplate sqlSession, Cinema c);

}
