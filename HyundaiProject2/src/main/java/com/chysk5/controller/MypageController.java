package com.chysk5.controller;

import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/mypage/")
@RequiredArgsConstructor
public class MypageController {

	// 마이페이지 메인 화면으로 이동
	@Secured({"ROLE_MEMBER"})
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
	
	
}
