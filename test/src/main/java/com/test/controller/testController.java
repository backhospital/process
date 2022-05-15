package com.test.controller;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import com.test.domain.testVO;
import com.test.service.testService;
import com.test.utils.UploadFileUtils;

@Controller
@RequestMapping("/*")
public class testController {
	
	private static final Logger logger = LoggerFactory.getLogger(testController.class);

	@Inject
	private testService service;
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	// 리스트페이지 + 이미지 가져오기 1
	@RequestMapping(value="view/list", method = RequestMethod.GET)
	public void getList(Model model) throws Exception {
		logger.info("get list");
		
		List<testVO> list = null;
		list = service.list();
		model.addAttribute("list",list);
	}
	
	// 사용자 게시판 이동
	@RequestMapping(value = "customer/register", method = RequestMethod.GET)
	public void getGoodsRegister(Model model) throws Exception {
		logger.info("get goods register");
		
		model.addAttribute("register",model);  // 변수 category를 제이슨(json)타입으로 변환하여 category 세션에 부여
	}
	
	// 상품 등록
	@RequestMapping(value = "customer/register", method = RequestMethod.POST)
	public String postGoodsRegister(testVO vo, MultipartFile file) throws Exception {
		
		String imgUploadPath = uploadPath + File.separator;  // 이미지를 업로드할 폴더를 설정 = /uploadPath/imgUpload 
//		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);  // 위의 폴더를 기준으로 연월일 폴더를 생성
		String fileName = null;  // 기본 경로와 별개로 작성되는 경로 + 파일이름
				
		if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			// 파일 인풋박스에 첨부된 파일이 없다면(=첨부된 파일이 이름이 없다면)
			
			fileName =  UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes());
	
			// gdsImg에 원본 파일 경로 + 파일명 저장
			vo.setData1(fileName);
			// gdsThumbImg에 썸네일 파일 경로 + 썸네일 파일명 저장
			// vo.setOfferthumbimg(File.separator + "imgUpload" + File.separator + "s" + File.separator + "s_" + fileName);
			
		} else {  // 첨부된 파일이 없으면
			fileName = File.separator + "images" + File.separator + "none.png";
			// 미리 준비된 none.png파일을 대신 출력함
			
			vo.setData1(fileName);
			// vo.setOfferthumbimg(fileName);
		}
		
		
		System.out.println("=================");
		
		System.out.println("1 = " + vo.getData3());
		System.out.println("1 = " + vo.getData2());
		System.out.println("1 = " + vo.getData4());
		System.out.println("1 = " + vo.getData1());
		System.out.println("=================");
							
		service.register(vo);
		
		return "redirect:/view/list";
	}
	
	// 고객요청 상품 조회 (view.jsp)
	@RequestMapping(value = "view/view", method = RequestMethod.GET)
	public void getView(@RequestParam("idx") int idx, Model model) throws Exception {
		logger.info("get view");
		
		testVO vo = service.view(idx);
		model.addAttribute("view",vo);
	}
		
	
	
	
	
}