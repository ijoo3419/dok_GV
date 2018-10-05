package com.kh.dok.admin.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dok.admin.model.exception.BlackMemberSelectListException;
import com.kh.dok.admin.model.exception.MemberSelectListException;
import com.kh.dok.admin.model.exception.SearchMemberException;
import com.kh.dok.admin.model.exception.UploadException;
import com.kh.dok.admin.model.vo.ReportHistory;
import com.kh.dok.admin.model.vo.SearchCondition;
import com.kh.dok.board.model.vo.BoardFile;
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
	public ArrayList<Member> searchBu(SqlSessionTemplate sqlSession,PageInfo pi,SearchCondition sc) throws MemberSelectListException {
		
		int offset = (pi.getCurrentPage()-1) * pi.getLimit();
		
		RowBounds rowBound = new RowBounds(offset,pi.getLimit());
		
		ArrayList<Member> mlist = (ArrayList)sqlSession.selectList("Admin.searchBu",sc,rowBound);
		
		if(mlist == null ){
			throw new MemberSelectListException("일반 회원 조회 실패");
		}
		
		return mlist;
	}

	//판매자 회원 조회 메소드
	@Override
	public ArrayList<Member> searchSe(SqlSessionTemplate sqlSession,PageInfo pi,SearchCondition sc) throws MemberSelectListException {
		
		int offset = (pi.getCurrentPage()-1) * pi.getLimit();
		
		RowBounds rowBound = new RowBounds(offset,pi.getLimit());
		
		ArrayList<Member> mlist = (ArrayList)sqlSession.selectList("Admin.searchSe",sc,rowBound);
		
		if( mlist == null ){
			throw new MemberSelectListException("판매자 회원 조회 실패");
		}
		
		return mlist;
	}

	//전체 회원 조회  카운트 메소드
	@Override
	public int countAll(SqlSessionTemplate sqlSession, SearchCondition sc) throws MemberSelectListException {
		System.out.println(sc);
		
		int countAll = sqlSession.selectOne("Admin.countAll",sc);
		
		if(countAll<0){
			throw new MemberSelectListException("전체 회원 카운트 실패");
		}
		return countAll;
	}

	//일반 회원  조회 카운트 메소드
	@Override
	public int countBu(SqlSessionTemplate sqlSession,SearchCondition sc) throws MemberSelectListException {
		
		int countBu = sqlSession.selectOne("Admin.countBu",sc);
		
		if(countBu<0){
			throw new MemberSelectListException("일반 회원 카운트 실패");
		}
		return countBu;
	}

	//판매자 회원 조회 카운트 메소드
	@Override
	public int countSe(SqlSessionTemplate sqlSession,SearchCondition sc) throws MemberSelectListException {
		
		int countSe = sqlSession.selectOne("Admin.countSe",sc);
		
		if(countSe<0){
			throw new MemberSelectListException("판매자 회원 카운트 실패");
		}
		return countSe;
	}
	
	//블랙리스트 회원 조회 카운트 메소드
	@Override
	public int countBl(SqlSessionTemplate sqlSession,SearchCondition sc) throws BlackMemberSelectListException {
		
		int countBl = sqlSession.selectOne("Admin.countBl",sc);
		
		if(countBl < 0){
			throw new BlackMemberSelectListException("블랙리스트 회원 카운트 실패");
		}
		return countBl;
	}
	
	//블랙리스트 회원 조회 메소드
	@Override
	public ArrayList<ReportHistory> searchBlack(SqlSessionTemplate sqlSession, PageInfo pi,SearchCondition sc) throws BlackMemberSelectListException {
		
		int offset = (pi.getCurrentPage()-1)*pi.getLimit();
		
		RowBounds rowBound = new RowBounds(offset,pi.getLimit());
		
		ArrayList<ReportHistory> blist = (ArrayList)sqlSession.selectList("Admin.searchBlack",sc,rowBound); 
		if( blist == null){
			throw new BlackMemberSelectListException("블랙리스트 회원 조회 실패");
		}
		
		return blist;
	}

	@Override
	public int insertFile(SqlSessionTemplate sqlSession, BoardFile adFile) throws UploadException {
		int insert = sqlSession.insert("Admin.insertFile", adFile);
		
		if(insert < 1){
			throw new UploadException("메인 슬라이드 업로드 실패");
		}
		
		return insert;
	}

	@Override
	public int updateFile(SqlSessionTemplate sqlSession,BoardFile adFile) throws UploadException {
		int update = sqlSession.update("Admin.updateFile",adFile);
		
		if(update < 1){
			throw new UploadException("메인 슬라이드 업로드 실패");
		}
		
		return update;
	}
	
	//슬라이드 사진 파일 삭제용 메소드
	@Override
	public int deleteFile(SqlSessionTemplate sqlSession) throws UploadException {
		int delete = sqlSession.delete("Admin.deleteFile");
		
		if(delete < 1){
			throw new UploadException("메인 슬라이드 업로드 실패");
		}
		
		return delete;
	}
	
	//슬라이드 사진 select 메소드
	@Override
	public ArrayList<BoardFile> selectFile(SqlSessionTemplate sqlSession) throws UploadException {
		ArrayList<BoardFile> bf = (ArrayList)sqlSession.selectList("Admin.selectFile");
		if(bf == null){
			throw new UploadException("메인 슬라이드 업로드 실패");
		}
		
		return bf;
	}
}
