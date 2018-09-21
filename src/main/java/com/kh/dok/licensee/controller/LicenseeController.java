package com.kh.dok.licensee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LicenseeController {
	@RequestMapping("licensee.li")
	public String showLicenseeMainView(){
		return "licensee/mainLicenseePage";
	}	

	@RequestMapping("play.li")
	public String showPlayView(){
		return "licensee/playManagePage";
	}

	@RequestMapping("inquire.li")
	public String showInquireView(){
		return "licensee/inquireManagePage";
	}


	@RequestMapping("movieRoom.li")
	public String showMovieRoomView(){
		return "licensee/movieRoomManagePage";
	}

	@RequestMapping("notice.li")
	public String showNoticeView(){
		return "licensee/noticeManagePage";
	}

	@RequestMapping("reservation.li")
	public String showReservationView(){
		return "licensee/reservationManagePage";
	}

	@RequestMapping("stats.li")
	public String showStatsView(){
		return "licensee/statsManagePage";
	}

	@RequestMapping("theater.li")
	public String showTheaterView(){
		return "licensee/theaterManagePage";
	}
}
