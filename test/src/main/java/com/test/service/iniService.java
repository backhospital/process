package com.test.service;

import java.util.List;

import com.test.domain.Criteria;
import com.test.domain.displayVO;
import com.test.domain.iniVO;

public interface iniService {
			
	// 크롤링 데이터 list 구현하기
	public List<iniVO> list2() throws Exception;
	
	// list3 불러오기
	public List<displayVO> list3() throws Exception;
	
	// 게시판 전체 조회
	public List<displayVO> listALL() throws Exception;
	
	// 게시판 페이징 처리 조회
	public List<displayVO> listCri(Criteria cri) throws Exception;	
	
	// 게시판 글 전체 목록 조회
	public int countCSBoard(Criteria cri) throws Exception;	
	
}