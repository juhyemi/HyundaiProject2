package com.chysk5.controller;

import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chysk5.domain.MemberDTO;
import com.chysk5.service.MemberService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

/*
 * 신수진 작성 
 * */
@Controller
@Log4j
@RequestMapping("/member/*")
@RequiredArgsConstructor
public class MemberController {	
	
	private final MemberService service;
	
	// 회원가입 페이지로 이동
	@GetMapping("/join")
	public void joinForm() {}
	
	// 회원가입
	@PostMapping("/join")
	public String joinAction(MemberDTO member){
		
		log.info("join...." + member);
		
		service.join(member);
				
		return "redirect:/member/login";
	}
	
	// 로그인 페이지로 이동
	@GetMapping("/login")
	public void loginForm(String error, String logout, Model model) {
		
		log.info("error: " + error);
		log.info("logout: " + logout);
		
		if(error != null) {
			model.addAttribute("error", "Login Error Check Your Account");
		}
		
		if(logout != null) {
			model.addAttribute("logout", "Logout!!");
		}
	}

	
	// 로그아웃
	@PostMapping("/logout")
	public String logoutAction() {
		
		log.info("logout....");
		
		return "redirect:/main";
	}
	
	// 아이디 찾기 페이지로 이동
	@GetMapping("/findId")
	public String find_id() {
		return "member/findId";
	}
	
	// 비밀번호 찾기 페이지로 이동
	@GetMapping("/findPwd")
	public String find_pwd() {
		 return "member/findPwd";
	}
	
	
}
