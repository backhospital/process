package com.test.service;

import java.util.List;

import com.test.domain.testVO;

public interface testService {
		
	// 크롤링 데이터 list 구현하기
	public List<testVO> list() throws Exception;
	
	// 상품등록
	public void register(testVO vo) throws Exception;
	
	// 요청목록 보기
	public List<testVO> offerlist() throws Exception;
	
	// 요청상품 보기
	public testVO view(int idx) throws Exception;

}