package com.kh.dok.licensee.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.kh.dok.cinema.model.vo.Cinema;
import com.kh.dok.common.CommonUtils;
import com.kh.dok.licensee.model.service.LicenseeService;
import com.kh.dok.licensee.model.vo.MovieRoom;

@Controller
@SessionAttributes(value="loginUser")
public class LicenseeController {
	@Autowired
	private LicenseeService ls;

	@RequestMapping(value="licensee.li")
	public String showLicenseeMainView(){
		return "licensee/mainLicenseePage";
	}	

	@RequestMapping(value="play.li")
	public String showPlayView(){
		return "licensee/playManagePage";
	}

	@RequestMapping(value="movieRoom.li")
	public String showMovieRoomView(){
		return "licensee/movieRoomManagePage";
	}

	@RequestMapping(value="reservation.li")
	public String showReservationView(){
		return "licensee/reservationManagePage";
	}

	@RequestMapping(value="stats.li")
	public String showStatsView(){
		return "licensee/statsManagePage";
	}

	@RequestMapping(value="theater.li")
	public String showTheaterView(){
		return "licensee/theaterManagePage";
		
	}
	
	//정태 영화관 등록 메소드(+파일 첨부)
	@RequestMapping(value="theaterInsert.li")
	public String insertTheater(Model model, Cinema cm, 
								HttpServletRequest request, 
								@RequestParam(name="photo", required=false)MultipartFile photo){
		
		System.out.println("controller cm : " + cm);
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String filePath = root + "\\uploadFiles";
		
		String originFileName = photo.getOriginalFilename();
		String ext = originFileName.substring(originFileName.lastIndexOf("."));
		String changeName = CommonUtils.getRandomString();
		
		System.out.println(photo);
		try {
			photo.transferTo(new File(filePath + "\\" + changeName + ext));
			
			
			ls.insertTheater(cm);
			
			return "licensee/theaterManagePage";
		
		} catch (Exception e){
			new File(filePath + "\\" + changeName + ext).delete();
			
			System.out.println("실패하면 여기로");
			model.addAttribute("msg", "영화관 추가 실패!");
			
			return "common/errorPage";
			
		}
	}
	
	//정태 상영관 등록(엑셀 파일 전)
	@RequestMapping(value="movieRoomInsert.li")
	public String insertMovieRoom(Model model, MovieRoom mr, Cinema cm,
								HttpServletRequest request){
		
		System.out.println("controller mr = " + mr);
		System.out.println(mr.getMid());
		
		
		
		mr.setMovieRoomAddress(mr.getAddress1()+","+mr.getAddress2()+","+mr.getAddress3()); 
		System.out.println(mr.getMovieRoomAddress());
		int result = ls.insertMovieRoom(mr);
		
		
		
		if(result > 0){
			return "licensee/movieRoomManagePage";
		}else{
			model.addAttribute("msg", "상영관 등록 실패");
			return "common/errorPage";
		}
	
}
}

