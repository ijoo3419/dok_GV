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

import com.kh.dok.admin.model.service.AdminService;
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
			
			int  listCount = as.countAll();
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			ArrayList<Member> mlist = as.searchAll(pi);
			
			model.addAttribute("mlist",mlist);
			model.addAttribute("pi",pi);
			model.addAttribute("aval",aval);
			
			return "admin/adminPage";
}
	//일반 회원 조회
		@RequestMapping("searchBu.ad")
		public String searchBu(Model model,int currentPage){
			
			String aval="buyer";
			int listCount = as.countBu();
			
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			
			ArrayList<Member> mlist = as.searchBu(pi);
			
			model.addAttribute("mlist",mlist);
			model.addAttribute("pi",pi);
			model.addAttribute("aval",aval);
			
			return "admin/adminPage";
		}
		
	//판매자 회원 조회
		@RequestMapping("searchSe.ad")
		public String searchSe(Model model,int currentPage){
			
			
			String aval = "seller";
			int listCount = as.countSe();
			
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			
			
			ArrayList<Member> mlist = as.searchSe(pi);
			
			model.addAttribute("mlist",mlist);
			model.addAttribute("pi",pi);
			model.addAttribute("aval",aval);
			
			return "admin/adminPage";
		}
}
