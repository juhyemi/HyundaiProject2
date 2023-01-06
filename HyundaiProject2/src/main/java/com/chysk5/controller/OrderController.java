package com.chysk5.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chysk5.domain.CartDTO;
import com.chysk5.domain.OrderDTO;
import com.chysk5.domain.OrderReselCheckDTO;
import com.chysk5.service.CartSerivce;
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
	
	@GetMapping("/orderForm")
	public String orderform(Principal prc,Model model,OrderReselCheckDTO dto) {
		 log.info("주문서 이동");
		 // 유저 id
		 String mem_id=prc.getName();
	     log.info("mem_id:"+mem_id);
	     String rck= dto.getOrder_resell_check();
	     log.info("리셀 체크여부 0-cart:"+ rck);
	     List<CartDTO>orderFormList = service.orderFormList(mem_id);	     
	     log.info(orderFormList);
	     model.addAttribute("orderReselCheck",rck); // 리셀 체크 여부
	     model.addAttribute("orderFormList",orderFormList);
	     return "order/orderForm";
	}
	
	@GetMapping("/resell")
	public String resellOrderForm() {
		
		//이제 여기 코딩해야 합니다.
		
		return "order/orderForm"; 
	}
	
	
	@PostMapping("/orderComplete")
	public String orderComplete(Principal prc,OrderDTO order,OrderReselCheckDTO dto) {
	 	 log.info("주문 결제"); 	 
	     int order_resell_check =Integer.parseInt(dto.getOrder_resell_check()); //일반 카트 상품 
		 String mem_id=prc.getName();
         log.info("리셀 order:"+order_resell_check);
		 log.info("mem_id:"+mem_id);
       	 // 주문완료
         List<CartDTO>cart=service.orderComplete(order,mem_id,order_resell_check);
         log.info("주문 완료 서비스 완료");
         cart.forEach(of->service.orderDelete(mem_id,of));	 
         log.info("주문시 장바구니 삭제 완료");
         
		return "redirect:/order/orderCompleteForm";
	}
	
	@GetMapping("/orderCompleteForm")
	public String orderCompleteForm(Model model) {
		return "order/orderCompleteForm";
	}
	
}
