package com.kh.dok.licensee.model.service;

import com.kh.dok.cinema.model.vo.Cinema;
import com.kh.dok.licensee.model.vo.MovieRoom;

public interface LicenseeService {

	int insertTheater(Cinema cm);

	int insertMovieRoom(MovieRoom mr);

}
