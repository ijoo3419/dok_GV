package com.kh.dok.licensee.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dok.cinema.model.vo.Cinema;

@Repository
public class LicenseeDaoImpl implements LicenseeDao{

	@Override
	public int insertTheater(SqlSessionTemplate sqlSession, Cinema cm) {
		return sqlSession.insert("Licensee.insertTheater", cm);
	}
	

}
