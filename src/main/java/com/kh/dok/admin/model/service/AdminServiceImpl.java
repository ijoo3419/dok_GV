package com.kh.dok.admin.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dok.admin.model.dao.AdminDao;
import com.kh.dok.admin.model.exception.BlackMemberSelectListException;
import com.kh.dok.admin.model.exception.MemberSelectListException;
import com.kh.dok.admin.model.exception.SearchMemberException;
import com.kh.dok.admin.model.vo.ReportHistory;
import com.kh.dok.admin.model.vo.SearchCondition;
import com.kh.dok.board.model.vo.BoardFile;
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
	public int countAll(SearchCondition sc) throws MemberSelectListException{
		
		return ad.countAll(sqlSession,sc);
		
	}

	//전체 회원 조회 메소드
	@Override
	public ArrayList<Member> searchAll(PageInfo pi,SearchCondition sc) throws MemberSelectListException {

		ArrayList<Member> mlist = ad.searchAll(sqlSession,pi,sc);
		
		return mlist;
	}

	//일반 회원 조회 카운트 메소드
	@Override
	public int countBu(SearchCondition sc) throws MemberSelectListException {
		
		return ad.countBu(sqlSession,sc);
	}
	
	//일반 회원 조회 메소드
	@Override
	public ArrayList<Member> searchBu(PageInfo pi,SearchCondition sc) throws MemberSelectListException {
		
		ArrayList<Member> mlist = ad.searchBu(sqlSession,pi,sc);
		
		return mlist;
	}

	//판매자 회원 조회 카운트 메소드
	@Override
	public int countSe(SearchCondition sc) throws MemberSelectListException {
		
		return ad.countSe(sqlSession,sc);
	}
	
	//판매자 회원 조회 메소드
	@Override
	public ArrayList<Member> searchSe(PageInfo pi,SearchCondition sc) throws MemberSelectListException {
		
		ArrayList<Member> mlist = ad.searchSe(sqlSession,pi,sc);
		
		return mlist;
	}
	
	//블랙리스트 회원 카운트 메소드
	@Override
	public int countBl(SearchCondition sc) throws BlackMemberSelectListException {
		
		return ad.countBl(sqlSession,sc);
	}

	//블랙리스트 회원 조회 메소드
	@Override
	public ArrayList<ReportHistory> searchBlack(PageInfo pi,SearchCondition sc) throws BlackMemberSelectListException {
		
		ArrayList<ReportHistory> rlist = ad.searchBlack(sqlSession,pi,sc);
		return rlist;
	}

	@Override
	public int insertFile(BoardFile adFile) {
		System.out.println("as");
		int af = ad.insertFile(sqlSession,adFile);
		return af;
	}

	@Override
	public int updateFile() {
		
		return ad.updateFile(sqlSession);
	}
	
	//파일 삭제용 메소드
	@Override
	public int deleteFile() {
		
		return ad.deleteFile(sqlSession);
	}

	@Override
	public ArrayList<BoardFile> selectFile(BoardFile adFile) {
		
		return ad.selectFile(sqlSession,adFile);
	}


	
}
