package com.test.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.test.dao.frontDAO;
import com.test.domain.frontVO;

@Service
public class frontServiceImpl implements frontService {
	
	@Inject
	private frontDAO dao;
	
	// 크롤링 데이터 list 구현하기
	@Override
	public List<frontVO> pricelist() throws Exception {
		return dao.pricelist();
	}
	
	// 요청목록 보기
	@Override
	public List<frontVO> offerlist() throws Exception {
		return dao.offerlist();
	}
	
	// 승인 리스트 보기
	@Override
	public List<frontVO> approvelist() throws Exception {
		return dao.approvelist();
	}
	

}