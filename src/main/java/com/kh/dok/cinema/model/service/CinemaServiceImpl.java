package com.kh.dok.cinema.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dok.cinema.model.dao.CinemaDao;
import com.kh.dok.cinema.model.vo.Cinema;

@Service
public class CinemaServiceImpl implements CinemaService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private CinemaDao cd;
	
	
	@Override
	public Cinema selectCinema(Cinema c) {
		Cinema cienmaView = null;
		
		
		cienmaView = cd.selectCinema(sqlSession, c);
		
		return cienmaView;
	}
	
}
