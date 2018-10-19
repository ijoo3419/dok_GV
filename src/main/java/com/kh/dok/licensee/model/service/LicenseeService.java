package com.kh.dok.licensee.model.service;

import com.kh.dok.cinema.model.vo.Cinema2;
import com.kh.dok.licensee.model.vo.MovieRoom;
import com.kh.dok.licensee.model.vo.Play;
import com.kh.dok.licensee.model.vo.Turning;

public interface LicenseeService {

	//영화관 추가
	int insertTheater(Cinema2 cm);
	int insertTheaterBoard(Cinema2 cm);
	int insertTheaterBoardFile(Cinema2 cm);

	//상영관 추가
	int insertMovieRoom(MovieRoom mr);

	//상영관 아이디 확
	MovieRoom checkMovieRoomId(MovieRoom mr);

	/* 상영 추가 */	
	int insertPlay(Play p);
	int insertTurning(Turning t);
	String selectOnePlayId();
	String selectOneBoardId();
	




/*	int insertFile(BoardFile adFile);

	ArrayList<BoardFile> selectFile();*/
	
}
