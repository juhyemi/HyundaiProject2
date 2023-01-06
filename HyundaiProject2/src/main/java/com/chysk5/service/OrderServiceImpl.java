package com.chysk5.service;

import java.util.List;

import org.springframework.jdbc.core.RowMapperResultSetExtractor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chysk5.domain.CartDTO;
import com.chysk5.domain.OrderDTO;
import com.chysk5.domain.ReSellOrderFormDTO;
import com.chysk5.domain.ResellPriceSearchDTO;
import com.chysk5.domain.ResellProductSearchIdDTO;
import com.chysk5.mapper.OrderMapper;
import com.chysk5.mapper.ResellMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Service
@Log4j
@AllArgsConstructor
public class OrderServiceImpl implements OrderService {
    
	private OrderMapper mapper;
	private ResellMapper reSellMapper;
	
	
	@Override
	/* 주문양식 주문 물품 조회 */
	public List<CartDTO> orderFormList(String mem_id){			
		
		log.info("주문 물품 조회------!");
		return mapper.orderFormList(mem_id);
	};
	
	// 주문 결제
	
	@Override
	@Transactional
	 public List<CartDTO>orderComplete(OrderDTO order,String mem_id, int order_resell_check) {
		 log.info("주문서비스 접속------!");		 
		 List<CartDTO>orderFormList=mapper.orderFormList(mem_id);
		 log.info(".............!");
		 log.info(order_resell_check);
		 // 카트 일때
		 if(order_resell_check== 0) { 
	     log.info("카트 에서 주문 시작");
		 mapper.insertSelectKey(order,mem_id,order_resell_check);//orderDTO 에 값저장 ORDER_NO 가져옴
		 log.info("orderselectkey!");
		
		 }
		 else {
             order_resell_check=1;
			 log.info("resell주문 시작");
			 mapper.insertSelectKey(order,mem_id,order_resell_check);//orderDTO 에 값저장 ORDER_NO 가져옴
			 log.info("orderselectkey!");
				/*
				 * mapper.updateResell(re_id); //reavailable 업데이트
				 */		 
			 }
		 String order_no=order.getOrder_no();
		 log.info(order);
		 log.info("orderno:"+order_no);
		 orderFormList.forEach(of->mapper.insertOrderDetail(order_no,of));	 //ORDER_NO 받아서 주문 목록(선택된 카트 DTO)와 ORDER NO
	    return orderFormList;
	 } 
	
	@ Override
	public void orderDelete(String mem_id, CartDTO cart) {
		log.info("주문 물품 카트 삭제");
		mapper.cartOrderDelete(mem_id,cart);
		
	}
	
	
	@Override
	public List<CartDTO> resellOrderFormList(ResellPriceSearchDTO resellDto) {
		ResellProductSearchIdDTO idDto = reSellMapper.getResellProductSearchOptId(resellDto);
		String proOptId = idDto.getPro_opt_id();
		
		List<CartDTO> orderFormList = mapper.resellOrderFormList(proOptId);
		
		String proName = resellDto.getProName();
		String proSize = resellDto.getSizeVal();
		
		orderFormList.get(0).setPro_name(proName);
		orderFormList.get(0).setPro_opt_size(proSize);
		orderFormList.get(0).setCart_amount(1);
		
		//임시
		orderFormList.get(0).setPro_loc("https://matinkim.com/web/product/medium/202208/dce96a8aecca1308059adfcfa0a53875.jpg");
		
		return orderFormList;
	}
	
	
}
