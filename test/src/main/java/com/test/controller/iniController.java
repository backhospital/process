package com.test.controller;


import java.util.List;

import javax.inject.Inject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.domain.Criteria;
import com.test.domain.PageMaker;
import com.test.domain.displayVO;
import com.test.domain.iniVO;
import com.test.service.iniService;


@Controller
@RequestMapping("/*")
public class iniController {
	
	private static final Logger logger = LoggerFactory.getLogger(iniController.class);

	@Inject
	private iniService service;
	
	
	// 리스트페이지 : 관리자 직접등록 (list2)
	@RequestMapping(value="view/list2", method = RequestMethod.GET)
	public void getList2(Model model) throws Exception {
		logger.info("get list2");
		
		List<iniVO> list2 = null;
		list2 = service.list2();
		model.addAttribute("list2",list2);
	}
	
	// 리스트페이지 : 관리자 직접등록 + 사용자 승인 (list3)
	@RequestMapping(value = "view/list3", method = RequestMethod.GET)
	public void getList3(Model model) throws Exception {
		logger.info("get list3");
		
		List<displayVO> list3 = null;
		list3 = service.list3();
		model.addAttribute("list3",list3);
	}
	
	// 게시판 글 전체 조회 페이징(GET)
	@RequestMapping(value = "view/listPage", method = RequestMethod.GET)
	public String listALLGET(Criteria cri, Model model, @ModelAttribute("result") String result) throws Exception {

			logger.info(" C: listALLGET() 호출 -> view 페이지 이동");

			// 페이징처리 정보생성 (하단부)
			PageMaker pm = new PageMaker();
			pm.setCri(cri);
			pm.setTotalCount(service.countCSBoard(cri));

			// Criteria 객체 정보 저장(pageStart/pageSize)
			model.addAttribute("listPage", service.listCri(cri));
			model.addAttribute("pm", pm);

			return "/view/listPage";
	}	
	
}