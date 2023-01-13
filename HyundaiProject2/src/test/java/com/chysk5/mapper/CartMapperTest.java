package com.chysk5.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.chysk5.domain.CartDTO;
import com.chysk5.domain.ProductOptionDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/*
 * 윤태영 작성 22/12/31
 * */
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
		List<CartDTO> cartlist = mapper.cartList(mem_id);
		log.info("cart list:" + cartlist);
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

	// 장바구니 담기
	@Test
	public void addCart() {

		CartDTO cart = new CartDTO();
		cart.setMember_mem_id("yoon");
		cart.setProduct_option_pro_opt_id("3");
		mapper.addCart(cart);
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
	/*
	 * @Test public void increaseCount() {
	 * 
	 * CartDTO cart=new CartDTO(); cart.setMember_mem_id("yoon");
	 * cart.setProduct_option_pro_opt_id("3"); mapper.increaseCount(cart);
	 * 
	 * 
	 * }
	 */

	// 장바구니 삭제
	/*
	 * @Test public void delete() {
	 * 
	 * String member_mem_id = "yoon"; String product_option_pro_opt_id = "3";
	 * mapper.delete(member_mem_id, product_option_pro_opt_id); }
	 */
	// 장바구니에 담겨있는 수량 select
	@Test
	public void TestSelectCartCnt() {
		String mem_id = "jinjin";

		int result = mapper.selectCartCnt(mem_id);

		log.info("select cart cnt result : " + result);
	}
}
