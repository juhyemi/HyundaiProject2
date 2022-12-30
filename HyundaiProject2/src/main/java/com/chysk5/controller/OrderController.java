package com.chysk5.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/order/")
public class OrderController {
	
	
	@GetMapping("/orderform")
	public String orderform(Model model) {
		
		return "order/orderForm";
	}
	
	@GetMapping("/ordercomplete")
	public String orderComplete(Model model) {
		
		return "order/orderComplete";
	}
}
