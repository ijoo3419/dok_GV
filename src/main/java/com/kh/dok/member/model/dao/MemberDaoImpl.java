package com.kh.dok.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dok.member.model.vo.Member;

@Repository
public class MemberDaoImpl implements MemberDao{

	
	//암호화된 비밀번호 조회용 메소드
	@Override
	public String selectEncPassword(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("Member.selectPwd", m.getEmail());
	}     

	
	//비밀번호 일치시 회원 정보 조회용 메소드
	@Override
	public Member selectMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("Member.selectLoginUser", m);
	}

	//회원가입용 메소드
	@Override
	public int insertMember(SqlSessionTemplate Sqlsession, Member m) {
		return Sqlsession.insert("Member.insertMember", m);
	}

	//닉네임 중복 체크용 메소드
	@Override
	public int checkNick(SqlSessionTemplate Sqlsession, Member m) {
		return Sqlsession.selectOne("Member.checkNick", m);
	}

	//이메일 중복 체크
	@Override
	public int checkSame(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("Member.checkSame", m);
	}

	//회원 정보 수정 전 비밀번호 체크
	@Override
	public int checkPass(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("Member.checkPass", m);
	}

	//회원 정보 업데이트
	@Override
	public int updateInfo(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("Member.updateInfo", m);
	}

	//카카오 로그인 유저 체크
	@Override
	public int kakaoUserCheck(SqlSessionTemplate sqlSession, Member m) {
		Member kakaoUserCheck = sqlSession.selectOne("Member.kakaoUserCheck", m);
		
		System.out.println("Dao kakaoUserCheck Member : " + kakaoUserCheck);
		
		if(kakaoUserCheck == null){
			//새유저
			return 11;
		}else{
			//기존유저
			return 22;
		}
		
		
	}


	//카카오 새 유저 회원가입
	@Override
	public int insertKakaoMember(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.insert("Member.insertKakaoMember", m);
	}

	//카카오 유저 로그인
	@Override
	public Member loginKakaoMember(SqlSessionTemplate sqlSession, Member m) {
		Member loginUser = sqlSession.selectOne("Member.loginKakaoMember", m);
		
		return loginUser;
	}


	@Override
	public int updatePlusInfo(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.update("Member.kakaoUserInfo", m);
	}


}
