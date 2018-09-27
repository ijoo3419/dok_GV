package com.kh.dok.admin.model.service;

import java.util.ArrayList;

import com.kh.dok.common.PageInfo;
import com.kh.dok.member.model.vo.Member;

public interface AdminService {

	ArrayList<Member> searchAll(PageInfo pi);

	ArrayList<Member> searchBu(PageInfo pi);

	ArrayList<Member> searchSe(PageInfo pi);

	int countAll();

	int countBu();

	int countSe();

}
