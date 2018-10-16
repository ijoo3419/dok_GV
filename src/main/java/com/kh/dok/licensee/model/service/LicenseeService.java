package com.kh.dok.licensee.model.service;

import com.kh.dok.cinema.model.vo.Cinema2;
import com.kh.dok.licensee.model.vo.MovieRoom;

public interface LicenseeService {

	int insertTheater(Cinema2 cm);

	int insertMovieRoom(MovieRoom mr);

	MovieRoom checkMovieRoomId(MovieRoom mr);

	/* 상영 추가 */	


/*	int insertFile(BoardFile adFile);

	ArrayList<BoardFile> selectFile();*/
	
}
