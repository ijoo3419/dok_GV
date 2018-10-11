package com.kh.dok.board.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.dok.admin.model.vo.SearchCondition;
import com.kh.dok.board.model.exception.BoardInsertException;
import com.kh.dok.board.model.exception.BoardSelectOneException;
import com.kh.dok.board.model.vo.Board;
import com.kh.dok.board.model.vo.BoardFile;
import com.kh.dok.board.model.vo.BoardNBoardFile;

public interface BoardDao {

	int inserNotice(SqlSessionTemplate sqlSession, Board b, BoardFile bf) throws BoardInsertException;

	ArrayList selectNoticeList(SqlSessionTemplate sqlSession, BoardNBoardFile bbf);

	int listCount(SqlSessionTemplate sqlSession, SearchCondition sc);

	BoardNBoardFile selectNoticeOne(SqlSessionTemplate sqlSession, String board_id);

	int updateCount(SqlSessionTemplate sqlSession, String board_id) throws BoardSelectOneException;

}
