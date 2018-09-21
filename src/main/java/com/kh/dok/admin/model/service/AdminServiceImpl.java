package com.kh.dok.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dok.admin.model.dao.AdminDao;
import com.kh.dok.member.model.vo.Member;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private AdminDao ad;
	
	@Override
	public ArrayList<Member> searchAll() {
		
		ArrayList<Member> mlist = ad.searchAll(sqlSession);
		
		System.out.println("Service mlist " + mlist);
		return mlist;
	}

}
