package com.chysk5.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.chysk5.domain.ProductCriteria;
import com.chysk5.domain.ProductDTO;
import com.chysk5.domain.ProductImgDTO;
import com.chysk5.domain.ProductSizeDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class ProductServiceTests {
	
	 @Setter(onMethod_= {@Autowired})
	    private ProductService service;
	 
	 
	 // 제품 목록
	 @Test
	 public void productList() {

		 String category="Tops";
		 ProductCriteria criteria = null;
		 List<ProductDTO> list = service.getPListDB(category, criteria);
	 
	 }
	 
	// 제품 상세페이지
	 @Test
	 public void productOption() {
		 String pro_id = "3";
		 ProductDTO dto = service.getProductOption(pro_id);
		 log.info(dto);
	 }
	// 제품 사이즈
	 @Test
	 public void productSize() {
		 String pro_id = "3";
		 List<ProductSizeDTO> list = service.getProductSize(pro_id);
		 log.info(list);
	 }
	// 제품 이미지
	 @Test
	 public void productImage() {
		 String pro_id = "3";
		 List<ProductImgDTO> list = service.getProductImg(pro_id);
		 log.info(list);
	 }
	 
	// 제품 검색
	 @Test
	 public void search() {
		 String keyword = "matin";
		 List<ProductDTO> list = service.getProductSearch(keyword);
		 log.info(list);
	 }
	// 신상품
	 @Test
	 public void newitem() {
		 List<ProductDTO> list = service.getProductSearch(null);
		 log.info(list);
	 }
}
