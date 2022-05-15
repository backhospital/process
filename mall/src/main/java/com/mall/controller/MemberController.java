package com.mall.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mall.service.MemberService;
import com.mall.vo.MemberVO;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService service;
			
	// 회원 가입 get
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public void getSignup() throws Exception {
		logger.info("get signup");
	}
	
	// 회원 가입 post
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String postSignup(MemberVO vo) throws Exception {
		logger.info("post signup");
				
		service.signup(vo);
		
		return "redirect:/";
	}		
	
	// 아이디 중복 검사
	@ResponseBody
	@RequestMapping(value = "/memberIdCk", method = RequestMethod.POST)
	public String memberIdCkPOST(String userId) throws Exception {

		logger.info("memberIdChk() 호출");

		int result = service.idCheck(userId);

		logger.info("결과값 = " + result);

		if (result != 0) {
			return "fail"; // 중복 아이디가 존재
		} else {
			return "success"; // 중복 아이디 x
		}

	}
	
	// 로그인  get
	@RequestMapping(value = "/signin", method = RequestMethod.GET)
	public void getSignin() throws Exception {
		logger.info("get signin");
	}
	
	// 로그인 post
	@RequestMapping(value = "/signin", method = RequestMethod.POST)
	public String postSignin(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		logger.info("post signin");
				
		System.out.println("vo : " + vo);
		
		
		MemberVO login = service.signin(vo);  // MemverVO형 변수 login에 로그인 정보를 저장
		HttpSession session = req.getSession();  // 현재 세션 정보를 가져옴
		
		System.out.println("login : " + login);
				
		if(login != null) {  // 아이디가 존재하고(!=null), 비밀번호가 맞으면(PassMatch = true) 
			session.setAttribute("member", login);  // member 세션에 로그인 정보를 부여
			
		} else {  // 아이디가 존재하지 않고, 비밀번호가 틀리면
			session.setAttribute("member", null);  // member 세션에 null 부여  
			rttr.addFlashAttribute("msg", false);  // 1회성인 변수인 msg에 false 부여
			return "redirect:/member/signin";  // 로그인 화면으로 이동
		}		
		
		return "redirect:/";
	}
			
	// 로그아웃
	@RequestMapping(value = "/signout", method = RequestMethod.GET)
	public String signout(HttpSession session) throws Exception {
		logger.info("get logout");
		
		service.signout(session);  // 세션 정보를 제거
				
		return "redirect:/";
	}
	
	// 회원정보 조회
	@RequestMapping(value = "member/memberview", method = RequestMethod.GET)
	public void getMemberView(@RequestParam("useridx") int useridx, Model model) throws Exception {
		
		MemberVO vo = service.memberview(useridx);
		model.addAttribute("memberview", vo);
	}
	
	// 회원정보 수정 : get
	@RequestMapping(value = "member/membermodify", method = RequestMethod.GET)
	public void getMemberModify(@RequestParam("useridx") int useridx, Model model) throws Exception {
		logger.info("get member modify");
		
		MemberVO vo = service.memberview(useridx);
		model.addAttribute("memberview", vo);
	}
	
	// 회원정보 수정 : post
	@RequestMapping(value = "member/membermodify", method = RequestMethod.POST)
	public String postMemberModify(MemberVO vo) throws Exception {
		logger.info("post member modify");
		
		service.memberModify(vo);
		return "redirect:/";
	}

	// 회원정보 삭제 
	@RequestMapping(value = "member/memberdelete")
	public String getDelete(@RequestParam("useridx") int useridx) throws Exception {
		logger.info("member delete done");
		
		service.memberDelete(useridx);
		return "redirect:/member/signout";
	}

	
		
}