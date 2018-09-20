package com.kh.dok.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.dok.member.model.service.MemberService;
import com.kh.dok.member.model.vo.Member;

@Controller
@SessionAttributes("loginUser")
public class MemberController {
	@Autowired
	private MemberService ms;
	@Autowired BCryptPasswordEncoder passwordEncoder;
	
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
