package com.chysk5.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.chysk5.domain.CartDTO;
import com.chysk5.mapper.OrderMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Service
@Log4j
@AllArgsConstructor

public class OrderServiceImpl implements OrderService {
    
	private OrderMapper mapper;
	
	/* 주문양식 주문 물품 조회 */
	public List<CartDTO> orderFormList(String mem_id){			
		return mapper.orderFormList(mem_id);
	};
	
	
}
