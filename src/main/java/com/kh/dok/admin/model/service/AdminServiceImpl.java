package com.kh.dok.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dok.admin.model.dao.AdminDao;
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
	public int countAll() {
		
		return ad.countAll(sqlSession);
		
	}

	//전체 회원 조회 메소드
	@Override
	public ArrayList<Member> searchAll(PageInfo pi) {

		ArrayList<Member> mlist = ad.searchAll(sqlSession,pi);
		
		System.out.println("Service mlist " + mlist);
		return mlist;
	}

	//일반 회원 조회 카운트 메소드
	@Override
	public int countBu() {
		
		return ad.countBu(sqlSession);
	}
	
	//일반 회원 조회 메소드
	@Override
	public ArrayList<Member> searchBu(PageInfo pi) {
		ArrayList<Member> mlist = ad.searchBu(sqlSession,pi);
		
		System.out.println("Service mlist(bu) : " + mlist);
		return mlist;
	}

	//판매자 회원 조회 카운트 메소드
	@Override
	public int countSe() {
		
		return ad.countSe(sqlSession);
	}
	
	//판매자 회원 조회 메소드
	@Override
	public ArrayList<Member> searchSe(PageInfo pi) {
		ArrayList<Member> mlist = ad.searchSe(sqlSession,pi);
		
		System.out.println("Service mlist(se) : " + mlist);
		return mlist;
	}
}
