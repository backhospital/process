package com.test.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.test.dao.iniDAO;
import com.test.domain.Criteria;
import com.test.domain.displayVO;
import com.test.domain.iniVO;

@Service
public class iniServiceImpl implements iniService {

	private static final Logger logger =
			LoggerFactory.getLogger(iniService.class);	
	
	@Inject
	private iniDAO dao;
	
	// 크롤링 데이터 list 구현하기
	@Override
	public List<iniVO> list2() throws Exception {
		return dao.list2();
	}
	
	// list3
	@Override
	public List<displayVO> list3() throws Exception {
		return dao.list3();
	}

	// 게시판 전체 글 불러오기
	@Override
	public List<displayVO> listALL() throws Exception {
		logger.info(" S : listALL() 호출 -> DAO-");
		logger.info(" S : DAO 처리 완료! 정보 저장후 컨트롤러 이동");
		return dao.listALL();
	}
	
	// 게시판 페이징 리스트
	@Override
	public List<displayVO> listCri(Criteria cri) throws Exception {
		
		logger.info(" S : listCri() 호출 -> DAO-");

		List<displayVO> listCri = dao.listCri(cri);

		return listCri;
	}
	
	@Override
	public int countCSBoard(Criteria cri) throws Exception {
		
		logger.info(" S : countCSBoard() 호출 -> DAO-");

		int countCSBoard = dao.countCSBoard(cri);

		return countCSBoard;
	}	
	
}