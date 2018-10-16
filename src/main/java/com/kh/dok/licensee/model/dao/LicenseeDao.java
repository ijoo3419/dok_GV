package com.kh.dok.licensee.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.dok.cinema.model.vo.Cinema2;
import com.kh.dok.licensee.model.vo.MovieRoom;

public interface LicenseeDao {

	int insertTheater(SqlSessionTemplate sqlSession, Cinema2 cm);

	int insertMovieRoom(SqlSessionTemplate sqlSession, MovieRoom mr);

	MovieRoom checkMovieRoomId(SqlSessionTemplate sqlSession, MovieRoom mr);


/*	int insertFile(SqlSessionTemplate sqlSession, BoardFile adFile);

	ArrayList<BoardFile> selectFile(SqlSessionTemplate sqlSession);
*/
	
}
