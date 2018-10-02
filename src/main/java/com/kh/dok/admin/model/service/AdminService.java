package com.kh.dok.admin.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.dok.admin.model.exception.BlackMemberSelectListException;
import com.kh.dok.admin.model.exception.MemberSelectListException;
import com.kh.dok.admin.model.exception.SearchMemberException;
import com.kh.dok.admin.model.vo.ReportHistory;
import com.kh.dok.admin.model.vo.SearchCondition;
import com.kh.dok.common.PageInfo;
import com.kh.dok.member.model.vo.Member;

public interface AdminService {

	ArrayList<Member> searchAll(PageInfo pi, SearchCondition sc) throws MemberSelectListException;

	ArrayList<Member> searchBu(PageInfo pi, SearchCondition sc) throws MemberSelectListException;

	ArrayList<Member> searchSe(PageInfo pi, SearchCondition sc) throws MemberSelectListException;

	int countAll(SearchCondition sc) throws MemberSelectListException;

	int countBu(SearchCondition sc) throws MemberSelectListException;

	int countSe(SearchCondition sc) throws MemberSelectListException;

	int countBl() throws BlackMemberSelectListException;

	ArrayList<ReportHistory> searchBlack(PageInfo pi) throws BlackMemberSelectListException;

	int countMember(SearchCondition sc) throws SearchMemberException;


}
