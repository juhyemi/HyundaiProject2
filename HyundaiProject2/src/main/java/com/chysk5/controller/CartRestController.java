package com.chysk5.controller;



import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.chysk5.domain.CartDTO;
import com.chysk5.service.CartSerivce;

import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@RestController
@RequestMapping("/cartAjax/")
@AllArgsConstructor
public class CartRestController {
   
	private CartSerivce service;
	
	
	// 장바구니 담기 -- session 으로 mem_id 받아와야 한다
	
	@PostMapping("/addCart")
	public void addCart(@RequestParam("product_option_pro_opt_id") String opt_id)throws Exception{
	  	   
	    log.info("add cart");
	    String mem_id="yoon";
	  //cart.setMember_mem_id(mem_id);
	    CartDTO cart=new CartDTO(mem_id,opt_id);
 
	    log.info(opt_id);
	    log.info(cart);   
	    log.info("id가 set 되었을까??");
	    
	    service.addCart(cart);
		
	} 
}
