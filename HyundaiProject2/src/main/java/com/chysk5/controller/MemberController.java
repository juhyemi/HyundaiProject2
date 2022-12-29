package com.chysk5.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chysk5.service.MemberService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

/*
 * 신수진 작성 
 * */
@Controller
@Log4j
@RequestMapping("/member/")
@RequiredArgsConstructor
public class MemberController {	
	
	private final MemberService service;
	
	// 로그인 페이지로 이동
	@GetMapping("login")
	public String login() {
		return "member/login";
	}
	
	// 회원가입 페이지로 이동
	@GetMapping("join")
	public String join() {
		return "member/join";
	}
	
	// 아이디 찾기 페이지로 이동
	@GetMapping("find_id")
	public String find_id() {
		return "member/find_id";
	}
	
	// 비밀번호 찾기 페이지로 이동
	@GetMapping("find_pwd")
	public String find_pwd() {
		 return "member/find_pwd";
	}
	
	
}
