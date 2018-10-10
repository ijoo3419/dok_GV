package com.kh.dok.licensee.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.dok.cinema.model.vo.Cinema;
import com.kh.dok.licensee.model.vo.MovieRoom;

public interface LicenseeDao {

	int insertTheater(SqlSessionTemplate sqlSession, Cinema cm);

	int insertMovieRoom(SqlSessionTemplate sqlSession, MovieRoom mr);

	MovieRoom checkMovieRoomId(SqlSessionTemplate sqlSession, MovieRoom mr);

	
}
