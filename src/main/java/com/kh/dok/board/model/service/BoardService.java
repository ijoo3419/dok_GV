package com.kh.dok.board.model.service;

import java.util.ArrayList;

import com.kh.dok.board.model.exception.BoardInsertException;
import com.kh.dok.board.model.vo.Board;
import com.kh.dok.board.model.vo.BoardFile;
import com.kh.dok.board.model.vo.BoardNBoardFile;

public interface BoardService {

	int insertNotice(Board b, BoardFile bf) throws BoardInsertException;

	ArrayList selectNoticeList(BoardNBoardFile bbf);

}
