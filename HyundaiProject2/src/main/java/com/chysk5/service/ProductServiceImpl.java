package com.chysk5.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.chysk5.domain.Criteria;
import com.chysk5.domain.ProductDTO;
import com.chysk5.domain.ProductImgDTO;
import com.chysk5.domain.ProductSizeDTO;
import com.chysk5.mapper.ProductMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@RequiredArgsConstructor
public class ProductServiceImpl implements ProductService {

	private final ProductMapper mapper;

	// 상품 목록 select 메소드
	@Override
	public List<ProductDTO> getPListDB(String category) {
		log.info("call productService...........");

		log.info(category);

		List<ProductDTO> list = mapper.getPList(category);

		log.info(list);

		return mapper.getPList(category);

	} 

	@Override
	public ProductDTO getProductOption(String pro_id) {
		log.info("call ProductOptionService..........");
		log.info(pro_id);

		return mapper.getProductOption(pro_id);

	}

	@Override
	public List<ProductSizeDTO> getProductSize(String pro_id) {
		log.info("call ProductSizeService..............");
		log.info(pro_id);

		return mapper.getProductSize(pro_id);
	}
	
	@Override
	public List<ProductImgDTO> getProductImg(String pro_id) {
		log.info("call ProductImgService..............");
		log.info(pro_id);
		
		return mapper.getProductImg(pro_id);
	}
	
	@Override
	public List<ProductDTO> getProductSearch(String keyword) {
		log.info("call ProductSearch.................");
		log.info(keyword);
		
		return mapper.getProductSearch(keyword);
		
	}
	
//	@Override
//	public List<ProductDTO> getPageList(Criteria cri) {
//		log.info("call PageList serviceImpl....." + cri);
//		
//		return mapper.getPageList(cri);
//	}
	
	@Override
	public int getTotal(Criteria cri) {
		log.info("get total count serviceImpl.....");
		return mapper.getTotalCount(cri);
	}
	// new 상품목록 list
	@Override
	public List<ProductDTO> getNewIn() {
		log.info("call newproductService...........");


		List<ProductDTO> list = mapper.getNewIn();

		log.info(list);

		return mapper.getNewIn();

	} 

}
