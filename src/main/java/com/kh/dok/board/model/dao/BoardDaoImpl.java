package com.kh.dok.board.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dok.board.model.exception.BoardInsertException;
import com.kh.dok.board.model.vo.Board;
import com.kh.dok.board.model.vo.BoardFile;
import com.kh.dok.board.model.vo.BoardNBoardFile;

@Repository
public class BoardDaoImpl implements BoardDao{

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

	@Override
	public ArrayList selectNoticeList(SqlSessionTemplate sqlSession, BoardNBoardFile bbf) {

		return (ArrayList) sqlSession.selectList("Board.selectNoticeList", bbf);
	}

}
