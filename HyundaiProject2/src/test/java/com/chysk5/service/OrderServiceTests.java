package com.chysk5.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.chysk5.domain.OrderDTO;
import com.chysk5.domain.OrderListDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
/* 
OrderServiceTest
@author 윤태영
@since 2023.01.04
 
<pre>
수정일          수정자                    수정내용
 ----------  ---------------    ---------------------------
2023.01.04   윤태영              최초 생성
2023.01.09   윤태영              serviceTest 최종 완료
 </pre>
*/

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class OrderServiceTests {
	
	 @Setter(onMethod_= {@Autowired})
    private OrderService service;
     
	 
	 // 주문양식 주문 물품 목록(체크박스 되어있는 장바구니 품목)
	 @Test
	 public void orderFormList() {
		 String mem_id="brsss";
		 service.orderFormList(mem_id).forEach(order->log.info("주문 목록:"+order));
		
	 }
	 
	// 주문 결제(카트 or 리셀 상품 주문으로 나누어서 처리)
	 @Test	 
	 public void orderComplete() {
		 String mem_id="brsss";
		 int order_resell_check= 0; // 카트주문시
		 //int order_resell_check= 1; // 리셀 상품 주문시
		 OrderDTO dto=new OrderDTO();
		 dto.setOrder_addr("servicetest-cart주문시");
		 //dto.setOrder_addr("servicetest-resell주문시");
	     dto.setOrder_post("21050");
		 if(order_resell_check==0) {
	     String re_id=null;
	     service.orderComplete(dto, mem_id, order_resell_check,re_id);		 
		 }
		 else {
			 String re_id ="28";
			 service.orderComplete(dto, mem_id, order_resell_check, re_id);
		 }	 
	 
	 }
	/* 주문 품목 장바구니 삭제 */
	 @Test
	 public void orderDelete() {

		 String mem_id="brsss";
		 OrderListDTO dto=new OrderListDTO();
		 dto.setProduct_option_pro_opt_id("1296");
		 service.orderDelete(mem_id,dto);		
	 
	 }

 	 

    
}
