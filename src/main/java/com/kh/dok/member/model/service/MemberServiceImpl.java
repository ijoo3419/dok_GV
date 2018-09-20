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
	
	@Override
	public Member loginMember(Member m){
		Member loginUser = null;
		
		String encPassword = md.selectEncPassword(sqlSession, m);
		
		if(!passwordEncoder.matches(m.getUser_pwd(), encPassword)){
			throw new LoginException("로그인 실패!");
		}else{
			loginUser = md.selectMember(sqlSession, m);
		}
		
		return loginUser;
	}

}