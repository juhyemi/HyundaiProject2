package com.chysk5.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.chysk5.domain.CartDTO;


@Mapper
public interface OrderMapper {
	
	
	public List<CartDTO> orderList(String mem_id,String cart_select);
}

