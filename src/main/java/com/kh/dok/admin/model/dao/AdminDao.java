package com.kh.dok.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.dok.member.model.vo.Member;

public interface AdminDao {
	
	ArrayList<Member> searchAll(SqlSessionTemplate sqlSession);

}
