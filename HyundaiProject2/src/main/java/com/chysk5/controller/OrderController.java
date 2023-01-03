package com.chysk5.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chysk5.service.OrderService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/order/")
public class OrderController {
	
	
	private OrderService service;
	//주문 결제창 이동
	@GetMapping("/orderform")
	public String orderform(Principal prc,HttpServletRequest request,Model model) {
		 log.info("주문서 이동");
		 // 유저 id
		 String mem_id=prc.getName();
	     log.info("mem_id:"+mem_id);
	     String cart_select="1";
	     log .info("caret_select:"+cart_select);
	     service.orderList( mem_id,cart_select);
	     
	     
	     return "order/orderForm";
	}
	
	@GetMapping("/ordercomplete")
	public String orderComplete(Model model) {
		
		return "order/orderComplete";
	}
}
