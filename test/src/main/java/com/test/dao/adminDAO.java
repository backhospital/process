package com.test.dao;

import java.util.List;

import com.test.domain.testVO;


public interface adminDAO {
		
	// 요청승인 하기
	public void offer_approve(int idx) throws Exception;
	
	// 요청거부 하기
	public void offer_reject(int idx) throws Exception;
	
	// 승인 리스트 보기
	public List<testVO> approvelist() throws Exception;
	
	// 거절 리스트 보기
	public List<testVO> rejectlist() throws Exception;
	
	// 승인상품 보기
	public testVO view_approve(int idx) throws Exception;
	
	// 승인 display로 보내기 (임시)
	public void add_display(int idx) throws Exception;



}
