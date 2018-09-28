package com.kh.dok.member.model.service;

import com.kh.dok.member.model.exception.LoginException;
import com.kh.dok.member.model.vo.Member;
import com.kh.dok.movie.model.vo.Movie;

public interface MemberService {

	Member loginMember(Member m)  throws LoginException;

	int insertMember(Member m);
	
	int checkNick(Member m);

	int checkSame(Member m);

	int checkPass(Member m) throws LoginException;

	int updateInfo(Member m);

	Member selectUser(Member m);

	int insertWish(Movie m);
	
}
     