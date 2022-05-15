package com.test.dao;

import java.util.List;

import com.test.domain.Criteria;
import com.test.domain.displayVO;
import com.test.domain.iniVO;


public interface iniDAO {
		
	// list2 페이지 리스트불러오기
	public List<iniVO> list2() throws Exception;
	
	// list3 페이지 불러오기
	public List<displayVO> list3() throws Exception;

	// 게시판 글 전체 조회
	public List<displayVO> listALL() throws Exception;
	
	// 게시판 페이징 처리 조회
	public List<displayVO> listCri(Criteria cri) throws Exception;
	
	// 게시판 글 전체 목록 조회
	public int countCSBoard(Criteria cri) throws Exception;
}
