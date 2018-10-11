package com.kh.dok.board.model.service;

import java.util.ArrayList;

import com.kh.dok.admin.model.vo.SearchCondition;
import com.kh.dok.board.model.exception.BoardInsertException;
import com.kh.dok.board.model.exception.BoardSelectOneException;
import com.kh.dok.board.model.vo.Board;
import com.kh.dok.board.model.vo.BoardFile;
import com.kh.dok.board.model.vo.BoardNBoardFile;

public interface BoardService {

	int insertNotice(Board b, BoardFile bf) throws BoardInsertException;

	ArrayList selectNoticeList(BoardNBoardFile bbf);

	int listCount(SearchCondition sc);

	int countNoticePage(SearchCondition sc);

	BoardNBoardFile selectNoticeOne(String board_id) throws BoardSelectOneException;

}
