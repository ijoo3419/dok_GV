package com.kh.dok.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dok.member.model.vo.Member;

@Repository
public class MemberDaoImpl implements MemberDao{

	
	//암호화된 비밀번호 조회용 메소드
	@Override
	public String selectEncPassword(SqlSessionTemplate sqlSession, Member m) {

		return sqlSession.selectOne("Member.selectPwd", m.getUser_pwd());
	}

	
	//비밀번호 일치시 회원 정보 조회용 메소드
	@Override
	public Member selectMember(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return null;
	}


}
