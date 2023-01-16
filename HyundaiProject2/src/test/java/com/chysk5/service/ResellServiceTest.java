package com.chysk5.service;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.chysk5.domain.RegResellProductDTO;
import com.chysk5.domain.ResellPriceDTO;
import com.chysk5.domain.ResellProductDetailInfoDTO;
import com.chysk5.domain.ResellProductInfoDTO;
import com.chysk5.domain.ResellProductListDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


@RunWith(SpringRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
					   "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class ResellServiceTest {
	
	@Setter(onMethod_ = @Autowired )
	private ResellService service;
	
	@Test
	public void resellProductListServiceTest() {
		List<ResellProductListDTO> list = service.getResellProductList();
		for(ResellProductListDTO dto : list) {//불러와지는 객체와 같은 클래스를 가지고 있는지 비교
			assertThat(dto).isInstanceOf(ResellProductListDTO.class);
		}
	}
	
	@Test
	public void resellProductListDetailServiceTest() {
		
		assertThat(service.getResellProductListDetail("146")).isInstanceOf(ResellProductDetailInfoDTO.class);
		
	}
	
	/*
	 * 정기범 작성
	 * 등록하려는 상품 정보 조회
	 */
	@Test
	public void getResellProductsTest() {
		log.info("service 테스트");
		ResellProductInfoDTO resellInfo = new ResellProductInfoDTO();
		
		String pro_opt_id = "202";
		log.info(service.getMyResellProduct(pro_opt_id));
	}
	
	/*
	 * 정기범 작성
	 * 등록된 상품 가격 조회
	 */
	@Test
	 public void getPriceTests() {
		log.info("service 테스트");
	    String pro_opt_id = "202";
	    service.getPrice(pro_opt_id).forEach(product -> log.info(product));
	   }
	
	/*
	 * 정기범 작성
	 * 내가 입력한 가격의 순위 가져오기
	 */
	@Test
	public void getMyRankTests() {
		log.info("service 테스트");
		String pro_opt_id = "202";
		int pInt = 25000;
		
		log.info(service.getPriceRank(pro_opt_id, pInt) + "번째 순위입니다.");
	}
	
	/*
	 * 정기범 작성
	 * 상품 등록
	 */
	@Test
	public void registerTests() {
		log.info("serivice 테스트");
		RegResellProductDTO product = new RegResellProductDTO();
		product.setMember_mem_id("wenger");
		product.setRe_available("0");
		product.setProduct_option_pro_opt_id("353");
		product.setRe_price("35000");
		
		int result = service.register(product, "150");
		
		if(result == 1)	log.info("등록 완료");
		else log.info("error");
	}
}
