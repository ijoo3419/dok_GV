package com.kh.dok.admin.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dok.common.PageInfo;
import com.kh.dok.member.model.vo.Member;

@Repository
public class AdminDaoImpl implements AdminDao{

	//전체 회원 조회 메소드
	@Override
	public ArrayList<Member> searchAll(SqlSessionTemplate sqlSession,PageInfo pi) {
		
		int offset = (pi.getCurrentPage()-1)* pi.getLimit();
		
		RowBounds rowBound = new RowBounds(offset, pi.getLimit());
		
		
		return (ArrayList)sqlSession.selectList("Admin.searchAll",null, rowBound);
	}

	//일반 회원 조회 메소드
	@Override
	public ArrayList<Member> searchBu(SqlSessionTemplate sqlSession,PageInfo pi) {
		
		int offset = (pi.getCurrentPage()-1) * pi.getLimit();
		
		RowBounds rowBound = new RowBounds(offset,pi.getLimit());
		
		return (ArrayList)sqlSession.selectList("Admin.searchBu",null,rowBound);
	}

	//판매자 회원 조회 메소드
	@Override
	public ArrayList<Member> searchSe(SqlSessionTemplate sqlSession,PageInfo pi) {
		
		int offset = (pi.getCurrentPage()-1) * pi.getLimit();
		
		RowBounds rowBound = new RowBounds(offset,pi.getLimit());
		
		return (ArrayList)sqlSession.selectList("Admin.searchSe",null,rowBound);
	}

	//전체 회원 조회  카운트 메소드
	@Override
	public int countAll(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("Admin.countAll");
	}

	//일반 회원  조회 카운트 메소드
	@Override
	public int countBu(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("Admin.countBu");
	}

	//판매자 회원 조회 카운트 메소드
	@Override
	public int countSe(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("Admin.countSe");
	}

	
}
