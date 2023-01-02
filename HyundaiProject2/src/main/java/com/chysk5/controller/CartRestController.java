package com.chysk5.controller;



import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.chysk5.domain.CartDTO;
import com.chysk5.domain.ProductOptionDTO;
import com.chysk5.service.CartSerivce;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@RestController
@RequestMapping("/cartAjax/")
@AllArgsConstructor

public class CartRestController {
   
	private CartSerivce service;
	
	
	// 장바구니 담기 -- session 으로 mem_id 받아와야 한다
	@Secured({"ROLE_MEMBER"})
	@PostMapping("/addCart")
	public void addCart(@RequestParam("pro_name") String pro_name,@RequestParam("pro_opt_size") String pro_id,@RequestParam("pro_id") String pro_opt_size)throws Exception{
	  	   
	    log.info("add cart");
	    String mem_id="yoon";
	  //cart.setMember_mem_id(mem_id);
	    ProductOptionDTO product=new ProductOptionDTO(pro_id,pro_name,pro_opt_size);
 	    String opt_id=service.seachOptid(product); 
     	CartDTO cart=new CartDTO(mem_id,opt_id);
        log.info("opt_id:"+opt_id);
	    log.info("cart:"+cart);   
	    log.info("add cart 서비스 호출 전");
	    service.addCart(cart);
		
	} 
}
