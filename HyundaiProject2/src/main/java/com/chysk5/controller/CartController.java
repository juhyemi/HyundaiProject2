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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.chysk5.domain.CartDTO;
import com.chysk5.domain.MemberDTO;
import com.chysk5.service.CartSerivce;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import oracle.jdbc.proxy.annotation.Post;
/* 
CartController
@author 윤태영
@since 2023.01.02
 
<pre>
수정일          수정자                    수정내용
 ----------  ---------------    ---------------------------
2023.01.02   윤태영              최초 생성
2023.01.03   윤태영              장바구니 목록 출력, 장바구니 담기 테스트 코드                                  
2023.01.09   신수진              main header 장바구니에 담겨있는 상품 수량 구현
</pre>
*/
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
		model.addAttribute("cartList",cartList);
	}
    
    //장바구니 담기 테스트 코드
    @Secured({"ROLE_MEMBER"})
	@GetMapping("/cartInsertTest")
	public void cartaddpage(Model model) {
		log.info("cartaddpage");
	}
    
    
    //장바구니 물건 개수 출력 
    @PostMapping("/selCartCnt")
    @ResponseBody
    public String selCatCnt(Principal prin) {
    	
    	log.info("select cart count controller....");
    	
    	String mem_id = prin.getName();
    	
    	String result = service.selectCartCnt(mem_id) + "";
    	
    	log.info("select cart count result : " + result);
    	
    	return result;
    }

}
