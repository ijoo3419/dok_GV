package com.kh.dok.board.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kh.dok.admin.model.vo.SearchCondition;
import com.kh.dok.board.model.exception.BoardInsertException;
import com.kh.dok.board.model.exception.BoardSelectOneException;
import com.kh.dok.board.model.service.BoardService;
import com.kh.dok.board.model.vo.Board;
import com.kh.dok.board.model.vo.BoardFile;
import com.kh.dok.board.model.vo.BoardNBoardFile;
import com.kh.dok.common.CommonUtils;

@Controller
public class BoardController {
	@Autowired
	private BoardService bs;
	
	   @RequestMapping("writeQna.bo")
	   public String writeQnaView(){
	      return "board/writeQna";
	   }
	   
	   @RequestMapping("writeNotice.bo")
	   public String writeNoticeView(){
	      return "board/writeNotice";
	   }
	   
	   //공지사항 등록
	   @RequestMapping(value="insertNotice.bo")
	   public String insertNotice(Model model, Board b, BoardFile bf, HttpServletRequest request,
			   						@RequestParam(name="file", required=false)MultipartFile file){
		   System.out.println("BoardController insertNotice");
		   
		   String root = request.getSession().getServletContext().getRealPath("resources");
		   String filePath = root + "\\uploadFiles";
		   
		   System.out.println("root : " + root);
		   System.out.println("filepath : " + filePath);
		   
		   String originFileName = file.getOriginalFilename();
		   System.out.println("originFileName : " + originFileName);
		   String ext = originFileName.substring(originFileName.lastIndexOf("."));
		   String changeName = CommonUtils.getRandomString();
		   
		   System.out.println("찰리찰리 uploadFile에 등록 햇나요? NO");
		   try {
			file.transferTo(new File(filePath + "\\" + changeName + ext));
			
			bf.setFile_src(filePath + "\\" + changeName + ext);
			bf.setOrigin_name(originFileName);
			bf.setEdit_name(changeName);
			
			System.out.println("찰리찰리 파일 이름 바꾸고 등록 햇나여? YES");
			
			try {
				System.out.println("BoardController try~ try~ in");
				
				int result = bs.insertNotice(b,bf);
				
				System.out.println("try result : " + result);
				
				return "licensee/noticeManagePage";
				
			} catch (Exception e) {
				System.out.println("BoardController catch~ catch~ in");
				
				new File(filePath + "\\" + changeName + ext).delete();
				
				model.addAttribute("msg", "공지사항 등록 실패! //파일등록안됨");
				
				return "common/errorPage";
			}
			
		} catch (IllegalStateException e) {
			model.addAttribute("msg", "공지사항 등록 실패! //이유모름");
			
			return "common/errorPage";
		} catch (IOException e) {
			model.addAttribute("msg", "공지사항 등록 실패! //이유모름");
			
			return "common/errorPage";
		}
		   
	   }
	
	   //공지사항 페이지로
	   @RequestMapping(value="notice.li")
		public String showNoticeView(HttpServletRequest request, Model model){
		   BoardNBoardFile bbf = new BoardNBoardFile();
		   ArrayList list = new ArrayList();
		   
		   HttpSession session = request.getSession();
		   String mid = (String)session.getAttribute("mid");
		   System.out.println("찰리찰리 mid왔나요? YES, mid is " + mid);
		   
		   bbf.setmId(mid); 
		   
		   list = bs.selectNoticeList(bbf);
		   
		   model.addAttribute("list", list);
		   
		   return "board/noticeManagePage";
		}
	   
	   //문의사항 페이지로
	   @RequestMapping(value="inquire.li")
		public String showInquireView(){
			return "board/inquireManagePage";
		}
	   
	   
	  /* @RequestMapping(value="searchNoticeBoard.bo")
	   public String searchNoticeBoard(Model model, int currentPage, String searchResult, String searchCondition){
		   SearchCondition sc = new SearchCondition(searchResult, searchCondition);
		   
		   int listCount = bs.listCount(sc);
		   
	   }
	   
	   @RequestMapping(value="noticeliPage.bo")
	   public String noticeliPage(Model model, int currentPage, String searchResult, String searchCondition){
		   SearchCondition sc = new SearchCondition(searchResult, searchCondition);
		   
		   int listCount;
		   
		   listCount = bs.countNoticePage(sc);
	   }*/
	   
	   @RequestMapping(value="selectNoticeOne.bo")
	   public String selectNoticeOne(Model model, String board_id){
		   System.out.println("성희: BoardController selectNoticeOne board_id : " + board_id);
		   
		   try {
			   BoardNBoardFile bbf = bs.selectNoticeOne(board_id);
			   
			   model.addAttribute("bbf", bbf);
			
		} catch (BoardSelectOneException e) {
			model.addAttribute("msg", "updateCount 실패");
			
			return "common/errorPage";
		}
		   
		   
		   
		   
		   return "board/noticeManagePageDetail";
	   }
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   

}
