package com.kh.dok.board.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.dok.board.model.dao.BoardDao;
import com.kh.dok.board.model.exception.BoardInsertException;
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
		int result = bd.inserNotice(sqlSession, b, bf);
		
		return result;
		
	}

}
