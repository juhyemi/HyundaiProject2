package com.chysk5.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chysk5.domain.ProductDTO;
import com.chysk5.domain.ProductImgDTO;
import com.chysk5.domain.ProductSizeDTO;
import com.chysk5.service.ProductService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/product/")
@RequiredArgsConstructor
public class ProductController {

	private final ProductService service;
	
	//상품 리스트
	@GetMapping("list/{category}")
	public String productList(@PathVariable("category") String category, Model model) {

		log.info("call productController........");

		log.info(category);

		List<ProductDTO> list = service.getPListDB(category);
		log.info(list);
		model.addAttribute("list", list);
		model.addAttribute("category", category);
		return "product/list";

	}
	
	//상품 상세페이지
	@GetMapping("option/{pro_id}")
	public String productOption(@PathVariable("pro_id") String pro_id, Model model) {

		log.info("call productOptionController..........");
		log.info(pro_id);
		
		ProductDTO product = service.getProductOption(pro_id);
		List<ProductSizeDTO> sizeList = service.getProductSize(pro_id);
		List<ProductImgDTO> imgList = service.getProductImg(pro_id);
		log.info(product);
		log.info(sizeList);
		log.info(imgList);
		model.addAttribute("product", product);
		model.addAttribute("sizeList", sizeList);
		model.addAttribute("imgList", imgList);
		return "product/option";
	}


}
