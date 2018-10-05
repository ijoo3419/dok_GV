package com.kh.dok.licensee.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dok.cinema.model.vo.Cinema;
import com.kh.dok.licensee.model.vo.MovieRoom;

@Repository
public class LicenseeDaoImpl implements LicenseeDao{

	@Override
	public int insertTheater(SqlSessionTemplate sqlSession, Cinema cm) {
		return sqlSession.insert("Cinema.insertTheater", cm);
	}

	@Override
	public int insertMovieRoom(SqlSessionTemplate sqlSession, MovieRoom mr) {
		return sqlSession.insert("MovieRoom.insertMovieRoom", mr);
	}
	

}
