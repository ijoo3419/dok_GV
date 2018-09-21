package com.kh.dok.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.dok.admin.model.service.AdminService;
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
		@RequestMapping("searchAll.ad")
		public String searchAll(Model model){
			
			ArrayList<Member> mlist = as.searchAll();
			
			model.addAttribute("mlist",mlist);
			
			return "admin/adminPage";
}
}
