package com.chysk5.service;

import java.util.List;

import com.chysk5.domain.CartDTO;
import com.chysk5.domain.OrderDTO;
import com.chysk5.domain.ReSellOrderFormDTO;
import com.chysk5.domain.ResellPriceSearchDTO;



public interface OrderService {
	/* 주문양식 주문 물품 조회 */
	 public List<CartDTO> orderFormList(String mem_id);
	 public List<CartDTO>orderComplete(OrderDTO order,String mem_id,int order_resell_check,String re_id); 
	 public void orderDelete(String mem_id,CartDTO cart);
	 
	 public List<CartDTO> resellOrderFormList(ResellPriceSearchDTO dto);
  

}  
