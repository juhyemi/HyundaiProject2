package com.chysk5.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chysk5.domain.CartDTO;
import com.chysk5.domain.OrderDTO;
import com.chysk5.domain.OrderListDTO;
import com.chysk5.domain.ResellPriceSearchDTO;
import com.chysk5.domain.ResellProductSearchIdDTO;
import com.chysk5.domain.productImageDTO;
import com.chysk5.mapper.OrderMapper;
import com.chysk5.mapper.ResellMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
/* 
OrderServiceImpl
@author 윤태영
@since 2023.01.04
 
<pre>
수정일          수정자                    수정내용
 ----------  ---------------    ---------------------------
2023.01.04   윤태영              최초 생성
2023.01.04   윤태영              카트->주문 양식 물품 조회 service 구현
2023.01.05   함세강              resell 상품 주문서 조회 
2023.01.06   윤태영              주문결제 service 구현, 주문시 카트에 주문 물품 삭제 service 구현
2023.01.08   윤태영              리셀 주문 결제시 카트상품 결제 되는 오류 수정
 </pre>
*/

@Service
@Log4j
@AllArgsConstructor
public class OrderServiceImpl implements OrderService {
    
	private OrderMapper mapper;
	private ResellMapper reSellMapper;
	
	
	@Override
	/* 주문양식 주문 물품 조회 */
	public List<OrderListDTO> orderFormList(String mem_id){			
		
		log.info("주문 물품 조회------!");
		return mapper.orderFormList(mem_id);
	};
	
	// 주문 결제(카트 or 리셀 상품 주문으로 나누어서 처리 및 트랜잭션 처리)
	@Override
	@Transactional
	 public List<OrderListDTO>orderComplete(OrderDTO order,String mem_id, int order_resell_check, String re_id) {
		 log.info("주문서비스 접속------!");		 
		 List<OrderListDTO>orderFormList=mapper.orderFormList(mem_id);
		 
		 // 카트상품 주문시
		 if(order_resell_check== 0) { 			 
	     log.info("카트 에서 주문 시작");
		 mapper.insertSelectKey(order,mem_id,order_resell_check);//orderDTO 에 값저장 ORDER_NO 가져옴
		 String order_no=order.getOrder_no();
		 log.info("order_total 추가 완료");
		 orderFormList.forEach(of->mapper.insertOrderDetail(order_no,of));	 //ORDER_NO 받아서 주문 목록(선택된 카트 DTO)와 ORDER NO
		 log.info("order detail 추가 완료");			
		 }
		 else {		 // 리셀 상품 주문시
			 log.info("resell주문 시작");
			 String pro_opt_id=mapper.getReproductOptId(re_id);
			 mapper.insertSelectKey(order,mem_id,order_resell_check);//orderDTO 에 값저장 ORDER_NO 가져옴
			 String order_no=order.getOrder_no();
			 log.info("리셀 order_total 추가 완료");			
		     mapper.updateResell(re_id); //reavailable 업데이트(리셀 상품 구매 가능 여부)	
		     mapper.insertresellOrderDetail(order_no,pro_opt_id);
		     log.info("리셀 order_detail 추가 완료");	
			 }		 		 	 
		 return orderFormList;
	 } 
		
	// 주문시 카트 물품 삭제
	@ Override
	public void orderDelete(String mem_id, OrderListDTO orderList) {
		log.info("주문 물품 카트 삭제");
		mapper.cartOrderDelete(mem_id,orderList);
		
	}
	
	
  
	//리셀 품목 주문목록 조회
	
	@Override
	public List<OrderListDTO> resellOrderFormList(ResellPriceSearchDTO resellDto) {
		ResellProductSearchIdDTO idDto = reSellMapper.getResellProductSearchOptId(resellDto);
		String proOptId = idDto.getPro_opt_id();
		productImageDTO imDto=mapper.getProductImage(resellDto);
		String pro_loc=imDto.getPro_loc();
		List<OrderListDTO> orderFormList = mapper.resellOrderFormList(proOptId);
		
		String proName = resellDto.getProName();
		String proSize = resellDto.getSizeVal();
		
		orderFormList.get(0).setPro_name(proName);
		orderFormList.get(0).setPro_opt_size(proSize);
		orderFormList.get(0).setCart_amount(1);
		orderFormList.get(0).setPro_loc(pro_loc);
		
		return orderFormList;
	}
	
	
}
