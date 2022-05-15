package com.test.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.test.domain.Criteria;
import com.test.domain.displayVO;
import com.test.domain.iniVO;

@Repository
public class iniDAOImpl implements iniDAO {

	@Inject
	private SqlSession sql;
	
	private static final Logger logger
	= LoggerFactory.getLogger(iniDAOImpl.class);
	
	private static String namespace = "com.test.mappers.iniMapper";
	
	
	// 크롤링 데이터 list 구현하기
	@Override
	public List<iniVO> list2() throws Exception {
		return sql.selectList(namespace + ".list2");
	}
	
	// list3.jsp
	@Override
	public List<displayVO> list3() throws Exception {
		return sql.selectList(namespace + ".list3");
	}
	
	// 게시판 전체 글 불러오기
	@Override
	public List<displayVO> listALL() throws Exception {

		System.out.println(" DAO : listALL() -> mapper 호출");	
		
		return sql.selectList(namespace+".listALL");
	}
	
	// 게시판 리스트 페이징
	@Override
	public List<displayVO> listCri(Criteria cri) throws Exception {
		
		logger.info("mListCri(Criteria cri) 호출 !");

		return sql.selectList(namespace + ".listCri", cri);
	}	
	
	// 게시판 글 총 갯수 불러오기
	@Override
	public int countCSBoard(Criteria cri) throws Exception {
		
		logger.info("countCSBoard(Criteria cri) 호출 !");
		
		return sql.selectOne(namespace+".countCSBoard", cri);
	}
}