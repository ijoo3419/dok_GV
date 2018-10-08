package com.kh.dok.admin.model.service;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.dok.admin.model.dao.AdminDaoImpl;

public class VisitSessionListener implements HttpSessionListener
{
	
	private SqlSessionTemplate sqlSession;
    @Override
    public void sessionCreated(HttpSessionEvent arg0) {
    	
    	System.out.println("실행은 된다");
        AdminDaoImpl dao = new AdminDaoImpl();
        
        try {
            // 전체 방문자 수 증가
            dao.setTotalCount(sqlSession);
           /* // 총 방문자 수
            int totalCount = dao.getTotalCount();
            // 오늘 방문자 수
            int todayCount = dao.getTodayCount();*/
            
            HttpSession session = arg0.getSession();
            
            // 세션에 방문자 수를 담는다.
            /*session.setAttribute("totalCount", totalCount); 
            session.setAttribute("todayCount", todayCount);*/
            
        } catch (Exception e) {
            System.out.println("===== 방문자 카운터 오류 =====\n");
            e.printStackTrace();
        }
    }
 
    @Override
    public void sessionDestroyed(HttpSessionEvent arg0) {}

 
}

