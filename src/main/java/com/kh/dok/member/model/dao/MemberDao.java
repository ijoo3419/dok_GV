package com.kh.dok.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.dok.member.model.vo.Member;
import com.kh.dok.movie.model.vo.Movie;
import com.kh.dok.movie.model.vo.MovieSumbnail;

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

	int updateClass(SqlSessionTemplate sqlSession, Member m);

     
}
