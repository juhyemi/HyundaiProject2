package com.chysk5.controller;



import java.security.Principal;
import java.util.List;

import org.springframework.security.access.annotation.Secured;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.chysk5.domain.CartCntUpdateDTO;
import com.chysk5.domain.CartDTO;
import com.chysk5.domain.CartTotalPriceDTO;
import com.chysk5.domain.ProductOptionDTO;
import com.chysk5.service.CartSerivce;
import com.chysk5.service.OrderService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@RestController
@RequestMapping("/cartAjax/")
@AllArgsConstructor

public class CartRestController {
   
	private CartSerivce cartservice;
	private OrderService orderservice;
	
	// 장바구니 담기
	@Secured({"ROLE_MEMBER"})
	@PostMapping("/addCart")
	public String addCart(Principal prc,@RequestParam("pro_name") String pro_name,@RequestParam("pro_opt_size") String pro_opt_size,@RequestParam("pro_id") String pro_id)throws Exception{
		String mem_id= prc.getName();
	    log.info("add cart start");
	    log.info(pro_name);
    	log.info("user id:"+mem_id);
		log.info("get cart list");       
		 		//product_opt_id 조회	   
		ProductOptionDTO product=new ProductOptionDTO(pro_id,pro_name,pro_opt_size);
	    log.info(product);
 	    String opt_id=cartservice.searchOptid(product); 
     	// cart 삽입(존재여부 체크 )
 	    CartDTO cart=new CartDTO(mem_id,opt_id);
        log.info("opt_id:"+opt_id);
	    log.info("cart:"+cart);   
	    log.info("add cart 서비스 호출 전"); 
	    if(cartservice.checkCart(cart)>0) {
	    	cartservice.increaseCount(cart);
	    	log.info("장바구니 존재 o 수량 증가");
	    	return "update";
	    }
	    else {
	    	cartservice.addCart(cart);
	    	 log.info("장바구니 존재 x 장바구니 등록");
	    	 return "insert";	    
	    }
	   	   
		
	} 
	
	//수량 변경
	@Secured({"ROLE_MEMBER"})
	@PostMapping("/updateCnt")	
	public void updateCnt(@RequestBody CartCntUpdateDTO cntDTO) {
	   log.info("cart_no:"+cntDTO.getCart_no());	  
	   log.info("cart_no:"+cntDTO.getCart_amount());	  
		  
	   cartservice.updateCnt(cntDTO);	    
	   log.info("업데이트 성공");	
	   
	}
	
	// 장바구니 check
	@Secured({"ROLE_MEMBER"})
	@PostMapping("/cartCheck")
	public String checkCart(@RequestParam("cart_no") String cart_no,@RequestParam("cart_select") String cart_select) {
	   log.info("cart_no:"+cart_no);
	   log.info("cart_select:"+cart_select);
	   cartservice.cartCheck(cart_no,cart_select);	    
	   return cart_select;
	   
	}
	
	//체크된 상품 삭제
	@Secured({"ROLE_MEMBER"})
	@PostMapping("/deleteCheck")
	public void deleteCheck(Principal prc,Model model) {
	   String mem_id=prc.getName();
		log.info("mem_id:"+mem_id);
	   //log.info("cart_select:"+cart_select);
	  List<CartDTO>orderFormList = orderservice.orderFormList(mem_id);	     
	  model.addAttribute(orderFormList);	    
	  cartservice.deleteCheck(mem_id);	    
	   
	}
	
	
	//장바구니 총 주문가격
	@Secured({"ROLE_MEMBER"})
	@PostMapping("/totalPrice")
	public String totalPrice(Principal prc,Model model) {
	     String mem_id=prc.getName();
		 log.info("mem_id:"+mem_id);	   
	     String totalprice= cartservice.totalPrice(mem_id);	
	     if(totalprice==null) {
	        totalprice="0";
	     }
	     model.addAttribute("totalprice", totalprice); 
	     return totalprice;
	}
	
	// 장바구니 전체삭제
	  @Secured({"ROLE_MEMBER"})
      @PostMapping("/deleteAll") 
	  public void deleteAll(Principal prc){
		  String mem_id=prc.getName();
		  log.info(mem_id);
		  cartservice.deleteAll(mem_id);
		  
	  }
	 
	
}
