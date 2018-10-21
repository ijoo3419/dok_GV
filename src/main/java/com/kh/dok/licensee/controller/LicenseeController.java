package com.kh.dok.licensee.controller;

import java.io.File;
import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.kh.dok.cinema.model.vo.Cinema2;
import com.kh.dok.common.CommonUtils;
import com.kh.dok.licensee.controller.sheetController.cellClass;
import com.kh.dok.licensee.model.service.LicenseeService;
import com.kh.dok.licensee.model.vo.MovieRoom;
import com.kh.dok.licensee.model.vo.Play;
import com.kh.dok.licensee.model.vo.Turning;
import com.kh.dok.movie.model.vo.Movie;

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
	public String showPlayView(Model model, MovieRoom mr,
			HttpServletRequest request){
	
		ArrayList< Movie> movieTitle= ls.selectMovieTiltle();
		System.out.println("movieTilte : "+ movieTitle);
		System.out.println("mr.getMid() = " + mr.getMid());
		
		ArrayList<MovieRoom> movieRoomName= ls.selectMovieRoomName(mr);
		System.out.println("controller mr = " + mr );
		System.out.println("movieRoomName = " + movieRoomName);
		
		
		model.addAttribute("movieTitle",movieTitle);
		model.addAttribute("movieRoomName", movieRoomName);
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
	public String showTheaterView(Model model ){
	
		
		return "licensee/theaterManagePage";
	}
	
	//정태 영화관 등록 메소드(+파일 첨부)
	@RequestMapping(value="theaterInsert.li")
	public String insertTheater(Model model, Cinema2 cm,
								HttpServletRequest request,
								@RequestParam(name="photo1", required=false)MultipartFile photo1,
								@RequestParam(name="photo2", required=false)MultipartFile photo2,
								@RequestParam(name="photo3", required=false)MultipartFile photo3,
								@RequestParam(name="photo4", required=false)MultipartFile photo4){
		
		System.out.println(photo1);
		System.out.println("controller cm : " + cm);

		cm.setTheaterAddress(cm.getTheaterAddress1()+","+cm.getTheaterAddress2()+","+cm.getTheaterAddress3());
		
		System.out.println("movieRoom Address = " + cm.getTheaterAddress());
		
		String areaName = cm.getTheaterAddress2().substring(0, 2);
		String areaId = "";
		System.out.println("areaName = " + areaName);
		
		if(areaName.equals("서울")){
			System.out.println("여기에 온다면 소리질러~!");
			areaId = "A1";
			System.out.println("areaId = " + areaId);
			cm.setAreaId(areaId);

			System.out.println("areaId는 ? = "+cm.getAreaId());
			ls.insertTheater(cm);
		}if(areaName.equals("경기")){
			areaId = "A2";
			cm.setAreaId(areaId);
			System.out.println("areaId = " + areaId);

			System.out.println("areaId는 ? = "+cm.getAreaId());
			ls.insertTheater(cm);
		}if(areaName.equals("인천")){
			areaId = "A3";
			cm.setAreaId(areaId);
			System.out.println("areaId = " + areaId);

			System.out.println("areaId는 ? = "+cm.getAreaId());
			ls.insertTheater(cm);
		}if(areaName.equals("강원")){
			areaId = "A4";
			cm.setAreaId(areaId);
			System.out.println("areaId = " + areaId);

			System.out.println("areaId는 ? = "+cm.getAreaId());
			ls.insertTheater(cm);
		}if(areaName.equals("대전") || areaName.equals("충남") || areaName.equals("충북")){
			areaId = "A5";
			cm.setAreaId(areaId);
			System.out.println("areaId = " + areaId);

			System.out.println("areaId는 ? = "+cm.getAreaId());
			ls.insertTheater(cm);
		}if(areaName.equals("대구")){
			areaId = "A6";
			cm.setAreaId(areaId);
			System.out.println("areaId = " + areaId);

			System.out.println("areaId는 ? = "+cm.getAreaId());
			ls.insertTheater(cm);
		}if(areaName.equals("부산") || areaName.equals("울산")){
			areaId = "A7";
			cm.setAreaId(areaId);
			System.out.println("areaId = " + areaId);

			System.out.println("areaId는 ? = "+cm.getAreaId());
			ls.insertTheater(cm);
		}if(areaName.equals("경남") || areaName.equals("경북") ){
			areaId = "A8";
			cm.setAreaId(areaId);
			System.out.println("areaId = " + areaId);

			System.out.println("areaId는 ? = "+cm.getAreaId());
			ls.insertTheater(cm);
		}if(areaName.equals("전남") || areaName.equals("전북") || areaName.equals("제주")){
			areaId = "A9";
			cm.setAreaId(areaId);
			System.out.println("areaId = " + areaId);
			System.out.println("areaId는 ? = "+cm.getAreaId());
			ls.insertTheater(cm);
		}
		
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		System.out.println("root : " + root);
		String filePath = root + "\\uploadFiles";
		System.out.println("filePath : " + filePath);
		
	
		
		ls.insertTheaterBoard(cm);
		
		String board_id = "B";
		
		board_id += ls.selectOneBoardId();
		cm.setBoard_id(board_id);
		
		try{
		if(photo1 != null){
			
		
		String originFileName = photo1.getOriginalFilename();
		String ext = originFileName.substring(originFileName.lastIndexOf("."));
		String changeName = CommonUtils.getRandomString();
		String ichangeName = changeName.substring(originFileName.lastIndexOf("."));
		
		cm.setOrigin_name(originFileName); 
		cm.setEdit_name(changeName);
		cm.setFile_src(filePath);
		cm.setFile_level(1);
		
		ls.insertTheaterBoardFile(cm);
		photo1.transferTo(new File(filePath + "\\" + changeName + ext));
		}
		if(photo2 != null){
			String originFileName = photo2.getOriginalFilename();
			String ext = originFileName.substring(originFileName.lastIndexOf("."));
			String changeName = CommonUtils.getRandomString();
			String ichangeName = changeName.substring(originFileName.lastIndexOf("."));
			
			cm.setOrigin_name(originFileName); 
			cm.setEdit_name(changeName);
			cm.setFile_src(filePath);
			cm.setFile_level(2);
			
			ls.insertTheaterBoardFile(cm);
			photo2.transferTo(new File(filePath + "\\" + changeName + ext));
			
		}if(photo3 != null){
			String originFileName = photo3.getOriginalFilename();
			String ext = originFileName.substring(originFileName.lastIndexOf("."));
			String changeName = CommonUtils.getRandomString();
			String ichangeName = changeName.substring(originFileName.lastIndexOf("."));
			
			cm.setOrigin_name(originFileName); 
			cm.setEdit_name(changeName);
			cm.setFile_src(filePath);
			cm.setFile_level(2);
			
			ls.insertTheaterBoardFile(cm);
			photo3.transferTo(new File(filePath + "\\" + changeName + ext));
			
		}if(photo4 != null){
			String originFileName = photo4.getOriginalFilename();
			String ext = originFileName.substring(originFileName.lastIndexOf("."));
			String changeName = CommonUtils.getRandomString();
			String ichangeName = changeName.substring(originFileName.lastIndexOf("."));
			
			cm.setOrigin_name(originFileName); 
			cm.setEdit_name(changeName);
			cm.setFile_src(filePath);
			cm.setFile_level(2);
	
			ls.insertTheaterBoardFile(cm);
			photo4.transferTo(new File(filePath + "\\" + changeName + ext));
			
		}
		return "licensee/mainLicenseePage";
	
	}
		catch (Exception e){
			
			System.out.println("실패하면 여기로");
			model.addAttribute("msg", "영화관 추가 실패!");
			
			return "common/errorPage";
			
		}
	}
	
	//정태 상영관 등록(엑셀 파일 완료)
	@RequestMapping(value="movieRoomInsert.li")
	public String insertMovieRoom(Model model,MovieRoom mr, Cinema2 cm,
								HttpServletRequest request){
		
		
		System.out.println("mr.getMid = " + mr.getMid());
		
		mr.setMovieRoomAddress(mr.getAddress1()+","+mr.getAddress2()+","+mr.getAddress3());
	
		System.out.println("movieRoom Address = " + mr.getMovieRoomAddress());
		
		
		int result = ls.insertMovieRoom(mr);
		
		MovieRoom movieRoomId = ls.checkMovieRoomId(mr);
		
		System.out.println("movieRoomId = " + movieRoomId);
		
		System.out.println("controller mr1 = " + mr);
		mr.setMovieRoomId(movieRoomId.getMovieRoomId());
		
		String name = mr.getMovieRoomId();		//저장할 이름
		String[] arr = request.getParameterValues("bak");
		String tableName = request.getParameter("table");
		
		System.out.println("name = " + name);
		//셀 조회 15x15
//		String[][] num = new cellClass().test();
//		System.out.println(num[0][0]);
		
		if(tableName == ""){
			//셀 값 삽입
			new cellClass().createTeble(arr, name, request);
		}else{
			//셀 구매
			new cellClass().insertCell(arr, name, tableName, request);
		}
		
		
		if(result > 0){
			return "licensee/movieRoomManagePage";

		}else{
			model.addAttribute("msg", "상영관 등록 실패");
			return "common/errorPage";
		}
	
	
	
}
	/* 정태 상영 등록  */
	@RequestMapping(value="playInsert.li")
	public String insertPlay(Model model, Play p, Turning t, MovieRoom mr,
								HttpServletRequest request){
		
		//11:00 ~ 12:00 이런식으로 나오는 값
		t.setTurningTime(t.getStartTime_pre() + " ~ " + t.getEndTime_pre());

		
		//이 값이 startTime_pre
		t.setStartTime_pre(t.getTurningDay() + " " + t.getStartTime_pre());
	/*	Date startTime_rel = Date.valueOf(t.getStartTime_pre());
		
		System.out.println("Date로 만든 변수 = " + startTime_rel);*/
		//이 값이 endTime_pre
		t.setEndTime_pre(t.getTurningDay() + " " + t.getEndTime_pre());
		
		
		String movieRoomId = "MR";
		
		movieRoomId += ls.selectOneMovieRoomId();
		mr.setMovieRoomId(movieRoomId);
			
		t.setMovieRoomId(movieRoomId);
		
		//MovieRoom_id 값 가져오기
		System.out.println("무비룸 아이디 가져오기 = " +  mr.getMovieRoomId());
		
		
		int resultPlay = ls.insertPlay(p);
		
		System.out.println("상영 등록은 완료 ");

		String selectPlayId = "PL";
		
		//play_id 값 알아오기
		selectPlayId += ls.selectOnePlayId();
		
		System.out.println("PlayId = " + selectPlayId);
		//객체에 넣어주자
		t.setPlayId(selectPlayId);
		
		System.out.println("controller p = " + p);
		System.out.println("controller t = " + t);
		int resultTurning = ls.insertTurning(t);
		
		
		
		
		System.out.println(mr.getMovieRoomName());
		
		
		System.out.println("controller p = " + p);
		
		
		
		//name 값은 터닝아이디 값 CURVAL로 가져오자
		String name = "PL";
		
		name += ls.selectOneTurningId();
		String tableName = "";
		
		System.out.println("name = " + name);
		System.out.println("MovieRoom 객체 = " +  mr);
		
		//내가 선택한 movieRoomId값 가져오기
		Turning movieRoomIdd = ls.selectOneMovieRoomIdId(t);
		System.out.println("movieRoomIdd = " + movieRoomIdd);
		
		String movieRoomRealId = movieRoomIdd.getMovieRoomId();
		
		
		
		
		if(tableName == ""){
			//셀 값 삽입
			new cellClass().createTurningTeble(name, movieRoomRealId ,request);
		}else{
			//셀 구매
			/*new cellClass().insertTurningCell(name, tableName, request);*/
		}
			

		if(resultPlay > 0 || resultTurning > 0){
			return "licensee/playManagePage";

		}else{
			model.addAttribute("msg", "상영 등록 실패");
			return "common/errorPage";
		}
		
		
	}

}
	
/*	 엑셀 파일 확인 
	@RequestMapping(value="ViewFiled.li")
	public String insertMovieRoom(Model model, HttpServletRequest request){
	
	String name = request.getParameter("name");
	
	System.out.println(name);
	String[][] arr = new cellClass().test(name, request);

	
	for(String[] str : arr){
		for(String s : str)
			System.out.print(s);
		System.out.println();
	}
	
	request.setAttribute("field", arr);

	return "licensee/ViewField";
	
}*/


	


