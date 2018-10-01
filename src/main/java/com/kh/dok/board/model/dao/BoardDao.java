package com.kh.dok.board.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.dok.board.model.exception.BoardInsertException;
import com.kh.dok.board.model.vo.Board;
import com.kh.dok.board.model.vo.BoardFile;
import com.kh.dok.board.model.vo.BoardNBoardFile;

public interface BoardDao {

	int inserNotice(SqlSessionTemplate sqlSession, Board b, BoardFile bf) throws BoardInsertException;

}
