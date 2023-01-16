package com.chysk5.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.chysk5.domain.CartDTO;
import com.chysk5.domain.OrderDTO;
import com.chysk5.domain.OrderListDTO;
import com.chysk5.domain.OrderReselCheckDTO;
import com.chysk5.domain.OrderTotalPriceDTO;
import com.chysk5.domain.ResellPriceSearchDTO;
import com.chysk5.service.OrderService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/* 
OrderController
@author 윤태영
@since 2023.01.04
 
<pre>
수정일          수정자                    수정내용
 ----------  ---------------    ---------------------------
2023.01.04   윤태영              최초 생성
2023.01.05   윤태영              카트-> 주문 양식 물품 조회 구현                                 
2023.01.05   함세강              resell 상품 주문서 조회                                 
2023.01.06   윤태영              주문 결제 기능 구현                                 
                               
</pre>
*/

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/order")
public class OrderController {

	private OrderService service;

	// 주문 결제창 이동
	@GetMapping("/orderForm")
	@Secured({ "ROLE_MEMBER" })
	public String orderform(Principal prc, Model model, OrderReselCheckDTO dto) {
		// 주문서 이등
		String mem_id = prc.getName();
		String order_resell_check = dto.getOrder_resell_check();
		log.info("리셀 체크여부 0-cart:" + order_resell_check);
		List<OrderListDTO> orderFormList = service.orderFormList(mem_id);
		model.addAttribute("orderReselCheck", order_resell_check); // 리셀 상품 체크 여부
		model.addAttribute("orderFormList", orderFormList);
		return "order/orderForm";
	}
	
    // 리셀 주문 목록 불러오기
	@GetMapping("/resell")
	@Secured({ "ROLE_MEMBER" })
	public String resellOrderForm(ResellPriceSearchDTO dto, Model model) {

		log.info("#########################resellOrderForm 컨트롤러 호출 ");
		log.info(dto);
		List<OrderListDTO> orderFormList = service.resellOrderFormList(dto);
		String order_resell_check = "1";
		model.addAttribute("orderReselCheck", order_resell_check);
		model.addAttribute("orderFormList", orderFormList);

		return "order/orderForm";
	}
    // 주문 완료 처리
	@PostMapping("/orderComplete")
	public String orderComplete(Principal prc, OrderDTO order, OrderReselCheckDTO dto, OrderTotalPriceDTO dto2,
			RedirectAttributes rttr) {
		log.info("주문 결제");
		// 카트상품 혹은 리셀상품 구분을 위해 order_resell_check 를 받아옴
		int order_resell_check = Integer.parseInt(dto.getOrder_resell_check());
		String re_id = dto.getRe_id();
		String order_total_price = dto2.getOrder_total_price();
		if (re_id == null) {
			re_id = "0";
		}
		
		String mem_id = prc.getName();
		
		// 주문완료
		List<OrderListDTO> orderList = service.orderComplete(order, mem_id, order_resell_check, re_id);
		
		log.info("주문 완료 서비스 완료");
		
		// 장바구니 주문상품만 장바구니삭제
		if (order_resell_check == 0) {
			
			orderList.forEach(of -> service.orderDelete(mem_id, of));
			log.info("주문시 장바구니 삭제 완료");
		}
		
		rttr.addFlashAttribute("order_total_price", order_total_price);
		
		return "redirect:/order/orderCompleteForm";
	}

	@GetMapping("/orderCompleteForm")
	public String orderCompleteForm() {
				return "order/orderCompleteForm";
	}

}
