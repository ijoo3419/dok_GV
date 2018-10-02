package com.kh.dok.admin.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dok.admin.model.exception.BlackMemberSelectListException;
import com.kh.dok.admin.model.exception.MemberSelectListException;
import com.kh.dok.admin.model.exception.SearchMemberException;
import com.kh.dok.admin.model.vo.ReportHistory;
import com.kh.dok.admin.model.vo.SearchCondition;
import com.kh.dok.common.PageInfo;
import com.kh.dok.member.model.vo.Member;

@Repository
public class AdminDaoImpl implements AdminDao{

	//전체 회원 조회 메소드
	@Override
	public ArrayList<Member> searchAll(SqlSessionTemplate sqlSession,PageInfo pi,SearchCondition sc) throws MemberSelectListException {
		
		int offset = (pi.getCurrentPage()-1)* pi.getLimit();
		
		RowBounds rowBound = new RowBounds(offset, pi.getLimit());
		
		ArrayList<Member> mlist = (ArrayList)sqlSession.selectList("Admin.searchAll",sc, rowBound);
		
		if(mlist == null ){
			throw new MemberSelectListException("전체 회원 조회 실패");
		}
		return mlist;
	}

	//일반 회원 조회 메소드
	@Override
	public ArrayList<Member> searchBu(SqlSessionTemplate sqlSession,PageInfo pi) throws MemberSelectListException {
		
		int offset = (pi.getCurrentPage()-1) * pi.getLimit();
		
		RowBounds rowBound = new RowBounds(offset,pi.getLimit());
		
		ArrayList<Member> mlist = (ArrayList)sqlSession.selectList("Admin.searchBu",null,rowBound);
		
		if(mlist == null ){
			throw new MemberSelectListException("일반 회원 조회 실패");
		}
		
		return mlist;
	}

	//판매자 회원 조회 메소드
	@Override
	public ArrayList<Member> searchSe(SqlSessionTemplate sqlSession,PageInfo pi) throws MemberSelectListException {
		
		int offset = (pi.getCurrentPage()-1) * pi.getLimit();
		
		RowBounds rowBound = new RowBounds(offset,pi.getLimit());
		
		ArrayList<Member> mlist = (ArrayList)sqlSession.selectList("Admin.searchSe",null,rowBound);
		
		if( mlist == null ){
			throw new MemberSelectListException("판매자 회원 조회 실패");
		}
		
		return mlist;
	}

	//전체 회원 조회  카운트 메소드
	@Override
	public int countAll(SqlSessionTemplate sqlSession,HashMap map) throws MemberSelectListException{
		System.out.println(map);
		int countAll = sqlSession.selectOne("Admin.countAll",map);
		if(countAll<0){
			throw new MemberSelectListException("전체 회원 카운트 실패");
		}
		return sqlSession.selectOne("Admin.countAll");
	}

	//일반 회원  조회 카운트 메소드
	@Override
	public int countBu(SqlSessionTemplate sqlSession) throws MemberSelectListException {
		
		int countBu = sqlSession.selectOne("Admin.countBu");
		
		if(countBu<0){
			throw new MemberSelectListException("일반 회원 카운트 실패");
		}
		return countBu;
	}

	//판매자 회원 조회 카운트 메소드
	@Override
	public int countSe(SqlSessionTemplate sqlSession) throws MemberSelectListException {
		
		int countSe = sqlSession.selectOne("Admin.countSe");
		
		if(countSe<0){
			throw new MemberSelectListException("판매자 회원 카운트 실패");
		}
		return countSe;
	}
	
	//블랙리스트 회원 조회 카운트 메소드
	@Override
	public int countBl(SqlSessionTemplate sqlSession) throws BlackMemberSelectListException {
		
		int countBl = sqlSession.selectOne("Admin.countBl");
		
		if(countBl < 0){
			throw new BlackMemberSelectListException("블랙리스트 회원 카운트 실패");
		}
		return countBl;
	}
	
	//블랙리스트 회원 조회 메소드
	@Override
	public ArrayList<ReportHistory> searchBlack(SqlSessionTemplate sqlSession, PageInfo pi) throws BlackMemberSelectListException {
		
		int offset = (pi.getCurrentPage()-1)*pi.getLimit();
		
		RowBounds rowBound = new RowBounds(offset,pi.getLimit());
		
		ArrayList<ReportHistory> blist = (ArrayList)sqlSession.selectList("Admin.searchBlack",null,rowBound); 
		if( blist == null){
			throw new BlackMemberSelectListException("블랙리스트 회원 조회 실패");
		}
		
		return blist;
	}

	//아이디 조회 카운트 메소드
	@Override
	public int countMember(SqlSessionTemplate sqlSession,SearchCondition sc) throws SearchMemberException{
		
		int countId = sqlSession.selectOne("Admin.countId",sc);
		System.out.println("검색 결과 카운트 : " + countId);
		if(countId < 0){
			throw new SearchMemberException("회원 검색 실패!");
		}
		return countId;
	}

	@Override
	public ArrayList<Member> searchMember(SqlSessionTemplate sqlSession, PageInfo pi, SearchCondition sc) throws SearchMemberException {
		
		int offset = (pi.getCurrentPage()-1)*pi.getLimit();
		
		RowBounds rowBound = new RowBounds(offset,pi.getLimit());
		
		ArrayList<Member> mslist = (ArrayList)sqlSession.selectList("Admin.searchMember",sc,rowBound);
		
		if(mslist == null){
			throw new SearchMemberException("회원 검색 실패");
		}
		
		return mslist;
	}

	
}
