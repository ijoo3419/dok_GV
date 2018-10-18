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
import com.kh.dok.board.model.vo.SearchCondition1;
import com.kh.dok.common.PageInfo;
import com.kh.dok.review.model.vo.Reply;

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


	/*@Override
	public ArrayList selectNoticeList(BoardNBoardFile bbf) {
		System.out.println("BoardServiceImpl selectNoticeList method in");
		
		return bd.selectNoticeList(sqlSession, bbf);
	}*/


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


	//판매자 공지사항 전체갯수 조회용 페이징(성희)
	@Override
	public int getlistCount(String mId) {

		int listCount = bd.getlistCount(sqlSession, mId);
		
		return listCount;
	}

	//판매자 공지사항 글 불러오기(성희)
	@Override
	public ArrayList<BoardNBoardFile> selectNoticeList(PageInfo pi, String mId) {

		ArrayList<BoardNBoardFile> list = bd.selectNoticeList(sqlSession, pi, mId);
		
		System.out.println("성희 : BoardServiceImpl selectNoticeList list : " + list);
		
		return list;
	}

	//검색결과 갯수 가져오기(성희)
	@Override
	public int getSearchResultListCount(SearchCondition1 sc) {
		
		return bd.getSearchResultListCount(sqlSession, sc);
	}

	//검색결과 리스트 가져오기 (성희)
	@Override
	public ArrayList<BoardNBoardFile> selectSearchNoticeList(PageInfo pi, SearchCondition1 sc) {
		ArrayList<BoardNBoardFile> list = bd.selectSearchNoticeList(sqlSession, pi, sc);
		
		System.out.println("성희 : 검색결과 리스트 가져옴 list : " + list);
		
		return list;
	}


	//관리자 공지사항 글 클릭시(조회수 증가)
	@Override
	public BoardNBoardFile selectAdminNoticeOne(String board_id) throws BoardSelectOneException {
		System.out.println("성희: BoardService selectAdminNoticeOne board_id : " + board_id);
		BoardNBoardFile bbf = null;
		
		//조회수 증가
		int result = bd.updateCount(sqlSession, board_id);
		System.out.println("성희 : BoardService updateCount result : " + result);
		
		if(result > 0) return bd.selectAdminNoticeOne(sqlSession, board_id);
		
		return bbf; 
	}

	//관리자 문의사항 getlistCount
	@Override
	public int getInquirelistCount(String TheaterId) {

		return bd.getInquirelistCount(sqlSession, TheaterId);
	}


	//getThearterId
	@Override
	public String getTheaterId(String mid) {
		return bd.getTheaterId(sqlSession, mid);
	}

	//관리자 문의사항 글 리스트 불러오기
	@Override
	public ArrayList<BoardNBoardFile> selectINquireList(PageInfo pi, String theaterId) {
		ArrayList<BoardNBoardFile> list = bd.selectINquireList(sqlSession, pi, theaterId);
		
		return list;
	}

	//판매자 문의사항 클릭시
	@Override
	public BoardNBoardFile selectInquireOne(String board_id) throws BoardSelectOneException {
		BoardNBoardFile bbf = null;
		
		int result = bd.updateCount(sqlSession, board_id);
		
		System.out.println("성희 : 판매자 문의사항 result : " + result +", board_id : " + board_id);
		
		if(result > 0) return bd.selectNoticeOne(sqlSession, board_id);
		
		return bbf;
	}

	//댓글 등록하기
	@Override
	public int addComment(Reply reply) {

		return bd.addComment(sqlSession, reply);
	}


	@Override
	public ArrayList<Reply> selectReply(String bid) {

		return bd.selectReply(sqlSession, bid);
	}

}
