package com.chysk5.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.chysk5.domain.CartCntUpdateDTO;
import com.chysk5.domain.CartDTO;
import com.chysk5.domain.ProductOptionDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/* 
cartServiceTest
@author 윤태영
@since 2023.01.02
 
<pre>
수정일          수정자                    수정내용
 ----------  ---------------    ---------------------------
2023.01.02   윤태영              최초 생성
2023.01.06   윤태영              장바구니 service test
</pre>
*/

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class CartServiceTests {
	
	 @Setter(onMethod_= {@Autowired})
    private CartSerivce service;
   
	 // 장바구니 목록 호출 
	 @Test
	 public void cartList() {
		 String mem_id="yoon";
		 service.cartList(mem_id).forEach( cart ->log.info("카트 목록:"+cart));
	 }
	 
	// 장바구니 추가 
    @Test
	 public void addCart(){
		 CartDTO cart=new CartDTO();
		 cart.setMember_mem_id("brsss");
		 cart.setProduct_option_pro_opt_id("1297");
		 service.addCart(cart);
			 
	 }
    
    //물품 옵션 고유 넘버 조회
    @Test
  	 public void searchOptid(){
    	ProductOptionDTO product =new ProductOptionDTO();
    	product.setProduct_pro_id("359");
    	product.setPro_opt_size("S");
    	product.setPro_name("MATIN SYMBOL HALF SWEATPANTS IN BLACK");
    	
    	String opt_id=service.searchOptid(product);
  	    log.info(opt_id);
    }
   
    
    // 카트수량 업데이트
    @Test
  	 public void updateCnt(){
    	CartCntUpdateDTO dto=new CartCntUpdateDTO();
    	dto.setCart_amount("4");
    	dto.setCart_no("183");
    	service.updateCnt(dto);
    	log.info("카트수량:"+dto.getCart_amount());

    }
    
    // 장바구니 체크 박스
    @Test
  	 public void cartCheck(){
  		 String cart_no="196";
  		 String cart_select="1";
  		 String mem_id="brsss";
  		 service.cartCheck(cart_no, cart_select); 		
  		 service.cartList(mem_id).forEach( cart ->log.info("카트 체크박스:"+cart.getCart_select()));
  	 }
    
    // 장바구니 체크 선택 삭제
    @Test
  	 public void deleteCheck(){
  		 String mem_id="brsss";
  		 service.cartList(mem_id).forEach( cart ->log.info("카트 목록 1: "+cart));
  		 service.deleteCheck(mem_id);
  		 service.cartList(mem_id).forEach( cart ->log.info("카트 목록 2: "+cart));
  		
  	 }
    // 총액 구하기
    @Test
 	 public void totalPrice(){
 		String mem_id="brsss";
 	    String total_price=service.totalPrice(mem_id);
 	    log.info(total_price); 		 
 	 }
    
    // 전체 삭제
    @Test
 	 public void deleteAll(){
    	String mem_id="brsss";
    	service.deleteAll(mem_id);
    	service.cartList(mem_id).forEach( cart ->log.info("카트 목록: "+cart));
 		 		 
 	 }
    
    //카트수량 얻기
    @Test
 	 public void selectCartCnt(){
    	String mem_id="brsss";
    	int cnt=service.selectCartCnt(mem_id);
    	log.info(cnt);
 		 		 
 	 }

    
}
