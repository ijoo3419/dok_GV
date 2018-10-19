package com.kh.dok.licensee.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dok.cinema.model.vo.Cinema2;
import com.kh.dok.licensee.model.vo.MovieRoom;
import com.kh.dok.licensee.model.vo.Play;
import com.kh.dok.licensee.model.vo.Turning;

@Repository
public interface LicenseeDao {

	int insertTheater(SqlSessionTemplate sqlSession, Cinema2 cm);

	int insertMovieRoom(SqlSessionTemplate sqlSession, MovieRoom mr);

	MovieRoom checkMovieRoomId(SqlSessionTemplate sqlSession, MovieRoom mr);

	int insertPlay(SqlSessionTemplate sqlSession, Play p);

	int insertTurning(SqlSessionTemplate sqlSession, Turning t);

	String selectOnePlayId(SqlSessionTemplate sqlSession);

	int insertTheaterBoard(SqlSessionTemplate sqlSession, Cinema2 cm);

	int insertTheaterBoardFile(SqlSessionTemplate sqlSession, Cinema2 cm);

	String selectOneBoardId(SqlSessionTemplate sqlSession);


/*	int insertFile(SqlSessionTemplate sqlSession, BoardFile adFile);

	ArrayList<BoardFile> selectFile(SqlSessionTemplate sqlSession);
*/
	
}
