package com.kh.dok.member.model.service;

import com.kh.dok.member.model.exception.LoginException;
import com.kh.dok.member.model.vo.Member;

public interface MemberService {

	Object loginMember(Member m)  throws LoginException;

}
