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
	
	
	public List<CartDTO> orderList(String mem_id,String cart_select){
		
		
		
		return mapper.orderList(mem_id, cart_select);
	};
	
	
}
