package com.kh.dok.cinema.model.service;

import java.util.ArrayList;

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
	public ArrayList<Cinema> selectCinema(Cinema c) {
		ArrayList<Cinema> cienmaView = null;
		
		
		cienmaView = cd.selectCinema(sqlSession, c);
		
		return cienmaView;
	}
	
}
