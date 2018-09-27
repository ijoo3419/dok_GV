package com.kh.dok.licensee.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.dok.cinema.model.vo.Cinema;

public interface LicenseeDao {

	int insertTheater(SqlSessionTemplate sqlSession, Cinema cm);
	
}
