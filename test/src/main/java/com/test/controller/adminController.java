package com.test.controller;

import java.util.List;
import javax.inject.Inject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.test.domain.testVO;
import com.test.service.adminService;
import com.test.service.testService;

@Controller
@RequestMapping("/admin/*")
public class adminController {
	
	private static final Logger logger = LoggerFactory.getLogger(adminController.class);

	@Inject
	private adminService adminService;
	@Inject
	private testService testService;
		
	// 고객요청 리스트 보기
	@RequestMapping(value="/offerlist", method = RequestMethod.GET)
	public void getOfferlist(Model model) throws Exception {
		logger.info("get offer");
		
		List<testVO> offerlist = null;
		
		offerlist = testService.offerlist();

		model.addAttribute("offerlist", offerlist);
	}
	
	// 고객요청 상품 조회
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public void getView(@RequestParam("idx") int idx, Model model) throws Exception {
		logger.info("get view");
		
		testVO vo = testService.view(idx);
		model.addAttribute("view",vo);
	}
	
	// 요청승인하기
	@RequestMapping(value = "/offer_approve", method = RequestMethod.POST)
	public String getApprove(@RequestParam("idx") int idx) throws Exception {
		logger.info("post approve");
		
		adminService.offer_approve(idx);
		return "redirect:/admin/offer_approve_list";
	}
	
	// 요청거부하기
	@RequestMapping(value= "/offer_reject", method = RequestMethod.POST)
	public String getReject(@RequestParam("idx") int idx) throws Exception {
		logger.info("post reject");
		
		adminService.offer_reject(idx);
		return "redirect:/admin/offer_reject_list";
	}
	
	// 승인리스트 보기
	@RequestMapping(value = "/offer_approve_list", method = RequestMethod.GET)
	public void getApprovelist(Model model) throws Exception {
		logger.info("get approvelist");
		
		List<testVO> approvelist = null;
		approvelist = adminService.approvelist();
		model.addAttribute("approvelist", approvelist);
	}
	
	// 거절리스트 보기
	@RequestMapping(value = "/offer_reject_list", method = RequestMethod.GET)
	public void getRejectlist(Model model) throws Exception {
		logger.info("get rejectlist");
		
		List<testVO> rejectlist = null;
		rejectlist = adminService.rejectlist();
		model.addAttribute("rejectlist", rejectlist);
	}
	
	// 승인 상품 보기 (view_approve.jsp)
	@RequestMapping(value = "/view_approve", method = RequestMethod.GET)
	public void getView_approve(@RequestParam("idx") int idx, Model model) throws Exception {
		logger.info("get view_approve");
		
		testVO vo = adminService.view_approve(idx);
		model.addAttribute("view_approve", vo);
	}
	
	// 승인 디스플레이(임시)
	@RequestMapping(value = "/add_display", method = RequestMethod.POST)
	public String getAdd_display(@RequestParam("idx") int idx) throws Exception {
		logger.info("post add_display");
		
		adminService.add_display(idx);
		return "redirect:/view/list3";
	}
		
	
	
	
	
}