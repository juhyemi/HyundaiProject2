package com.chysk5.service;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.chysk5.domain.ResellPriceSearchDTO;
import com.chysk5.domain.ResellProductDetailInfoDTO;
import com.chysk5.domain.ResellProductDetailPriceDTO;
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
	
	@Test
	public void resellProductPriceDetailTest() {
		ResellPriceSearchDTO resellDto =  new ResellPriceSearchDTO();
		resellDto.setProName("PINTUCK LOGO CROP TOP IN PINK");
		resellDto.setSizeVal("S");
		assertThat(service.getResellProductPriceDetail(resellDto)).isInstanceOf(ResellProductDetailPriceDTO.class);
	}
	
	
}
