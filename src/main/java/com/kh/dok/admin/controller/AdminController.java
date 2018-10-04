package com.kh.dok.admin.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.dok.admin.model.exception.BlackMemberSelectListException;
import com.kh.dok.admin.model.exception.MemberSelectListException;
import com.kh.dok.admin.model.exception.SearchMemberException;
import com.kh.dok.admin.model.service.AdminService;
import com.kh.dok.admin.model.vo.ReportHistory;
import com.kh.dok.admin.model.vo.SearchCondition;
import com.kh.dok.common.PageInfo;
import com.kh.dok.common.Pagination;
import com.kh.dok.member.model.vo.Member;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService as;
	
	//관리자 페이지로 이동
	@RequestMapping("admin.ad")
	public String showAdminView(){
		return "admin/adminPage";
	}
	
	//전체 회원 조회
		@RequestMapping(value="searchAll.ad")
		public String searchAll(Model model,int currentPage,String searchResult,String searchCondition){
			String tab="tab-1";
			String aval = "all";
			
			SearchCondition sc = new SearchCondition(searchResult,searchCondition);
			
			try {
				int listCount = as.countAll(sc);
				System.out.println("카운트올은? " + listCount);
				PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
				ArrayList<Member> mlist; 
				
				mlist = as.searchAll(pi,sc);
				model.addAttribute("mlist",mlist);
				model.addAttribute("pi",pi);
				model.addAttribute("aval",aval);
				model.addAttribute("tab",tab);
				model.addAttribute("sc",sc);
				
				return "admin/adminPage";
			} catch (MemberSelectListException e) {
				
				model.addAttribute("msg",e.getMessage());
				
				return "common/errorPage";
			}
			
			
}
	//일반 회원 조회
		@RequestMapping("searchBu.ad")
		public String searchBu(Model model,int currentPage,String searchResult,String searchCondition){
			
			String aval="buyer";
			String tab="tab-1";
			
			SearchCondition sc = new SearchCondition(searchResult,searchCondition);
			
			try {
				int listCount = as.countBu(sc);
				System.out.println("bu카운트는?"+listCount);
				PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
				
				ArrayList<Member> mlist;
				
				mlist = as.searchBu(pi,sc);
				
				model.addAttribute("mlist",mlist);
				model.addAttribute("pi",pi);
				model.addAttribute("aval",aval);
				model.addAttribute("tab",tab);
				model.addAttribute("sc",sc);
				
				return "admin/adminPage";
			} catch (MemberSelectListException e) {
				
				model.addAttribute("msg",e.getMessage());
				
				return "common/errorPage";
			}
			
			
		}
		
	//판매자 회원 조회
		@RequestMapping("searchSe.ad")
		public String searchSe(Model model,int currentPage,String searchResult,String searchCondition){
			
			
			String aval = "seller";
			String tab = "tab-1";
			
			SearchCondition sc = new SearchCondition(searchResult,searchCondition);
			
			try {
				int listCount = as.countSe(sc);
				System.out.println("카운트se : "+listCount);
				
				PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
				
				
				ArrayList<Member> mlist;
				
				mlist = as.searchSe(pi,sc);
				
				model.addAttribute("mlist",mlist);
				model.addAttribute("pi",pi);
				model.addAttribute("aval",aval);
				model.addAttribute("tab",tab);
				model.addAttribute("sc",sc);
				
				return "admin/adminPage";
			} catch (MemberSelectListException e) {
				
				model.addAttribute("msg",e.getMessage());
				
				return "common/errorPage";
			}
			
			
		}
		
		//블랙리스트 회원 조회
		@RequestMapping("searchBlack.ad")
		public String searchBlack(Model model,int currentPage,String searchResult,String searchCondition){
			
			String tab="tab-2";
			SearchCondition sc = new SearchCondition(searchResult,searchCondition);
			int listCount;
			try {
				listCount = as.countBl(sc);
				
				PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
				
				ArrayList<ReportHistory> rlist = as.searchBlack(pi,sc);
				
				model.addAttribute("pi",pi);
				model.addAttribute("rlist",rlist);
				model.addAttribute("tab",tab);
				model.addAttribute("sc",sc);
				
				return "admin/adminPage";
			} catch (BlackMemberSelectListException e) {
				model.addAttribute("msg",e.getMessage());
				
				return "common/errorPage";
			}
		}

		}

