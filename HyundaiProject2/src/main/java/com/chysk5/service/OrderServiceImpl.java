package com.chysk5.service;

import java.util.List;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chysk5.domain.CartDTO;
import com.chysk5.domain.OrderDTO;
import com.chysk5.mapper.OrderMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Service
@Log4j
@AllArgsConstructor

public class OrderServiceImpl implements OrderService {
    
	private OrderMapper mapper;
	
	
	@Override
	/* 주문양식 주문 물품 조회 */
	public List<CartDTO> orderFormList(String mem_id){			
		
		log.info("주문 물품 조회------!");
		return mapper.orderFormList(mem_id);
	};
	
	// 주문 결제
	
	@Override
	@Transactional
	 public List<CartDTO>orderComplete(OrderDTO order,String mem_id) {
		 log.info("주문서비스 접속------!");		 
		 List<CartDTO>orderFormList=mapper.orderFormList(mem_id);
		 log.info(".............!");
		 mapper.insertSelectKey(order,mem_id);
		 log.info("orderselectkey!");
		 String order_no=order.getOrder_no();
		 log.info(order);
		 log.info("orderno:"+order_no);
	     orderFormList.forEach(of->mapper.insertOrderDetail(order_no,of));	 
	    return orderFormList;
	 } 
	
	@ Override
	public void orderDelete(String mem_id, CartDTO cart) {
		log.info("주문 물품 카트 삭제");
		mapper.cartOrderDelete(mem_id,cart);
		
	}
	
	
}
