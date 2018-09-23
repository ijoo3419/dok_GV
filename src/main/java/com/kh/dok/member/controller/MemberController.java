package com.kh.dok.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.kh.dok.member.model.exception.LoginException;
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
   public String loginView(){
      return "member/login";
   } 
   @RequestMapping("signUp.me")
   public String signupView(){
      return "member/signup";
   } 
   

   @RequestMapping(value="insert.me")
   public String insertMember(Model model, Member m){ 
	   
	   System.out.println("나와라나와라" + m);

	   m.setUser_pwd(passwordEncoder.encode(m.getUser_pwd()));
	   
	   int result = ms.insertMember(m);
	   
	   System.out.println("controller Member : " + m);
	   
		if(result > 0){
			return "main/main";
		} else {
			model.addAttribute("msg", "회원 가입 실패");
			return "common/errorPage";
		}
   }

   //암호화 처리 로그인(성희)
   @RequestMapping("loginCheck.me")
   public String loginCheck(Member m, Model model){
	   
	   System.out.println("loginCheck MemberController : " + m);
	   
      try {
		model.addAttribute("loginUser", ms.loginMember(m));
		
		System.out.println("MemberController in try : " + m);
		
		return "main/main";
		
      	} catch (LoginException e) {
      		
		model.addAttribute("msg", e.getMessage());
		
		System.out.println("MemberController in catch : " + m);
		
		return "common/errorPage";
	}
      
   }
   
   //암호화 처리 로그아웃(성희)
   @RequestMapping("logout.me")
   public String logout(SessionStatus status){
	   status.setComplete();
	   
	   return "main/main";

   }

}