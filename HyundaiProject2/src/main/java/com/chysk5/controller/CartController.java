package com.chysk5.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chysk5.domain.CartDTO;
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
	@GetMapping("/cartList")
	public 	void cartlist(Model model) {
		
		log.info("get cart list");
		String mem_id="yoon";
		
		List<CartDTO> cartList=service.cartList(mem_id);
		log.info(cartList);
		model.addAttribute("cartList",cartList);
		//return "cart/cartList";
	}
   	
	@GetMapping("/cartInsertTest")
	public void cartaddpage(Model model) {
		log.info("cartaddpage");
	}

}
