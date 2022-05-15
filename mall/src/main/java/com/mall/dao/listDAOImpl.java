package com.mall.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mall.vo.listVO;



@Repository
public class listDAOImpl implements listDAO {

	@Inject
	private SqlSession sql;
		
	private static String namespace = "com.test.mappers.list";

	// 크롤링 데이터 list 구현하기
	@Override
	public List<listVO> list() throws Exception {
		return sql.selectList(namespace + ".list");
	}
} 