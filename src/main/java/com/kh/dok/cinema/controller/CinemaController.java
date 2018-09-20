
package com.kh.dok.cinema.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CinemaController {
	
	@RequestMapping("cinema.ci")
	public String showcinemaView(){
		return "cinema/cinema";
	}
	
	@RequestMapping("cinemaDetail.ci")
	public String showcinemaDetailView(){
		return "cinema/cinemaDetail";
	}
}

