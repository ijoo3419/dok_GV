
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

import com.kh.dok.board.model.exception.BoardInsertException;
import com.kh.dok.board.model.exception.BoardSelectOneException;
import com.kh.dok.board.model.service.BoardService;
import com.kh.dok.board.model.vo.Board;
import com.kh.dok.board.model.vo.BoardFile;
import com.kh.dok.board.model.vo.BoardNBoardFile;
import com.kh.dok.board.model.vo.SearchCondition1;
import com.kh.dok.common.CommonUtils;
import com.kh.dok.common.PageInfo;
import com.kh.dok.common.Pagination;
import com.kh.dok.member.model.vo.Member;

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
	   
	   @RequestMapping("modifyNotice.bo")
	   public String modifyNotice(){
		   return "board/noticeManagePageModify";
	   }
	   
	   @RequestMapping("modifyAdminNotice.bo")
	   public String modifyAdminNotice(Model model){
		   String tab = "tab-6";
		   model.addAttribute("tab", tab);
		   
		   return "board/adminNoticeModify";
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
				
				return "board/noticeManagePage";
				
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
	
	   //판매자 공지사항 페이지로
	   @RequestMapping(value="notice.li")
		public String showNoticeView(PageInfo p, HttpServletRequest request, Model model){
		   BoardNBoardFile bbf = new BoardNBoardFile();
		   
		   HttpSession session = request.getSession();
		   String mid = (String)session.getAttribute("mid");
		   bbf.setmId(mid); 
		   
		   if(p.getCurrentPage() == 0){
			   p.setCurrentPage(1);
		   }
		   
		   
		   int listCount = bs.getlistCount(mid);
		   
		   PageInfo pi = Pagination.getPageInfo(p.getCurrentPage(), listCount);
		   
		   ArrayList<BoardNBoardFile> list = bs.selectNoticeList(pi, mid);
		   
		   
		  
		   
		   model.addAttribute("pi", pi);
		   
		   
		   /*list = bs.selectNoticeList(pi);*/
		   
		   model.addAttribute("list", list);
		   
		   return "board/noticeManagePage";
		}
	   
	   //메인공지 페이지로
	   @RequestMapping(value="goNoticeMain.bo")
		public String goNoticeMain(PageInfo p, HttpServletRequest request, Model model){
		   BoardNBoardFile bbf = new BoardNBoardFile();
		   
		   //관리자가 쓴 공지만 가져오게 바꾸기
		   Member m = (Member)request.getSession().getAttribute("loginUser");
		   String mid = m.getMid();
		   
		   if(p.getCurrentPage() == 0){
			   p.setCurrentPage(1);
		   }
		   
		   
		   int listCount = bs.getlistCount(mid);
		   
		   PageInfo pi = Pagination.getPageInfo(p.getCurrentPage(), listCount);
		   
		   ArrayList<BoardNBoardFile> list = bs.selectNoticeList(pi, mid);
		   
		   
		  
		   
		   model.addAttribute("pi", pi);
		   
		   
		   /*list = bs.selectNoticeList(pi);*/
		   
		   model.addAttribute("list", list);
		   
		   return "board/NoticeMain";
		}
	   
	   
	   //문의사항 페이지로
	   @RequestMapping(value="inquire.li")
		public String showInquireView(PageInfo p, HttpServletRequest request, Model model){
		   BoardNBoardFile bbf = new BoardNBoardFile();
		   
		   
		   
		   
		   
			return "board/inquireManagePage";
		}
	   
	   

	  @RequestMapping(value="searchNoticeBoard.bo")
	   public String searchNoticeBoard(Model model, String searchCondition, String searchValue, HttpServletRequest request, PageInfo p){
		  SearchCondition1 sc = new SearchCondition1();
		  
		  if(searchCondition.equals("btitle")){
			  sc.setBtitle(searchValue);
		  }
		  if(searchCondition.equals("bcontent")){
			  sc.setBcontent(searchValue);
		  }
		  
		  
		  if(p.getCurrentPage() == 0){
			  p.setCurrentPage(1);
		  }
		  
		  int listCount = bs.getSearchResultListCount(sc);
		  
		  PageInfo pi = Pagination.getPageInfo(p.getCurrentPage(), listCount);
		  
		  ArrayList<BoardNBoardFile> list = bs.selectSearchNoticeList(pi, sc);
		  
		  System.out.println("성희 : 컨트롤러 검색결과 list 조회해옴 list : " + list);
		  
		  model.addAttribute("pi", pi);
		  model.addAttribute("list", list);
		  
		  return "board/noticeManagePage";
		 
		   
	   }
	  
	  /* 
	   @RequestMapping(value="noticeliPage.bo")
	   public String noticeliPage(Model model, int currentPage, String searchResult, String searchCondition){
		   SearchCondition sc = new SearchCondition(searchResult, searchCondition);
		   
		   int listCount;
		   
		   listCount = bs.countNoticePage(sc);
	   }*/
	   
	  //판매자 공지사항 클릭시
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
	   
	   
	   //관리자 공지사항 클릭시
	   @RequestMapping(value="selectAdminNoticeOne.bo")
	   public String selectAdminNoticeOne(Model model, String board_id){
		   System.out.println("성희: BoardController selectAdminNoticeOne board_id : " + board_id);
		   String tab = "tab-6";
		   
		   try {
			   BoardNBoardFile bbf = bs.selectAdminNoticeOne(board_id);
			   model.addAttribute("bbf", bbf);
			  model.addAttribute("tab", tab);
			
		} catch (BoardSelectOneException e) {
			model.addAttribute("msg", "updateCount 실패");
			
			
			return "common/errorPage";
		}
		   
		   
		   
		   
		   return "board/adminNoticeDetail";
	   }
	   
	   //공지사항 페이징
	  /* @RequestMapping(value="NoticePaging.bo")
	   public String NoticePaging(PageInfo p, Model model, HttpServletRequest request){
		   String mId = (String)request.getParameter("mId");
		   int currentPage = 1;
		   
		   System.out.println("성희 : BoardController NoticePaging mid : " + mId + ", currentPage : " + currentPage);
		   if(request.getParameter("currentPage") != null){
			   currentPage = Integer.parseInt(request.getParameter("currentPage"));
		   }
		   
		   
		   int listCount = bs.getlistCount(mId);
		   System.out.println("성희 : BoardController NoticePaging listCount : " + listCount);
		   
		   PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		   
		   ArrayList<BoardNBoardFile> list = bs.selectNoticeList(pi, mId);
		   System.out.println("성희 : BoardController NoticePaging list : " + list);
		   
		   model.addAttribute("list", list);
		   model.addAttribute("pi", pi);
		   
		   return "board/noticeManagePage";
		   
	   }*/
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   //관리자 부분 게시글
	   //관리자 공지사항 페이지로
	   @RequestMapping(value="adminNotice.ad")
	   public String showAdminNotice(PageInfo p, HttpServletRequest request, Model model){
		   BoardNBoardFile bbf = new BoardNBoardFile();
		   
		   //관리자 계정으로 바꾸기
		   Member m = (Member)request.getSession().getAttribute("loginUser");
		   String mid = m.getMid();
		   bbf.setmId(mid);
		   
		   if(p.getCurrentPage() == 0){
			   p.setCurrentPage(1);
		   }
		   
		   int listCount = bs.getlistCount(mid);
		   
		   PageInfo pi = Pagination.getPageInfo(p.getCurrentPage(), listCount);
		   
		   ArrayList<BoardNBoardFile> list = bs.selectNoticeList(pi, mid);
		   
		   String tab = "tab-6";
		   model.addAttribute("tab", tab);
		   model.addAttribute("pi", pi);
		   model.addAttribute("list", list);
		   
		   
		   
		   return "admin/adminPage";
		   
	   }
	   

}

