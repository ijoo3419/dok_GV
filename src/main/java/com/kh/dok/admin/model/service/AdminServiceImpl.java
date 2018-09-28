package com.kh.dok.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dok.admin.model.dao.AdminDao;
import com.kh.dok.admin.model.exception.BlackMemberSelectListException;
import com.kh.dok.admin.model.exception.MemberSelectListException;
import com.kh.dok.admin.model.vo.ReportHistory;
import com.kh.dok.common.PageInfo;
import com.kh.dok.member.model.vo.Member;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private AdminDao ad;
	
	//전체 회원 조회 카운트 메소드
	@Override
	public int countAll() throws MemberSelectListException{
		
		return ad.countAll(sqlSession);
		
	}

	//전체 회원 조회 메소드
	@Override
	public ArrayList<Member> searchAll(PageInfo pi) throws MemberSelectListException {

		ArrayList<Member> mlist = ad.searchAll(sqlSession,pi);
		
		return mlist;
	}

	//일반 회원 조회 카운트 메소드
	@Override
	public int countBu() throws MemberSelectListException {
		
		return ad.countBu(sqlSession);
	}
	
	//일반 회원 조회 메소드
	@Override
	public ArrayList<Member> searchBu(PageInfo pi) throws MemberSelectListException {
		
		ArrayList<Member> mlist = ad.searchBu(sqlSession,pi);
		
		return mlist;
	}

	//판매자 회원 조회 카운트 메소드
	@Override
	public int countSe() throws MemberSelectListException {
		
		return ad.countSe(sqlSession);
	}
	
	//판매자 회원 조회 메소드
	@Override
	public ArrayList<Member> searchSe(PageInfo pi) throws MemberSelectListException {
		
		ArrayList<Member> mlist = ad.searchSe(sqlSession,pi);
		
		return mlist;
	}
	
	//블랙리스트 회원 카운트 메소드
	@Override
	public int countBl() throws BlackMemberSelectListException {
		
		return ad.countBl(sqlSession);
	}

	//블랙리스트 회원 조회 메소드
	@Override
	public ArrayList<ReportHistory> searchBlack(PageInfo pi) throws BlackMemberSelectListException {
		
		ArrayList<ReportHistory> rlist = ad.searchBlack(sqlSession,pi);
		return rlist;
	}
}
