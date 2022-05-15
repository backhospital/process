package com.test.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.test.domain.testVO;

@Repository
public class testDAOImpl implements testDAO {

	@Inject
	private SqlSession sql;
	
	private static String namespace = "com.test.mappers.test";
	
	// 크롤링 데이터 list 구현하기
	@Override
	public List<testVO> list() throws Exception {
		return sql.selectList(namespace +".list");
	}
	
	// 상품등록
	@Override
	public void register(testVO vo) throws Exception {
		sql.insert(namespace + ".register", vo);
	}
	
	// 요청목록 보기
	@Override
	public List<testVO> offerlist() {
		return sql.selectList(namespace + ".offerlist");
	}
	
	// 요청상품 보기
	@Override
	public testVO view(int idx) throws Exception {
		return sql.selectOne(namespace + ".view", idx);
	}
	
}