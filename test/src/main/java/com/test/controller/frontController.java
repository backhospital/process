package com.test.controller;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.domain.frontVO;
import com.test.domain.iniVO;
import com.test.domain.testVO;
import com.test.service.adminService;
import com.test.service.frontService;
import com.test.service.testService;

@Controller
@RequestMapping("/frontview/*")
public class frontController {
	
	private static final Logger logger = LoggerFactory.getLogger(frontController.class);

	@Inject
	private frontService service;
		
	// 크롤링 리스트 보기
	// http://localhost:8080/frontview/generic2
	@RequestMapping(value="/generic2", method = RequestMethod.GET)
	public void getPricelist(Model model) throws Exception {
		logger.info("get generic2");
		
		List<frontVO> pricelist = null;
		pricelist = service.pricelist();
		model.addAttribute("pricelist",pricelist);
	}
	
	
	// 고객요청 리스트 보기
	// http://localhost:8080/frontview/generic6
	@RequestMapping(value="/generic6", method = RequestMethod.GET)
	public void getOfferlist(Model model) throws Exception {
		logger.info("get offer");
		
		List<frontVO> offerlist = null;		
		offerlist = service.offerlist();
		model.addAttribute("offerlist", offerlist);
	}
	
		
	// 크롤링 리스트 보기
	// http://localhost:8080/frontview/generic4
	@RequestMapping(value="/generic4", method = RequestMethod.GET)
	public void getApprovelist(Model model) throws Exception {
		logger.info("get generic4");
		
		List<frontVO> approvelist = null;
		approvelist = service.approvelist();
		model.addAttribute("approvelist",approvelist);
	}
	
	// http://localhost:8080/frontview/index
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public void index(Locale locale, Model model) {
		
	}

	// http://localhost:8080/frontview/generic1
	@RequestMapping(value = "/generic1", method = RequestMethod.GET)
	public void generic1(Locale locale, Model model) {
		
	}
	
	// http://localhost:8080/frontview/generic3
	@RequestMapping(value = "/generic3", method = RequestMethod.GET)
	public void generic3(Locale locale, Model model) {
		
	}
	
	// http://localhost:8080/frontview/generic5
	@RequestMapping(value = "/generic5", method = RequestMethod.GET)
	public void generic5(Locale locale, Model model) {
		
	}
	
	// http://localhost:8080/frontview/generic9
	@RequestMapping(value = "/generic9", method = RequestMethod.GET)
	public void generic9(Locale locale, Model model) {
		
	}
	
	// http://localhost:8080/frontview/index_a
	@RequestMapping(value = "/index_a", method = RequestMethod.GET)
	public void index_a(Locale locale, Model model) {
		
	}
	
}