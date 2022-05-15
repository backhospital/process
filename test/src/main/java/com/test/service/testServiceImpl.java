package com.test.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.test.dao.testDAO;
import com.test.domain.testVO;

@Service
public class testServiceImpl implements testService {
	
	@Inject
	private testDAO dao;
	
	// 크롤링 데이터 list 구현하기
	@Override
	public List<testVO> list() throws Exception {
		return dao.list();
	}
	
	// 상품등록
	@Override
	public void register(testVO vo) throws Exception {
		dao.register(vo);		
	}
	
	// 요청목록 보기
	@Override
	public List<testVO> offerlist() throws Exception {
		return dao.offerlist();
	}
	
	// 요청상품 보기
	@Override
	public testVO view(int idx) throws Exception {
		return dao.view(idx);
	}
}