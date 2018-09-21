package com.kh.dok.cinema.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.dok.cinema.model.service.CinemaService;
import com.kh.dok.cinema.model.vo.Cinema;

@Controller
public class CinemaController {
	
	@Autowired
	private CinemaService cs;
	
	@RequestMapping("cinema.ci")
	public String showcinemaView(Cinema c, Model model){
		
		model.addAttribute("cienmaView", cs.selectCinema(c));
		
		return "cinema/cinema";
	}
	
	@RequestMapping("cinemaDetail.ci")
	public String showcinemaDetailView(){
		return "cinema/cinemaDetail";
	}
}

