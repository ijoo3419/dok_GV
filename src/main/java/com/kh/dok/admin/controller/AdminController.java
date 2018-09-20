package com.kh.dok.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
	@RequestMapping("admin.ad")
	public String showAdminView(){
		return "admin/adminPage";
	}
}
