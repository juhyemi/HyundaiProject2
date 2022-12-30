package com.chysk5.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chysk5.service.ProductService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/product/")
@RequiredArgsConstructor
public class ProductController {
	private final ProductService service;
	@GetMapping("list/{category}")
	public String productList(@PathVariable("category") String kind) {
		log.info("-------------------> 컨트롤러 호출");
		log.info(kind);
		service.getPListDB(kind);
		return "product/productList";
	}
	
	@GetMapping("/detail")
	public String productDetail() {
		return "product/productDetail";
	}
	


}
