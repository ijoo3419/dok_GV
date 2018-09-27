package com.kh.dok.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.dok.common.PageInfo;
import com.kh.dok.member.model.vo.Member;

public interface AdminDao {
	
	ArrayList<Member> searchAll(SqlSessionTemplate sqlSession, PageInfo pi);

	ArrayList<Member> searchBu(SqlSessionTemplate sqlSession, PageInfo pi);

	ArrayList<Member> searchSe(SqlSessionTemplate sqlSession, PageInfo pi);

	int countAll(SqlSessionTemplate sqlSession);

	int countBu(SqlSessionTemplate sqlSession);

	int countSe(SqlSessionTemplate sqlSession);

}
