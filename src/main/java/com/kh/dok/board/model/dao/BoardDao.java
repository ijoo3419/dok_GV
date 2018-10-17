package com.kh.dok.board.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.dok.admin.model.vo.SearchCondition;
import com.kh.dok.board.model.exception.BoardInsertException;
import com.kh.dok.board.model.exception.BoardSelectOneException;
import com.kh.dok.board.model.vo.Board;
import com.kh.dok.board.model.vo.BoardFile;
import com.kh.dok.board.model.vo.BoardNBoardFile;
import com.kh.dok.board.model.vo.SearchCondition1;
import com.kh.dok.common.PageInfo;

public interface BoardDao {

	int inserNotice(SqlSessionTemplate sqlSession, Board b, BoardFile bf) throws BoardInsertException;

	/*ArrayList selectNoticeList(SqlSessionTemplate sqlSession, BoardNBoardFile bbf);*/

	int listCount(SqlSessionTemplate sqlSession, SearchCondition sc);

	BoardNBoardFile selectNoticeOne(SqlSessionTemplate sqlSession, String board_id);

	int updateCount(SqlSessionTemplate sqlSession, String board_id) throws BoardSelectOneException;

	int getlistCount(SqlSessionTemplate sqlSession, String mId);

	ArrayList<BoardNBoardFile> selectNoticeList(SqlSessionTemplate sqlSession, PageInfo pi, String mId);

	int getSearchResultListCount(SqlSessionTemplate sqlSession, SearchCondition1 sc);

	ArrayList<BoardNBoardFile> selectSearchNoticeList(SqlSessionTemplate sqlSession, PageInfo pi, SearchCondition1 sc);

	BoardNBoardFile selectAdminNoticeOne(SqlSessionTemplate sqlSession, String board_id);

	int getInquirelistCount(SqlSessionTemplate sqlSession, String TheaterId);

	String getTheaterId(SqlSessionTemplate sqlSession, String mid);

	ArrayList<BoardNBoardFile> selectINquireList(SqlSessionTemplate sqlSession, PageInfo pi, String theaterId);

}
