package com.kh.dok.board.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.dok.admin.model.vo.SearchCondition;
import com.kh.dok.board.model.dao.BoardDao;
import com.kh.dok.board.model.exception.BoardInsertException;
import com.kh.dok.board.model.exception.BoardSelectOneException;
import com.kh.dok.board.model.vo.Board;
import com.kh.dok.board.model.vo.BoardFile;
import com.kh.dok.board.model.vo.BoardNBoardFile;

@Service
public class BoardServiceImpl implements BoardService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private BoardDao bd;
	@Autowired
	private DataSourceTransactionManager transactionManager;
	
	
	@Override
	public int insertNotice(Board b, BoardFile bf) throws BoardInsertException {
		System.out.println("BoardServiceImpl 왔어요");
		
		int result = bd.inserNotice(sqlSession, b, bf);
		
		System.out.println("BoardServiceImpl result : " + result);
		
		return result;
		
	}


	@Override
	public ArrayList selectNoticeList(BoardNBoardFile bbf) {
		System.out.println("BoardServiceImpl selectNoticeList method in");
		
		return bd.selectNoticeList(sqlSession, bbf);
	}


	@Override
	public int listCount(SearchCondition sc) {
		
		return bd.listCount(sqlSession, sc);
	}

	//관리자 공지사항 페이징처리
	@Override
	public int countNoticePage(SearchCondition sc) {

		return 0;
	}


	@Override
	public BoardNBoardFile selectNoticeOne(String board_id) throws BoardSelectOneException {
		System.out.println("성희: BoardService selectNoticeOne board_id : " + board_id);
		BoardNBoardFile bbf = null;
		
		//조회수 증가
		int result = bd.updateCount(sqlSession, board_id);
		System.out.println("성희 : BoardService updateCount result : " + result);
		
		if(result > 0) return bd.selectNoticeOne(sqlSession, board_id);
		
		return bbf; 
	}

}
