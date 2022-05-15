package com.test.dao;

import java.util.List;

import com.test.domain.testVO;

public interface testDAO {
	
	// 인식한 크롤링 테이블 보여주기
	public List<testVO> list() throws Exception;
	
	// 상품등록
	public void register(testVO vo) throws Exception;
	
	// 요청목록 보기
	public List<testVO> offerlist();
	
	// 요청상품 보기
	public testVO view(int idx) throws Exception;
	
}
