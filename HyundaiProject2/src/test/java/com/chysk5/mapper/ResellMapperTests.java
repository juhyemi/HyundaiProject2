package com.chysk5.mapper;


import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.Assert.assertThat;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.chysk5.domain.PriceRankDTO;
import com.chysk5.domain.RegResellProductDTO;
import com.chysk5.domain.ResellPriceDTO;
import com.chysk5.domain.ResellPriceSearchDTO;
import com.chysk5.domain.ResellProductDTO;
import com.chysk5.domain.ResellProductDetailInfoDTO;
import com.chysk5.domain.ResellProductListDTO;
import com.chysk5.domain.ResellProductSearchIdDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
					   "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class ResellMapperTests {

	@Setter(onMethod_ = @Autowired)
	private ResellMapper mapper;
	
	/*
	 * 정기범 작성
	 * 등록할 상품 정보 출력
	 */
	@Test
	public void testGetMyResellProduct() {
		log.info("@@@@@@@ testGetMyResellProduct 호출");
		
		ResellProductDTO resellProductDTO = new ResellProductDTO();
		resellProductDTO = mapper.getMyResellProduct("147");
		
		log.info(resellProductDTO.getPro_name());
		log.info(resellProductDTO.getPro_opt_size());
		log.info(resellProductDTO.getPro_price());
	}
	
	/*
	 * 정기범 작성
	 * 이미 등록된 상품 가격리스트 조회
	 */
	@Test
	public void testGetPriceList() {
		log.info("@@@@@@@@ priceList");
		
		List<ResellPriceDTO> resellPriceList = mapper.getPriceList("147");
		
		for(int i=0; i<resellPriceList.size(); i++) {
			log.info(resellPriceList.get(i));
		}
	}
	
	/*
	 * 정기범 작성
	 * 상품 등록
	 */
	@Test
	public void testRegister() {
		log.info("@@@@@@ testRegister 호출");
	
		RegResellProductDTO regSellProductDTO = new RegResellProductDTO();
		
		regSellProductDTO.setRe_id("10");
		regSellProductDTO.setRe_price("19000");
		regSellProductDTO.setRe_available("0");
		regSellProductDTO.setMember_mem_id("chung");
		regSellProductDTO.setProduct_option_pro_opt_id("4");
		
		mapper.register(regSellProductDTO);
	}
	
	/*
	 * 정기범 작성
	 * 내가 입력한 금액보다 낮은 금액의 갯수를 파악
	 */
	@Test
	public void testExistData() {
		log.info("@@@@@@@ testExistData 호출");

		String pro_opt_id = "147";
		int pInt = 90000;
		
		int result = mapper.existData(pro_opt_id, pInt);
		result++;
		log.info(result + "순위");
	}
	
	/*
	 * 정기범 작성
	 * 내가 등록하려는 금액의 순위 확인
	 */
	@Test
	public void testGetMyRank() {
		log.info("@@@@@@@ testGetMyRank 호출");
		
		PriceRankDTO priceRankDTO = new PriceRankDTO();
		
		priceRankDTO.setPro_opt_id("147");
		priceRankDTO.setRe_price("25000");
		
		int pInt = Integer.parseInt(priceRankDTO.getRe_price());
		
		log.info(priceRankDTO.getPro_opt_id());
		log.info(priceRankDTO.getRe_price());
		Integer rank = mapper.getMyRank(priceRankDTO.getPro_opt_id(), pInt);
		
		if(rank == null)	log.info("최저가 입니다");
		else log.info(rank + "번째 순위입니다!");		
	}
	
	/*
	 * 정기범 작성
	 * 상품 등록시 등록되었는지 확인하는 컬럼 업데이트
	 */
	@Test
	public void testUpdate() {
		log.info("@@@@@@@@@ 업데이트 확인");
		
		int result = mapper.updateRegStatus("148", "6");
		log.info(result);
	}
	
	
	
	//함세강 작성
	@Test
	public void resellProductListMapperTest() {//Resell 상품 조회하는 mapper 테스트
		List<ResellProductListDTO> list = mapper.getResellProductList();
		for(ResellProductListDTO dto : list) {
			assertThat(dto).isInstanceOf(ResellProductListDTO.class);
			//불러와지는 객체와 같은 클래스를 가지고 있는지 비교
		}
	}
	
	@Test
	public void getResellProductDetailTest() {
		assertThat(mapper.getResellProductDetail("146")).isInstanceOf(ResellProductDetailInfoDTO.class);
		
	}
	
	@Test
	public void resellProductSearchOptIdTests() {
		ResellPriceSearchDTO resellDto =  new ResellPriceSearchDTO();
		resellDto.setProName("PINTUCK LOGO CROP TOP IN PINK");
		resellDto.setSizeVal("S");
		assertThat(mapper.getResellProductSearchOptId(resellDto)).isInstanceOf(ResellProductSearchIdDTO.class);

	}
	
	@Test
	public void resellProductDetailLowPriceTests() {
		String proOptId = "338";
		assertThat(Integer.parseInt(mapper.getResellProductDetailLowPrice(proOptId).getRe_low_price())).isGreaterThan(0);
		
	}
	
	@Test
	public void resellProductDetailDatePriceTests() {
		String proOptId = "338";
		assertThat(mapper.getResellProductDetailDatePrice(proOptId).size()).isEqualTo(14);
	}
	
	
}
