package com.kh.dok.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.dok.member.model.vo.Member;
import com.kh.dok.movie.model.vo.Movie;

public interface MemberDao {

	String selectEncPassword(SqlSessionTemplate sqlSession, Member m);

	Member selectMember(SqlSessionTemplate sqlSession, Member m);
	
	int insertMember(SqlSessionTemplate Sqlsession, Member m);
	
	int checkNick(SqlSessionTemplate Sqlsession, Member m);

	int checkSame(SqlSessionTemplate sqlSession, Member m);

	int updateInfo(SqlSessionTemplate sqlSession, Member m);


	int insertWish(SqlSessionTemplate sqlSession, Movie m);

	int kakaoUserCheck(SqlSessionTemplate sqlSession, Member m);

	int insertKakaoMember(SqlSessionTemplate sqlSession, Member m);

	Member loginKakaoMember(SqlSessionTemplate sqlSession, Member m);

	int updatePlusInfo(SqlSessionTemplate sqlSession, Member m);

     
}
