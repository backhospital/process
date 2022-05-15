package com.test.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.test.domain.testVO;

@Repository
public class adminDAOImpl implements adminDAO {
	
	@Inject
	private SqlSession sql;
	
	// 매퍼 불러오기
	private static String namespace = "com.test.mappers.adminMapper";
	
	// 요청승인 하기 
	@Override
	public void offer_approve(int idx) throws Exception {
		sql.insert(namespace + ".offer_approve", idx);
	}
	
	// 요청거부 하기
	@Override
	public void offer_reject(int idx) throws Exception {
		sql.insert(namespace + ".offer_reject", idx);
	}
	
	// 승인 리스트 보기
	@Override
	public List<testVO> approvelist() throws Exception {
		return sql.selectList(namespace + ".approvelist");
	}
	
	// 거절 리스트 보기
	@Override
	public List<testVO> rejectlist() throws Exception {
		return sql.selectList(namespace + ".rejectlist");
	}
	
	// 승인 상품 보기
	@Override
	public testVO view_approve(int idx) throws Exception {
		return sql.selectOne(namespace +".view_approve", idx);
	}
	
	// 승인 display 보내기
	@Override
	public void add_display(int idx) throws Exception {
		sql.insert(namespace + ".add_display", idx);
	}


}
