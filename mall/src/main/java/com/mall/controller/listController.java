package com.mall.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mall.service.listService;
import com.mall.vo.listVO;


@Controller
@RequestMapping("/list/*")
public class listController {

	private static final Logger logger = LoggerFactory.getLogger(listController.class);
	
	@Inject
	private listService service;

	// 리스트페이지 (list)
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public void getList(Model model) throws Exception {
		logger.info("get list");
		
		List<listVO> list = null;
		list = service.list();
		model.addAttribute("list",list);
	}	
}