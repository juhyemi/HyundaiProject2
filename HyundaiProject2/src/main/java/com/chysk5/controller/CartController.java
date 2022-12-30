package com.chysk5.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chysk5.service.CartSerivce;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
@RequestMapping("/cart/")
public class CartController {
    private CartSerivce service;
	@GetMapping("/cartdetail")
	public String cartdetail(Model model) {
		
		return "cart/cartDetail";
	}
}
