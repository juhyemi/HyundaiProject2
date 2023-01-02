package com.chysk5.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.chysk5.domain.ProductDTO;
import com.chysk5.domain.ProductImgDTO;
import com.chysk5.domain.ProductSizeDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class ProductMapperTests {

	@Setter(onMethod_ = @Autowired)
	private ProductMapper mapper;
	
	@Test
	public void selectList() {
		
		log.info("selectList.....");
		
		String kind = "Tops";
		
		List<ProductDTO> list = mapper.getPList(kind);
		
		log.info(list);
	}
	
	@Test
	public void selectOption() {
		log.info("selectOption..........");
		
		String pro_id = "2";
		
		ProductDTO list = mapper.getProductOption(pro_id);
		log.info(list);
	}
	
	@Test
	public void selectSize() {
		log.info("selectOption..........");
		
		String pro_id = "2";
		
		List<ProductSizeDTO> list = mapper.getProductSize(pro_id);
		log.info(list);
	}
	
	@Test
	public void selectImg() {
		log.info("selectOption..........");
		
		String pro_id = "2";
		
		List<ProductImgDTO> list = mapper.getProductImg(pro_id);
		log.info(list);
	}
}
