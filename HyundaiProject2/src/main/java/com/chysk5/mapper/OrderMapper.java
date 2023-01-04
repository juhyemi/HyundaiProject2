package com.chysk5.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.chysk5.domain.CartDTO;


@Mapper
public interface OrderMapper {
	
	/* 주문양식 주문 물품 조회 */
	public List<CartDTO> orderFormList(String mem_id);
}

