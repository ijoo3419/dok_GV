package com.kh.dok.board.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dok.admin.model.vo.SearchCondition;
import com.kh.dok.board.model.exception.BoardInsertException;
import com.kh.dok.board.model.exception.BoardSelectOneException;
import com.kh.dok.board.model.vo.Board;
import com.kh.dok.board.model.vo.BoardFile;
import com.kh.dok.board.model.vo.BoardNBoardFile;
import com.kh.dok.board.model.vo.SearchCondition1;
import com.kh.dok.common.PageInfo;
import com.kh.dok.review.model.vo.Reply;

@Repository
public class BoardDaoImpl implements BoardDao{

	//공지사항 등록
	@Override
	public int inserNotice(SqlSessionTemplate sqlSession, Board b, BoardFile bf) throws BoardInsertException {
		int BResult = sqlSession.insert("Board.insertNotice", b);
		
		System.out.println("BoardDaoImpl Boardinsert 성공");
		if(BResult > 0){
			String board_id = sqlSession.selectOne("Board.selectBoardId", b);
			bf.setBoard_id(board_id);
			
			System.out.println("BoardDaoImpl board_id 조회 성공 + " + board_id);
			
			
			int BFResult = sqlSession.insert("Board.insertNoticeFile", bf);
			System.out.println("BoardDaoImpl File insert 성공");
			
			if(BFResult > 0){
				
				return BFResult;
			}else{
				throw new BoardInsertException("3단계 : 첨부파일 등록 실패!");
			}
			
		}else{
			throw new BoardInsertException("1단계 : 공지글 insert 실패!");
		}
		
	}

	/*//공지사항 리스트 조회
	@Override
	public ArrayList selectNoticeList(SqlSessionTemplate sqlSession, BoardNBoardFile bbf) {
		System.out.println("BoardDaoImpl selectNoticeList method in");
		
		ArrayList list = (ArrayList) sqlSession.selectList("Board.selectNoticeList", bbf);
		System.out.println("BoardDaoImpl selectNoticList mapper 갔다와서 list : " + list);
		
		
		return list;
	}*/

	//페이징
	@Override
	public int listCount(SqlSessionTemplate sqlSession, SearchCondition sc) {
		System.out.println("listCount sc : " + sc);
		
		int listCount = sqlSession.selectOne("Board.listCount", sc);
		
		return listCount;
	}

	//페이징
	@Override
	public BoardNBoardFile selectNoticeOne(SqlSessionTemplate sqlSession, String board_id) {
		System.out.println("성희: BoardDaoImpl selectNoticeOne board_id : " + board_id);
		
		BoardNBoardFile bbf = sqlSession.selectOne("Board.selectNoticeOne", board_id);
		
		System.out.println("성희 : 보드 다오에서 보려고 한거  bbf : " + bbf);
		return bbf;
	}

	//조회수 업데이트
	@Override
	public int updateCount(SqlSessionTemplate sqlSession, String board_id) throws BoardSelectOneException {
		System.out.println("성희: BoardDaoImpl updateCount board_id : " + board_id);
		int result = -99;
		
		result = sqlSession.update("Board.updateCount", board_id);
		
		System.out.println("성희: BoardDaoImpl updateCount result : " + result);
		
		if(result > 0) return result;
		else throw new BoardSelectOneException("성희: BoardDaoImpl updateCount 증가 실패");
		
	}

	//페이징 게시글 전체 수
	@Override
	public int getlistCount(SqlSessionTemplate sqlSession, String mId) {
		
		int listCount = sqlSession.selectOne("Board.getlistCount", mId);
		
		return listCount;
	}

	//페이지 글 제목 불러오기 10개
	@Override
	public ArrayList<BoardNBoardFile> selectNoticeList(SqlSessionTemplate sqlSession, PageInfo pi, String mId) {
		ArrayList<BoardNBoardFile> list = null;

		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		list = (ArrayList)sqlSession.selectList("Board.selectNoticeList", mId, rowBounds);
		
		System.out.println("성희 : BoardDaoImpl selectNoticeList list : " + list);
		
		
		return list;
	}
	
	//검색결과 갯수 불러오기(성희)
	@Override
	public int getSearchResultListCount(SqlSessionTemplate sqlSession, SearchCondition1 sc) {
		int result = sqlSession.selectOne("Board.getSearchResultListCount", sc);
		
		return result; 
	}

	//검색결과 리스트 불러오기 (성희)
	@Override
	public ArrayList<BoardNBoardFile> selectSearchNoticeList(SqlSessionTemplate sqlSession, PageInfo pi, SearchCondition1 sc) {
		ArrayList<BoardNBoardFile> list = null;
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		list = (ArrayList)sqlSession.selectList("Board.selectSearchNoticeList", sc, rowBounds);
		
		System.out.println("성희 : dao 검색결과 리스트 가져옴 list : " + list);
		
		return list;
	}

	@Override
	public BoardNBoardFile selectAdminNoticeOne(SqlSessionTemplate sqlSession, String board_id) {
		return sqlSession.selectOne("Board.selectNoticeOne", board_id);
	}

	@Override
	public int getInquirelistCount(SqlSessionTemplate sqlSession, String TheaterId) {
  
		return sqlSession.selectOne("Board.getInquirelistCount", TheaterId);
	}

	//getThearterId
	@Override
	public String getTheaterId(SqlSessionTemplate sqlSession, String mid) {
		System.out.println("보드다오임플 mid : " + mid);
		return sqlSession.selectOne("Board.getTheaterId", mid);
	}

	//판매자 문의사항 글 제목 10개 불러오기
	@Override
	public ArrayList<BoardNBoardFile> selectINquireList(SqlSessionTemplate sqlSession, PageInfo pi, String theaterId) {
		ArrayList<BoardNBoardFile> list = null;
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		list = (ArrayList)sqlSession.selectList("Board.selectINquireList", theaterId, rowBounds);
		
		
		
		return list;
	}

	@Override
	public int addComment(SqlSessionTemplate sqlSession, Reply reply) {
		System.out.println("성희 : addComment dao reply : " + reply);

		int result = sqlSession.insert("Board.addComment", reply);
		System.out.println("리절트~~! : " + result);
		return result;
	}

	@Override
	public ArrayList<Reply> selectReply(SqlSessionTemplate sqlSession, String bid) {
		
		ArrayList<Reply> list = null;
		list = (ArrayList)sqlSession.selectList("Board.selectReply", bid);
		
		System.out.println("보드다오임플 댓글 list : " + list);
		
		return list;
	}

	
  
}
