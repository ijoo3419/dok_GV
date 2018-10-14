package com.kh.dok.member.model.service;

import java.util.ArrayList;

import com.kh.dok.board.model.vo.Board;
import com.kh.dok.member.model.exception.LoginException;
import com.kh.dok.member.model.vo.BookingHistory;
import com.kh.dok.member.model.vo.Member;
import com.kh.dok.member.model.vo.MyReply;
import com.kh.dok.movie.model.vo.Movie;
import com.kh.dok.movie.model.vo.MovieThumbnail;

public interface MemberService {

	Member loginMember(Member m)  throws LoginException;

	int insertMember(Member m);
	
	int checkNick(Member m);

	int checkSame(Member m);

	int checkPass(Member m) throws LoginException;

	int updateInfo(Member m);

	int kakaoUserCheck(Member m);

	int insertKakaoMember(Member m);

	Member loginKakaoMember(Member m);

	int updatePlusInfo(Member m);

	Member selectUser(Member m);

	int insertWish(Movie m);

	int updateClass(Member m);

	ArrayList<MovieThumbnail> selectWishList(MovieThumbnail msn, Member m);

	ArrayList<BookingHistory> selectBookingHist(Member m);

	ArrayList<MyReply> selectMovReply(Member m);
	
	ArrayList<MyReply> selectCinReply(Member m);

	int selectWishNum(Member m);
	
	int selectWatchedNum(Member m);
	
	int selectReviewNum(Member m);

	ArrayList<Board> selectMyAsk(Member m);
	
	int checkDupli(Movie m);

	int updatePwd(Member m);

	int updateStatus(Member m);

	
}
     