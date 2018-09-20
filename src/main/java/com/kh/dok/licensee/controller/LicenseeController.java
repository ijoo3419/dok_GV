package com.kh.dok.licensee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LicenseeController {
	@RequestMapping("licensee.li")
	public String showLicenseeView(){
		return "licensee/playManagePage";
	}	

}
