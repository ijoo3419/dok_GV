package com.kh.dok.licensee.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.poi.ddf.EscherColorRef.SysIndexProcedure;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.kh.dok.board.model.vo.BoardFile;
import com.kh.dok.cinema.model.vo.Cinema;
import com.kh.dok.cinema.model.vo.Cinema2;
import com.kh.dok.common.CommonUtils;
import com.kh.dok.licensee.controller.sheetController.cellClass;
import com.kh.dok.licensee.model.service.LicenseeService;
import com.kh.dok.licensee.model.vo.MovieRoom;
import com.kh.dok.licensee.model.vo.Play;
import com.kh.dok.licensee.model.vo.Turning;

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
	public String insertTheater(Model model, Cinema2 cm,
								HttpServletRequest request,
								@RequestParam(name="photo1", required=false)MultipartFile photo1,
								@RequestParam(name="photo2", required=false)MultipartFile photo2,
								@RequestParam(name="photo3", required=false)MultipartFile photo3,
								@RequestParam(name="photo4", required=false)MultipartFile photo4){
		
		System.out.println(photo1);
		System.out.println("controller cm : " + cm);

	
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		System.out.println("root : " + root);
		String filePath = root + "\\uploadFiles";
		System.out.println("filePath : " + filePath);
		
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
		
		ls.insertTheater(cm);
		
		ls.insertTheaterBoard(cm);
		
		String board_id = "B";
		
		board_id += ls.selectOneBoardId();
		cm.setBoard_id(board_id);
		
		ls.insertTheaterBoardFile(cm);
		photo1.transferTo(new File(filePath + "\\" + changeName + ext));
		}if(photo2 != null){
			String originFileName = photo2.getOriginalFilename();
			String ext = originFileName.substring(originFileName.lastIndexOf("."));
			String changeName = CommonUtils.getRandomString();
			String ichangeName = changeName.substring(originFileName.lastIndexOf("."));
			
			cm.setOrigin_name(originFileName); 
			cm.setEdit_name(changeName);
			cm.setFile_src(filePath);
			cm.setFile_level(2);
			
			ls.insertTheater(cm);
			
			ls.insertTheaterBoard(cm);
			
			String board_id = "B";
			
			board_id += ls.selectOneBoardId();
			cm.setBoard_id(board_id);
			
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
			
			ls.insertTheater(cm);
			
			ls.insertTheaterBoard(cm);
			
			String board_id = "B";
			
			board_id += ls.selectOneBoardId();
			cm.setBoard_id(board_id);
			
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
			
			ls.insertTheater(cm);
			
			ls.insertTheaterBoard(cm);
			
			String board_id = "B";
			
			board_id += ls.selectOneBoardId();
			cm.setBoard_id(board_id);
			
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
	
	//정태 영화관 등록 메소드(+파일 첨부 + 게시판 테이블에 추가 아직 하는 중)
	/*@RequestMapping(value="theaterInsert.li")
	public String insertTheater(Model model, Cinema cm, HttpServletRequest request, 
					@RequestParam(name="photo1", required=false)MultipartFile photo1,
					@RequestParam(name="photo2", required=false)MultipartFile photo2,
					@RequestParam(name="photo3", required=false)MultipartFile photo3,
					@RequestParam(name="photo4", required=false)MultipartFile photo4){
		

		System.out.println("controller cm : " + cm);
		String root = request.getSession().getServletContext().getRealPath("resources");
		System.out.println("root : " + root);
		String filePath = root + "\\uploadFiles";
		System.out.println("filePath : " + filePath);
		
		System.out.println("photo1 = " + photo1);
		System.out.println("photo2 = " + photo2);
		System.out.println("photo3 = " + photo3);
		System.out.println("photo4 = " + photo4);
		try {
			if(photo1 != null){
			
			String originFileName = photo1.getOriginalFilename();
			String ext = originFileName.substring(originFileName.lastIndexOf("."));
			String changeName = CommonUtils.getRandomString();
			String ichangeName = changeName.substring(originFileName.lastIndexOf("."));
			BoardFile adFile = new BoardFile("BT1", originFileName, ichangeName, filePath, "1");
			int au = ls.insertFile(adFile);
			
			System.out.println("adFile = " + adFile);
			photo1.transferTo(new File(filePath + "\\" + changeName + ext));
			}else if(photo2 != null){
				
				String originFileName = photo2.getOriginalFilename();
				String ext = originFileName.substring(originFileName.lastIndexOf("."));
				String changeName = CommonUtils.getRandomString();
				String ichangeName = changeName.substring(originFileName.lastIndexOf("."));
				BoardFile adFile = new BoardFile("BT1", originFileName, ichangeName, filePath, "2");
				int au = ls.insertFile(adFile);
			photo2.transferTo(new File(filePath + "\\" + changeName + ext));

			}	else if(photo3 != null){
				
				String originFileName = photo3.getOriginalFilename();
				String ext = originFileName.substring(originFileName.lastIndexOf("."));
				String changeName = CommonUtils.getRandomString();
				String ichangeName = changeName.substring(originFileName.lastIndexOf("."));
				BoardFile adFile = new BoardFile("BT1", originFileName, ichangeName, filePath, "2");
				int au = ls.insertFile(adFile);
				photo3.transferTo(new File(filePath + "\\" + changeName + ext));

			}	else if(photo4 != null){
				
				String originFileName = photo4.getOriginalFilename();
				String ext = originFileName.substring(originFileName.lastIndexOf("."));
				String changeName = CommonUtils.getRandomString();
				String ichangeName = changeName.substring(originFileName.lastIndexOf("."));
				BoardFile adFile = new BoardFile("BT1", originFileName, ichangeName, filePath, "2");
				int au = ls.insertFile(adFile);
				photo4.transferTo(new File(filePath + "\\" + changeName + ext));

			}
			ArrayList<BoardFile> bfile = ls.selectFile();
			model.addAttribute("bf", bfile);
			System.out.println("bfile = " + bfile);
			
			ls.insertTheater(cm);
			System.out.println("controller cm : " + cm);
			
			return "licensee/mainLicenseePage";
		}catch (IllegalStateException e) {
			model.addAttribute("msg", "영화관 추가 실패!");
			
			return "common/errorPage";
		} catch (IOException e){
			
			model.addAttribute("msg", "영화관 추가 실패!");
			
			return "common/errorPage";
			
	}
}
	*/
	
	//정태 상영관 등록(엑셀 파일 완료)
	@RequestMapping(value="movieRoomInsert.li")
	public String insertMovieRoom(Model model,MovieRoom mr, Cinema2 cm,
								HttpServletRequest request){
		
		/*MovieRoom mr = (MovieRoom)request.getSession().getAttribute("movieRoomData");*/
		
		System.out.println("mr.getMid = " + mr.getMid());
		
		mr.setMovieRoomAddress(mr.getAddress1()+","+mr.getAddress2()+","+mr.getAddress3());
	
		System.out.println("movieRoom Address = " + mr.getMovieRoomAddress());
		
		
		int result = ls.insertMovieRoom(mr);
		
		MovieRoom movieRoomId = ls.checkMovieRoomId(mr);
		
		System.out.println("movieRoomId = " + movieRoomId);
		
		System.out.println("controller mr1 = " + mr);
		mr.setMovieRoomId(movieRoomId.getMovieRoomId());		
		
		String name = mr.getMovieRoomId();
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

		//이 값이 endTime_pre
		t.setEndTime_pre(t.getTurningDay() + " " + t.getEndTime_pre());
		
		
		MovieRoom movieRoomId = ls.checkMovieRoomId(mr);
		
		System.out.println("movieRoomId = " + movieRoomId);
		
		mr.setMovieRoomId(movieRoomId.getMovieRoomId());		
		
		//MovieRoom_id 값 가져오기
		System.out.println(mr.getMovieRoomId());
		
		
		int resultPlay = ls.insertPlay(p);
		String selectPlayId = "P";
		
		//play_id 값 알아오기
		selectPlayId += ls.selectOnePlayId();
		
		System.out.println("PlayId = " + selectPlayId);
		//객체에 넣어주자
		t.setPlayId(selectPlayId);
		
		System.out.println("controller p = " + p);
		System.out.println("controller t = " + t);
		int resultTurning = ls.insertTurning(t);
		
		
		System.out.println("movieRoom : "+ mr);
		
		
/*		System.out.println(mr.getMovieRoomName());*/
		
		
		System.out.println("controller p = " + p);
		
		
		
		//String name = "TT1";
		/*String[] arr = request.getParameterValues("bak");*/
		/*String tableName = request.getParameter("table");*/
		//String tableName = "TT1";
		
		/*System.out.println("tableName = " + tableName);
		System.out.println("name = " + name);
		//셀 조회 15x15
//		String[][] num = new cellClass().test();
//		System.out.println(num[0][0]);
		
		if(tableName == ""){
			//셀 값 삽입
			new cellClass().createTurningTeble(name, request);
		}else{
			//셀 구매
			new cellClass().insertTurningCell(name, tableName, request);
		}*/
			
			//스트링 변수를 데이트 변수로 바꾸는 것 하는중 안되 ㅠㅠㅠ
		/*	String qweasad = "2011-01-18 00:00:00.0";
			Date endTimeStr = (Date)new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S").parse(t.getEndTime_pre());
			Date startTimeStr = (Date)new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S").parse(t.getStartTime_pre());
			Date turningDayStr = (Date)new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S").parse(t.getTurningDay_pre());
			
			System.out.println("endTimeStr = " + endTimeStr);
			System.out.println("startTimeStr = " + startTimeStr);
			System.out.println("turningDateStr = " + turningDayStr);*/

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


	


