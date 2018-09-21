package com.kh.dok.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	
	   @RequestMapping("writeQna.bo")
	   public String writeQnaView(){
	      return "board/writeQna";
	   }
	   
	   @RequestMapping("writeNotice.bo")
	   public String writeNoticeView(){
	      return "board/writeNotice";
	   }
	   
	   
	

}
