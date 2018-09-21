package com.kh.dok.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dok.member.model.vo.Member;

@Repository
public class AdminDaoImpl implements AdminDao{

	@Override
	public ArrayList<Member> searchAll(SqlSessionTemplate sqlSession) {
		
		return (ArrayList)sqlSession.selectList("Admin.searchAll");
	}

	
}
