package com.kh.dok.licensee.controller;

import java.io.File;
import java.io.IOException;

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

@Controller
@SessionAttributes("loginUser")
public class LicenseeController {
	@Autowired
	private LicenseeService ls;

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
	
	//정태 영화관 등록 메소드(+파일 첨부)
	@RequestMapping("theaterInsert.li")
	public String insertTheater(Model model, Cinema cm, 
								HttpServletRequest request, 
								@RequestParam(name="photo", required=false)MultipartFile photo){
		
		System.out.println("첫번째 photo = " + photo);
		System.out.println("두번째 cm = " + cm);
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		String filePath = root + "\\uploadFiles";
		
		String originFileName = photo.getOriginalFilename();
		String ext = originFileName.substring(originFileName.lastIndexOf("."));
		String changeName = CommonUtils.getRandomString();
		
		
		try {
			photo.transferTo(new File(filePath + "\\" + changeName + ext));
	
			ls.insertTheater(cm);
			System.out.println(cm);
			System.out.println("성공하면 여기로");
			return "licensee/theaterManagePage";
		
		} catch (Exception e){
			new File(filePath + "\\" + changeName + ext).delete();
			
			System.out.println("실패하면 여기로");
			model.addAttribute("msg", "영화관 추가 실패!");
			
			return "common/errorPage";
			
		}
	}
		
}
