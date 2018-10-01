package com.kh.dok.admin.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.dok.admin.model.exception.BlackMemberSelectListException;
import com.kh.dok.admin.model.exception.MemberSelectListException;
import com.kh.dok.admin.model.service.AdminService;
import com.kh.dok.admin.model.vo.ReportHistory;
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
		public String searchAll(Model model,int currentPage){
			String aval="all";
			String tab="tab-1";
			
				
			try {
				int listCount = as.countAll();
				PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
				ArrayList<Member> mlist;
				
				mlist = as.searchAll(pi);
				model.addAttribute("mlist",mlist);
				model.addAttribute("pi",pi);
				model.addAttribute("aval",aval);
				model.addAttribute("tab",tab);
				
				return "admin/adminPage";
			} catch (MemberSelectListException e) {
				
				model.addAttribute("msg",e.getMessage());
				
				return "common/errorPage";
			}
			
			
}
	//일반 회원 조회
		@RequestMapping("searchBu.ad")
		public String searchBu(Model model,int currentPage){
			
			String aval="buyer";
			String tab="tab-1";
			System.out.println("왔어");
			
			try {
				int listCount = as.countBu();
				
				PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
				
				ArrayList<Member> mlist;
				
				mlist = as.searchBu(pi);
				
				model.addAttribute("mlist",mlist);
				model.addAttribute("pi",pi);
				model.addAttribute("aval",aval);
				model.addAttribute("tab",tab);
				
				return "admin/adminPage";
			} catch (MemberSelectListException e) {
				
				model.addAttribute("msg",e.getMessage());
				
				return "common/errorPage";
			}
			
			
		}
		
	//판매자 회원 조회
		@RequestMapping("searchSe.ad")
		public String searchSe(Model model,int currentPage){
			
			
			String aval = "seller";
			String tab = "tab-1";
			
			try {
				int listCount = as.countSe();
				
				PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
				
				
				ArrayList<Member> mlist;
				
				mlist = as.searchSe(pi);
				
				model.addAttribute("mlist",mlist);
				model.addAttribute("pi",pi);
				model.addAttribute("aval",aval);
				model.addAttribute("tab",tab);
				
				return "admin/adminPage";
			} catch (MemberSelectListException e) {
				
				model.addAttribute("msg",e.getMessage());
				
				return "common/errorPage";
			}
			
			
		}
		
		//블랙리스트 회원 조회
		@RequestMapping("searchBlack.ad")
		public String searchBlack(Model model,int currentPage){
			
			String tab="tab-2";
			int listCount;
			try {
				listCount = as.countBl();
				
				PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
				
				ArrayList<ReportHistory> rlist = as.searchBlack(pi);
				
				model.addAttribute("pi",pi);
				model.addAttribute("rlist",rlist);
				model.addAttribute("tab",tab);
				
				return "admin/adminPage";
			} catch (BlackMemberSelectListException e) {
				model.addAttribute("msg",e.getMessage());
				
				return "common/errorPage";
			}
		}
		
		//아이디로 회원 검색
		@RequestMapping("searchId.ad")
		public String searchId(Model model,int currentPage,String searchInput){
			
			String tab="tab-1";
			
			int listCount;
			
			try {
				listCount = as.countId(searchInput);
				
				return "admin/adminPage";
			} catch (MemberSelectListException e) {
				model.addAttribute("msg",e.getMessage());
				
				return "common/errorPage";
			}
			
			
		}
}
