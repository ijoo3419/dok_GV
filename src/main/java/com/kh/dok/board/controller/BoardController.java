package com.kh.dok.board.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kh.dok.board.model.vo.Board;
import com.kh.dok.board.model.vo.BoardNBoardFile;
import com.kh.dok.common.CommonUtils;

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
	   
	   @RequestMapping(value="insertNotice.bo")
	   public String insertNotice(Model model, BoardNBoardFile bnf, HttpServletRequest request,
			   						@RequestParam(name="file", required=false)MultipartFile file){
		   String root = request.getSession().getServletContext().getRealPath("resources");
		   String filePath = root + "\\uploadFiles";
		   
		   String originFileName = file.getOriginalFilename();
		   String ext = originFileName.substring(originFileName.lastIndexOf("."));
		   String changeName = CommonUtils.getRandomString();
		   
		   try {
			file.transferTo(new File(filePath + "\\" + changeName + ext));
			
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	   }
	
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   

}
