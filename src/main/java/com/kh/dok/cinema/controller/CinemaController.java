
package com.kh.dok.cinema.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.dok.cinema.model.service.CinemaService;
import com.kh.dok.cinema.model.vo.Cinema;

@Controller
public class CinemaController {
	
	@Autowired
	private CinemaService cs;
	
	@RequestMapping("cinema.ci")
	public String showcinemaView(Cinema c, Model model){
		
		ArrayList<Cinema> cinemaView = cs.selectCinema(c);
		
		model.addAttribute("cienmaView", cinemaView);
		
		return "cinema/cinema";
	}
	
	@RequestMapping("cinemaDetail.ci")
	public String showcinemaDetailView(@RequestParam String id, Model model){
		System.out.println("영화관 파라미터 : " + id);
		Cinema ca = new Cinema();
		
		ca.setTheaterId(id);
		
		ArrayList<Cinema> cinemaDetail = cs.selectCinemaDetail(ca);
		
		model.addAttribute("cinemaDetail",cinemaDetail);
		
		return "cinema/cinemaDetail";
	}
}

