package com.kh.dok.board.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kh.dok.board.model.exception.BoardInsertException;
import com.kh.dok.board.model.service.BoardService;
import com.kh.dok.board.model.vo.Board;
import com.kh.dok.board.model.vo.BoardFile;
import com.kh.dok.board.model.vo.BoardNBoardFile;
import com.kh.dok.common.CommonUtils;

@Controller
public class BoardController {
	@Autowired
	private BoardService bs;
	
	   @RequestMapping("writeQna.bo")
	   public String writeQnaView(){
	      return "board/writeQna";
	   }
	   
	   @RequestMapping("writeNotice.bo")
	   public String writeNoticeView(){
	      return "board/writeNotice";
	   }
	   
	   //공지사항 등록
	   @RequestMapping(value="insertNotice.bo")
	   public String insertNotice(Model model, Board b, BoardFile bf, HttpServletRequest request,
			   						@RequestParam(name="file", required=false)MultipartFile file){
		   
		   String root = request.getSession().getServletContext().getRealPath("resources");
		   String filePath = root + "\\uploadFiles";
		   
		   String originFileName = file.getOriginalFilename();
		   String ext = originFileName.substring(originFileName.lastIndexOf("."));
		   String changeName = CommonUtils.getRandomString();
		   
		   System.out.println("찰리찰리 uploadFile에 등록 햇나요? NO");
		   try {
			file.transferTo(new File(filePath + "\\" + changeName + ext));
			
			bf.setFile_src(filePath + "\\" + changeName + ext);
			bf.setOrigin_name(originFileName);
			bf.setEdit_name(changeName);
			
			System.out.println("찰리찰리 파일 이름 바꾸고 등록 햇나여? YES");
			try {
				int result = bs.insertNotice(b,bf);
				
				return "licensee/noticeManagePage";
				
			} catch (Exception e) {
				new File(filePath + "\\" + changeName + ext).delete();
				
				model.addAttribute("msg", "공지사항 등록 실패! //파일등록안됨");
				
				return "common/errorPage";
			}
			
		} catch (IllegalStateException e) {
			model.addAttribute("msg", "공지사항 등록 실패! //이유모름");
			
			return "common/errorPage";
		} catch (IOException e) {
			model.addAttribute("msg", "공지사항 등록 실패! //이유모름");
			
			return "common/errorPage";
		}
		   
	   }
	
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   

}
