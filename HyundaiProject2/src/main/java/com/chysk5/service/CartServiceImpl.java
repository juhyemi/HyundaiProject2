package com.chysk5.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.chysk5.domain.CartDTO;
import com.chysk5.mapper.CartMapper;


import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Service
@Log4j
@AllArgsConstructor
public class CartServiceImpl implements CartSerivce {
    
	private CartMapper mapper;
	
	public List<CartDTO>cartList(){
		
		log.info("cartlist..!");		
    return mapper.cartList();		
		
	};
}
