package com.kh.dok.member.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import javax.rmi.ssl.SslRMIClientSocketFactory;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kh.dok.member.model.exception.LoginException;
import com.kh.dok.member.model.service.MemberService;
import com.kh.dok.member.model.vo.Member;
import com.kh.dok.movie.model.service.MovieService;
import com.kh.dok.movie.model.vo.Movie;
import com.kh.dok.movie.model.vo.MovieSumbnail;

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

   @RequestMapping("ask.me")
   public String askView(){
      return "member/ask";
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
   
   //회원가입
   @RequestMapping(value="insert.me")
   public String insertMember(Model model, Member m){ 
	   
	   System.out.println("설마설마설마???" + m);

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
		
		return "main/main";
		
      	} catch (LoginException e) {
      		
		model.addAttribute("msg", e.getMessage());
		
		return "common/errorPage";
	}
      
   }
   
   //회원 정보 수정 - 비밀번호 비교
   @ResponseBody
   @RequestMapping("checkEditable.me")
   public int checkPass(Member m, Model model){
	   
	   int result;
	   
	try {
		result = ms.checkPass(m);
		return result;
		
	} catch (LoginException e) {
		
		result = 0;
		return result;
		
	}
	   
   }
   
   //암호화 처리 로그아웃(성희)
   @RequestMapping("logout.me")
   public String logout(SessionStatus status){
	   status.setComplete();
	   
	   return "main/main";

   }
   
   //메일 인증  + 보내기 (이주)
   @ResponseBody
   @RequestMapping("checkMail.me")
   public int emailAuth(HttpServletResponse response, HttpServletRequest request) throws Exception {
	   
	   System.out.println("오니?");
	   
	   String email = request.getParameter("email");
	   String authNum = "";
	   int authNumOrig = 0;
	   
	   System.out.println("이잉미멤일일" + email);
	   
	   authNum = RandomNum();
	   authNumOrig = Integer.parseInt(authNum);

	   sendEmail(email.toString(),authNum);
	   
	   return authNumOrig;
	   
   }
   
   private void sendEmail(String email, String authNum){
	   String host = "smtp.gmail.com";
	   String subject = "독GV에 오신것을 진심으로 환영합니다! 이메일 인증을 진행해 주세요.";
	   String fromName = "독GV";
	   String from = "dokdokdokGV@gmail.com";
	   String to1 = email;
	   
	   String content = "인증번호[" + authNum + "]";
	   
	   System.out.println("이멜로 간 인증번호" +  authNum);
	   
	   try {
		   
		   Properties props = new Properties();
		   
		   props.put("mail.smtp.starttls.enable", "true");
		   props.put("mail.transport.protocol", "smtp");
		   props.put("mail.smtp.host", host);
		   props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		   props.put("mail.smtp.port", "465");
		   props.put("mail.smtp.user", from);
		   props.put("mail.smtp.auth", "true");
		   
		   Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
			   protected PasswordAuthentication getPasswordAuthentication(){
				   return new PasswordAuthentication("dokdokdokGV", "dokdokdok123"); //이거 username 바꿔가면서 try
			   }
		   });
		   
		  Message msg = new MimeMessage(mailSession);
		  msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(fromName, "UTF-8", "B")));
		  
		  InternetAddress[] address1 = { new InternetAddress(to1) };
		  msg.setRecipients(Message.RecipientType.TO, address1);
		  msg.setSubject(subject);
		  msg.setSentDate(new java.util.Date());
		  msg.setContent(content, "text/html;charset=euc-kr");
		  
		  Transport.send(msg);
		   
	   } catch (MessagingException e) {
		   e.printStackTrace();
	   } catch (Exception e) {
		   e.printStackTrace();
	   }
   }
   
   public String RandomNum(){
	   StringBuffer buffer = new StringBuffer();
	   for (int i = 0; i < 6; i++){
		   int n = (int) (Math.random() * 10);
		   buffer.append(n);
	   }
	   return buffer.toString();
   }
   
   //닉네임 중복 체크
   @ResponseBody
   @RequestMapping("checkNick.me")
   public int checkNickname(Member m, Model model){
	   
	   int result = ms.checkNick(m);
	   
	   if(result > 0){
		   result = 1;
		   return result;
	   } else {
		   result = 0;
		   return result;
	   }
	   
   }
   
   //이메일 중복 체크
   @ResponseBody
   @RequestMapping("checkSame.me")
   public int checkSameMail(Member m, Model model){
	   
	   int result = ms.checkSame(m);
	   
	   if(result > 0){
		   result = 1;
		   return result;
	   } else {
		   result = 0;
		   return result;
	   }
	   
   }
     
   //회원 정보 수정 - 정보 업데이트
   @ResponseBody
   @RequestMapping("updateInfo.me")
   public int updateInfo(Member m, Model model) {
	   
	   int result = ms.updateInfo(m);
	   
	  
	   
	   if(result > 0){
		   result = 1;
		   
		   //수정한 정보를 loginUser세션에 재입력한다.
		   model.addAttribute("loginUser", ms.selectUser(m));
		   
		   return result;
	   } else {
		   result = 0;
		   return result;
	   }
	   
   }
   

   //위시리스트(보고싶어) DB에 저장 (황이주)
   @ResponseBody
   @RequestMapping("insertWish.me")
   public int insertWishlist(Movie m, Model model){
	   System.out.println(m);
	   
	   int result = ms.insertWish(m);
	   
	   if(result > 0){
		   result = 1;
		   //위시리스트 반영되게 보여주는 거 추가해야 함 (회원정보 수정처럼)
		   return result;
	   } else {
		   result = 0;
		   return result;
	   }
	   
   }

   //카카오 로그인(성희)
   @RequestMapping("kakaologin.me")
   public String kakaologin(Member m, Model model){
	   System.out.println("카카오 로그인 : " + m);
	   
	   //1. 기존 유저인가 확인
	   int kakaoUserCheck = ms.kakaoUserCheck(m);
	   
	   //2. 새 유저면 회원가입
	   if(kakaoUserCheck == 11){
		   int insertresult = ms.insertKakaoMember(m);
		   
		   Member loginUser = ms.loginKakaoMember(m);
		   
		   
		   
		 
		   model.addAttribute("loginUser", loginUser);
		   
		   /*session.setAttribute("loginUser", m);
		   model.addAttribute("loginUser", m);*/
		   System.out.println("시소에서 : " + m.getEmail() + m);
		   System.out.println("loginUser : " + loginUser);

		   return "member/insertMyInfo";

	   }else if(kakaoUserCheck == 22){	//3. 기존 유저면 로그인
		   Member loginUser = ms.loginKakaoMember(m);
		   
		   
		   model.addAttribute("loginUser", loginUser);
		   
		   return "main/main";
	   }else{
		   model.addAttribute("msg", "카카오 로그인 실패");
		   
		   return "common/errorPage";
	   }
	   
   }
   
   //카톡유저 추가정보 업데이트(성희)
   @RequestMapping(value="updatePlusInfo.me")
   public String updatePlusInfo(Model model, Member m){
	   int result = ms.updatePlusInfo(m);
	   
	   if(result > 0){
		   return "main/main";
	   }else{
		   model.addAttribute("msg", "카톡유저 추가정보 입력 실패!");
		   
		   return "common/errorPage";
	   }
   }
   
   //판매자 등록 시 user_class update (황이주)
   @ResponseBody
   @RequestMapping("updateClass.me")
   public int updateClass(Model model, Member m){
	   int result = ms.updateClass(m);
	   
	   if(result > 0){
		   result = 1;
		   
		   //수정한 정보를 loginUser세션에 재입력한다.
		   model.addAttribute("loginUser", ms.selectUser(m));
		   
		   return result;
	   } else {
		   result = 0;
		   return result;
	   }
	   
   }
   
   //위시리스트 뷰 출력
	@RequestMapping("wishlist.me")
	public String wishlistView(MovieSumbnail msn, Model model, Member m, HttpServletRequest request){
		
		String mid = request.getParameter("mid");
		
		System.out.println("MomberController movie.mo에 담긴 m의 값은?? " + mid);
		
		ArrayList<MovieSumbnail> wishlistView = ms.selectWishList(msn, m);
		
		model.addAttribute("wishlistView", wishlistView);
		
		return "member/wishlist";
	}
	
	//예매내역 뷰 출력
	 @RequestMapping("bookingHist.me")
	 public String bookingHistView(){
	    return "member/bookingHist";
	 }


}