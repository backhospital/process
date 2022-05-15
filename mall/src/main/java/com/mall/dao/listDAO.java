package com.mall.dao;

import java.util.List;

import com.mall.vo.CategoryVO;
import com.mall.vo.GoodsVO;
import com.mall.vo.GoodsViewVO;
import com.mall.vo.OrderListVO;
import com.mall.vo.OrderVO;
import com.mall.vo.ReplyListVO;
import com.mall.vo.listVO;

public interface listDAO {
	
	// list 페이지 리스트불러오기
	public List<listVO> list() throws Exception;
} 