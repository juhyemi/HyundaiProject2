package com.chysk5.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.chysk5.domain.MyResellProductDTO;
import com.chysk5.service.MyPageService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@Secured({"ROLE_MEMBER"})
@RequestMapping("/mypage/")
@AllArgsConstructor

public class MypageController {
	
	private MyPageService service;

	// 마이페이지 메인 화면으로 이동
	@GetMapping("/index")
	public void index() {}
	
	// 주문내역 페이지로 이동
	@GetMapping("/myorder")
	public void myorder() {}
	
	// 최근 본 상품 페이지로 이동
	@GetMapping("/recent_view_product")
	public void recentView() {}
	
	// 내가 쓴 글 페이지로 이동
	@GetMapping("/myarticle")
	public void myarticle() {}
	
	// 회원 정보 수정 페이지로 이동
	@GetMapping("/modify")
	public void modify() {}
	
	@GetMapping("/myResell")
	public String getMyResellList(Model model) {
		log.info("MyResell 페이지 이동");
		
		List<MyResellProductDTO> myResellList = new ArrayList<>();
	
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	    User user = (User)authentication.getPrincipal();    
	    String mem_id = user.getUsername();
	    
		myResellList = service.getMyResellList(mem_id);
		model.addAttribute("myResellList", myResellList);
		
		return "mypage/myResellPage";
	}
	
	@ResponseBody
	@DeleteMapping(value="/myResell/{re_id}")
	public void removeMyResellProduct(@PathVariable("re_id") String re_id) {
		log.info("hello");
		int result = service.removeMyResellProduct(re_id);
		
		return;
	}
}
