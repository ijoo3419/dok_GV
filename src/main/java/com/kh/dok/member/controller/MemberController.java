package com.kh.dok.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@RequestMapping("member.me")
	public String showMypageView(){
		return "member/mypage_main";
	}
	
	@RequestMapping("editInfo.me")
	public String editInfoView(){
		return "member/editInfo";
	}
	@RequestMapping("bookingHist.me")
	public String bookingHistView(){
		return "member/bookingHist";
	}
	@RequestMapping("ask.me")
	public String askView(){
		return "member/ask";
	}
	@RequestMapping("wishlist.me")
	public String wishlistView(){
		return "member/wishlist";
	}
	@RequestMapping("reviews.me")
	public String reviewsView(){
		return "member/reviews";
	}
	
	@RequestMapping("theaterAdd.me")
	public String theaterAddView(){
		return "member/theaterAdd";
	}
	
	@RequestMapping("login.me")
	public String loginCheck(Member m, Model model){
		model.addAttribute("loginUser", ms.loginMember(m));
	}

}
