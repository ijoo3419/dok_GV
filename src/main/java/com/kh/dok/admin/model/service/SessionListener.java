package com.kh.dok.admin.model.service;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kh.dok.admin.model.dao.AdminDaoImpl;


public class SessionListener implements HttpSessionListener{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public void sessionCreated(HttpSessionEvent arg0) {
		AdminDaoImpl visitCountDAO = new AdminDaoImpl();
		
		int todayCount = 0;
		int totalCount = 0;
		
		
		
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent arg0) {
		// TODO Auto-generated method stub
		
	}

}
