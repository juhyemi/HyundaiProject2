package com.chysk5.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chysk5.domain.CartDTO;
import com.chysk5.domain.MemberDTO;
import com.chysk5.service.CartSerivce;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
//cart목록 - 1231 윤태영 작성 
@Log4j
@Controller
@AllArgsConstructor
@RequestMapping("/cart/")

public class CartController {
    private CartSerivce service;
    
    // 장바구니 목록 출력 	
    @Secured({"ROLE_MEMBER"})
	@GetMapping("/cartList")
	public 	void cartlist(Principal prc,Model model) {   
    	String mem_id= prc.getName();
		List<CartDTO> cartList=service.cartList(mem_id);
		log.info(cartList);
		model.addAttribute("cartList",cartList);
	}
    
    //장바구니 담기 테스트 코드
    @Secured({"ROLE_MEMBER"})
	@GetMapping("/cartInsertTest")
	public void cartaddpage(Model model) {
		log.info("cartaddpage");
	}

}
