package com.chysk5.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;



import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class OrderServiceTests {
	
	 @Setter(onMethod_= {@Autowired})
    private OrderService service;
     
	 
	 // 주문양식 주문 물품 목록
	 @Test
	 public void orderFormList() {

		 String mem_id="brsss";
		 service.orderFormList(mem_id).forEach(order->log.info("주문 목록:"+order));		 
	 
	 }
	 
		/*
		 * @Test public void orderComplete(){ String mem_id="brsss"; int
		 * order_resell_check=0; String re_id
		 * 
		 * }
		 */

 	 

    
}
