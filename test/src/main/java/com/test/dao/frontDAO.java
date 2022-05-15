package com.test.dao;

import java.util.List;

import com.test.domain.frontVO;


public interface frontDAO {
		
	// 크롤링 이미지 불러오기
	public List<frontVO> pricelist() throws Exception;
	
	// 승인 리스트 보기
	public List<frontVO> approvelist() throws Exception;

	// 요청목록 보기
	public List<frontVO> offerlist() throws Exception;

}
