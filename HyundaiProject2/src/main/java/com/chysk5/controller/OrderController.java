package com.chysk5.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.chysk5.domain.CartDTO;
import com.chysk5.domain.OrderDTO;
import com.chysk5.domain.OrderReselCheckDTO;
import com.chysk5.domain.OrderTotalPriceDTO;
import com.chysk5.domain.ReSellOrderFormDTO;
import com.chysk5.domain.ResellPriceSearchDTO;
import com.chysk5.service.CartSerivce;
import com.chysk5.service.OrderService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/order")
public class OrderController {
	
	private OrderService service;
	
	//주문 결제창 이동
	
	@GetMapping("/orderForm")
	@Secured({"ROLE_MEMBER"})
	public String orderform(Principal prc,Model model,OrderReselCheckDTO dto) {
		 log.info("주문서 이동");
		 // 유저 id
		 String mem_id=prc.getName();
	     log.info("mem_id:"+mem_id);
	     String order_resell_check= dto.getOrder_resell_check();
	     log.info("리셀 체크여부 0-cart:"+ order_resell_check);
	     List<CartDTO>orderFormList = service.orderFormList(mem_id);	     
	     log.info("orderFormList:"+orderFormList);
	     model.addAttribute("orderReselCheck", order_resell_check); // 리셀 체크 여부
	     model.addAttribute("orderReselCheck", order_resell_check); // 리셀 체크 여부
	     model.addAttribute("orderFormList",orderFormList);
	     return "order/orderForm";
	}
	
	@GetMapping("/resell")
	@Secured({"ROLE_MEMBER"})
	public String resellOrderForm(ResellPriceSearchDTO dto, Model model) {
		
		log.info("#########################resellOrderForm 컨트롤러 호출 ");
		
		log.info(dto);
	
		List<CartDTO>orderFormList = service.resellOrderFormList(dto);
		String order_resell_check= "1";//리셀 상품인경우가 1이었나???? 뭐였지 ㅋㅋ
		model.addAttribute("orderReselCheck",order_resell_check);
		model.addAttribute("orderFormList",orderFormList);
		
		
		return "order/orderForm"; 
	}
	
	
	@PostMapping("/orderComplete")
	public String orderComplete(Principal prc,OrderDTO order,OrderReselCheckDTO dto,OrderTotalPriceDTO dto2,RedirectAttributes rttr ) {
	 	 log.info("주문 결제"); 	 
	     int order_resell_check =Integer.parseInt(dto.getOrder_resell_check()); //일반 카트 상품	     
	     String re_id=dto.getRe_id(); 
	     String order_total_price=dto2.getOrder_total_price();
	     if(re_id==null) {
	    	re_id="0"; 
	     }	     	   
		 String mem_id=prc.getName();
         log.info("리셀 order:"+order_resell_check);
         log.info("리셀 id:"+re_id);
		 log.info("mem_id:"+mem_id);
       	 // 주문완료
         List<CartDTO>cart=service.orderComplete(order,mem_id,order_resell_check,re_id);
         log.info("주문 완료 서비스 완료");
         //장바구니 상품만 삭제
         if(order_resell_check==0) {
         cart.forEach(of->service.orderDelete(mem_id,of));	 
         log.info("주문시 장바구니 삭제 완료");
         }
        rttr.addFlashAttribute("order_total_price",order_total_price);
		return "redirect:/order/orderCompleteForm";
	}
	
	@GetMapping("/orderCompleteForm")
	public String orderCompleteForm() {
		return "order/orderCompleteForm";
	}
	
}
