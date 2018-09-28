package com.kh.dok.member.model.service;

import com.kh.dok.member.model.exception.LoginException;
import com.kh.dok.member.model.vo.Member;

public interface MemberService {

	Member loginMember(Member m)  throws LoginException;

	int insertMember(Member m);
	
	int checkNick(Member m);

	int checkSame(Member m);

	int checkPass(Member m);

	int updateInfo(Member m);

	int kakaoUserCheck(Member m);

	int insertKakaoMember(Member m);

	Member loginKakaoMember(Member m);

	int updatePlusInfo(Member m);
	
	
	
}
     