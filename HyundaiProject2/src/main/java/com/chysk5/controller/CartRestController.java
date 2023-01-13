package com.chysk5.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.security.access.annotation.Secured;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.chysk5.domain.CartCntUpdateDTO;
import com.chysk5.domain.CartDTO;
import com.chysk5.domain.OrderListDTO;
import com.chysk5.domain.ProductOptionDTO;
import com.chysk5.service.CartSerivce;
import com.chysk5.service.OrderService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/*작성자: 윤태영
장바구니 기능 구현 */

@Log4j
@RestController
@RequestMapping("/cartAjax/")
@AllArgsConstructor

public class CartRestController {

	private CartSerivce cartservice;
	private OrderService orderservice;

	// 장바구니 담기
	@Secured({ "ROLE_MEMBER" })
	@PostMapping("/addCart")
	public String addCart(Principal prc, @RequestParam("pro_name") String pro_name,
			@RequestParam("pro_opt_size") String pro_opt_size, @RequestParam("pro_id") String pro_id) throws Exception {
		log.info("cart Insert Controller........!");	
		String mem_id = prc.getName();
		// product_opt_id 조회
		ProductOptionDTO product = new ProductOptionDTO(pro_id, pro_name, pro_opt_size);		
		String opt_id = cartservice.searchOptid(product);		
		CartDTO cart = new CartDTO(mem_id, opt_id);				
		String result=cartservice.addCart(cart);
        return result;
	}

	// 장바구니 수량 변경
	@Secured({ "ROLE_MEMBER" })
	@PostMapping("/updateCnt")
	public void updateCnt(@RequestBody CartCntUpdateDTO cntDTO) {

		cartservice.updateCnt(cntDTO);
		log.info("업데이트 성공");

	}

	// 장바구니 checkBOX
	@Secured({ "ROLE_MEMBER" })
	@PostMapping("/cartCheck")
	public String checkCart(@RequestParam("cart_no") String cart_no, @RequestParam("cart_select") String cart_select) {

		log.info("장바구니 CHECKBOX...........!");		
		cartservice.cartCheck(cart_no, cart_select);
		return cart_select;

	}

	// 체크된 상품 삭제
	@Secured({ "ROLE_MEMBER" })
	@PostMapping("/deleteCheck")
	public void deleteCheck(Principal prc, Model model) {
		String mem_id = prc.getName();
		List<OrderListDTO> orderFormList = orderservice.orderFormList(mem_id);
		model.addAttribute(orderFormList);
		cartservice.deleteCheck(mem_id);

	}

	// 장바구니 총 주문가격
	@Secured({ "ROLE_MEMBER" })
	@PostMapping("/totalPrice")
	public String totalPrice(Principal prc, Model model) {
		String mem_id = prc.getName();
		log.info("mem_id:" + mem_id);
		String totalprice = cartservice.totalPrice(mem_id);
		if (totalprice == null) {
			totalprice = "0";
		}
		model.addAttribute("totalprice", totalprice);
		return totalprice;
	}

	// 장바구니 전체삭제
	@Secured({ "ROLE_MEMBER" })
	@PostMapping("/deleteAll")
	public void deleteAll(Principal prc) {
		String mem_id = prc.getName();
		log.info(mem_id);
		cartservice.deleteAll(mem_id);

	}

}
