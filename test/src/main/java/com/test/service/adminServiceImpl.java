package com.test.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.test.dao.adminDAO;
import com.test.domain.testVO;

@Service
public class adminServiceImpl implements adminService {
	
	@Inject
	private adminDAO dao;
	
	// 요청승인 하기
	@Override
	public void offer_approve(int idx) throws Exception {
		dao.offer_approve(idx);
	}
	
	// 요청거부 하기
	@Override
	public void offer_reject(int idx) throws Exception {
		dao.offer_reject(idx);
	}
	
	// 승인 리스트 보기
	@Override
	public List<testVO> approvelist() throws Exception {
		return dao.approvelist();
	}
	
	// 거절 리스트 보기
	@Override
	public List<testVO> rejectlist() throws Exception {
		return dao.rejectlist();
	}
	
	// 승인 상품 보기
	@Override
	public testVO view_approve(int idx) throws Exception {
		return dao.view_approve(idx);
	}
	
	// 승인 display (임시)
	@Override
	public void add_display(int idx) throws Exception {
		dao.add_display(idx);
	}

}
