package com.mall.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.mall.dao.listDAO;
import com.mall.vo.listVO;

@Service
public class listServiceImpl implements listService {
	
	@Inject
	private listDAO dao;
	
	@Override
	public List<listVO> list() throws Exception {
		return dao.list();
	}

}
