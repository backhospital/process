package com.test.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.test.domain.frontVO;


@Repository
public class frontDAOImpl implements frontDAO {
	
	@Inject
	private SqlSession sql;
	
	// 매퍼 불러오기
	private static String namespace = "com.test.mappers.frontMapper";
	
	// 크롤링 리스트 보기
	@Override
	public List<frontVO> pricelist() throws Exception {
		return sql.selectList(namespace + ".pricelist");
	}
	
	// 승인 리스트 보기
	@Override
	public List<frontVO> approvelist() throws Exception {
		return sql.selectList(namespace + ".approvelist");
	}

	
	// 요청목록 보기
	@Override
	public List<frontVO> offerlist() throws Exception {
		return sql.selectList(namespace + ".offerlist");
	}
	

}
