package com.chysk5.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;

import com.chysk5.domain.CartCntUpdateDTO;
import com.chysk5.domain.CartDTO;
import com.chysk5.domain.ProductOptionDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/* 
cartMapperTest
@author 윤태영
@since 2023.01.02
 
<pre>
수정일          수정자                    수정내용
 ----------  ---------------    ---------------------------
2023.01.02   윤태영              최초 생성
2023.01.06   윤태영              장바구니 Mapper test                  
2023.01.09   신수진              장바구니에 담겨있는 수량 조회 테스트                  
</pre>
*/
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class CartMapperTest {

	@Setter(onMethod_ = @Autowired)
	private CartMapper mapper;

	// cartlist 작성
	@Test
	public void cartListTest() {
		String mem_id = "yoon";
		 mapper.cartList(mem_id).forEach( cartlist ->log.info("카트 목록:"+cartlist));
	}

	// 장바구니 담기
	@Test
	public void addCart() {

		CartDTO cart = new CartDTO();
		cart.setMember_mem_id("brsss");
		cart.setProduct_option_pro_opt_id("1297");
		mapper.addCart(cart);
	}

	// product 옵션 id 조회
	@Test
	public void searchOptid() {

		String pro_id = "140";
		String pro_name = "MATIN SYMBOL HOODY IN BLUE";
		String pro_opt_size = "M";
		ProductOptionDTO product = new ProductOptionDTO(pro_id, pro_name, pro_opt_size);
		String optid = mapper.searchOptid(product);
		log.info(optid);
	}

	// 카트 담기시 중복 여부
	@Test
	public void checkCart() {

		CartDTO cart = new CartDTO();
		cart.setMember_mem_id("yoon");
		cart.setProduct_option_pro_opt_id("3");
		int result = mapper.checkCart(cart);
		log.info("checkCart:" + result);

	}

	// 카트에 물품 존재시 장바구니 수량 증가
	@Test
	public void increaseCount() {

		CartDTO cart = new CartDTO();
		cart.setMember_mem_id("brsss");
		cart.setProduct_option_pro_opt_id("1297");
		mapper.increaseCount(cart);

	}
	
	// 카트 체크 박스
	@Test
	public void Cartcheck() {
        String cart_no="196";
        String cart_select="1";
		mapper.Cartcheck(cart_no,cart_select);
        mapper.cartList("brsss").forEach( cartlist ->log.info("카트 목록:"+cartlist));

	}
	// 체크된 상품 삭제
	@Test
	public void deleteCheck() {

		String mem_id = "brsss";
		mapper.deleteCheck(mem_id);
		mapper.cartList("brsss").forEach( cartlist ->log.info("카트 목록:"+cartlist));

	}
	//  장바구니 수량 update
	@Test
	public void updateCnt() {
		CartCntUpdateDTO dto =new CartCntUpdateDTO();
		dto.setCart_amount("3");
		dto.setCart_no("185");
		mapper.updateCnt(dto);
		mapper.cartList("brsss").forEach( cartlist ->log.info("카트 목록:"+cartlist));

	}
	//장바구니 전체 금액
	@Test
	public void totalPrice() {

		String mem_id = "brsss";
		String totalPrice=mapper.totalPrice(mem_id);
		log.info(totalPrice);
	}
	//장바구니 전체 삭제
	@Test
	public void deleteAll() {

		String mem_id = "brsss";
		mapper.deleteAll(mem_id);
		mapper.cartList("brsss").forEach( cartlist ->log.info("카트 목록:"+cartlist));


	}
	/*
	 * 작성자 : 신수진 
	 * 기능 : 장바구니에 담겨있는 수량 조회 테스트
	 */
	@Test
	public void TestSelectCartCnt() {
		String mem_id = "jinjin";

		int result = mapper.selectCartCnt(mem_id);

		log.info("select cart cnt result : " + result);
	}
}
