package com.kh.dok.admin.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.dok.admin.model.exception.BlackMemberSelectListException;
import com.kh.dok.admin.model.exception.MemberSelectListException;
import com.kh.dok.admin.model.exception.SearchMemberException;
import com.kh.dok.admin.model.vo.ReportHistory;
import com.kh.dok.admin.model.vo.SearchCondition;
import com.kh.dok.common.PageInfo;
import com.kh.dok.member.model.vo.Member;

public interface AdminDao {
	
	ArrayList<Member> searchAll(SqlSessionTemplate sqlSession, PageInfo pi, SearchCondition sc) throws MemberSelectListException;

	ArrayList<Member> searchBu(SqlSessionTemplate sqlSession, PageInfo pi, SearchCondition sc) throws MemberSelectListException;

	ArrayList<Member> searchSe(SqlSessionTemplate sqlSession, PageInfo pi, SearchCondition sc) throws MemberSelectListException;

	int countAll(SqlSessionTemplate sqlSession, SearchCondition sc) throws MemberSelectListException;

	int countBu(SqlSessionTemplate sqlSession, SearchCondition sc) throws MemberSelectListException;

	int countSe(SqlSessionTemplate sqlSession, SearchCondition sc) throws MemberSelectListException;

	int countBl(SqlSessionTemplate sqlSession, SearchCondition sc) throws BlackMemberSelectListException;

	ArrayList<ReportHistory> searchBlack(SqlSessionTemplate sqlSession, PageInfo pi, SearchCondition sc) throws BlackMemberSelectListException;

}
