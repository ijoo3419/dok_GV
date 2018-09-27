package com.kh.dok.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.dok.member.model.dao.MemberDao;
import com.kh.dok.member.model.exception.LoginException;
import com.kh.dok.member.model.vo.Member;


@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private MemberDao md;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	@Autowired
	private DataSourceTransactionManager transactionManager;
	
	//로그인 메소드    
	@Override
	public Member loginMember(Member m) throws LoginException{
		Member loginUser = null;
		
		String encPassword = md.selectEncPassword(sqlSession, m);
		
		if(!passwordEncoder.matches(m.getUser_pwd(), encPassword)){
			throw new LoginException("로그인 실패!");
		}else{
			loginUser = md.selectMember(sqlSession, m);
		}
		
		return loginUser;
	}
	
	//비밀번호 맞나 조회 (회원정보 수정용)
	@Override
	public int checkPass(Member m) throws LoginException {
		
		String encPassword = md.selectEncPassword(sqlSession, m);
		String userPassword = m.getUser_pwd();
		
		System.out.println("userPassword : " + userPassword);
		System.out.println("encPasswrd : (checkPass-ServiceImpl) " + encPassword);
		
		int result = 0;
		
		if(passwordEncoder.matches(userPassword, encPassword)){
			result = 1;
			return result;
		} else {
			result = 0;
			throw new LoginException("실패!");
		}
		
	}
	
	//회원가입 메소드
	@Override
	public int insertMember(Member m) {
		return md.insertMember(sqlSession, m);
	}
	
	//닉네임 중복 체크
	@Override
	public int checkNick(Member m) {
		return md.checkNick(sqlSession, m);
	}
	
	//이메일 중복 체크
	@Override
	public int checkSame(Member m) {
		return md.checkSame(sqlSession, m);
	}
	
	//회원 정보 업데이트
	@Override
	public int updateInfo(Member m) {
		return md.updateInfo(sqlSession, m);
	}
	
	

	
	

}
