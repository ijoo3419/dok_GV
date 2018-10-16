package com.kh.dok.licensee.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dok.cinema.model.vo.Cinema2;
import com.kh.dok.licensee.model.dao.LicenseeDao;
import com.kh.dok.licensee.model.vo.MovieRoom;

@Service
public class LicenseeServiceImpl implements LicenseeService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private LicenseeDao ld;
	
	
	@Override
	public int insertTheater(Cinema2 cm) {
		int result = ld.insertTheater(sqlSession, cm);
		
		return result;
	}


	@Override
	public int insertMovieRoom(MovieRoom mr) {
		
		return ld.insertMovieRoom(sqlSession, mr);
	}


	@Override
	public MovieRoom checkMovieRoomId(MovieRoom mr) {
		
		MovieRoom movieRoomId = ld.checkMovieRoomId(sqlSession, mr);
		
		
		return movieRoomId;
	}




	/*@Override
	public int insertFile(BoardFile adFile){
	
		return ld.insertFile(sqlSession, adFile);
	}


	@Override
	public ArrayList<BoardFile> selectFile() {
		return ld.selectFile(sqlSession);

	}*/


	
	
	

}
