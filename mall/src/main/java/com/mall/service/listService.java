package com.mall.service;

import java.util.List;

import com.mall.vo.listVO;

public interface listService {
	
	// 크롤링 데이터 list 구현하기
	public List<listVO> list() throws Exception;
}
