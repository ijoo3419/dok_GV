package com.kh.dok.board.model.dao;

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
		
		if(BResult > 0){
			String board_id = sqlSession.selectOne("Board.selectBoardId", b);
			bf.setBoard_id(board_id);
			
			if(board_id != null){
				int BFResult = sqlSession.insert("Board.insertNoticeFile", bf);
				
				if(BFResult > 0){
					return BFResult;
					
				}else{
					throw new BoardInsertException("3단계 : 첨부파일 등록 실패!");
				}
				
			}else{
				throw new BoardInsertException("2단계 : board_id 조회 실패!");
			}
			
		}else{
			throw new BoardInsertException("1단계 : 공지글 insert 실패!");
		}
		
	}

}
