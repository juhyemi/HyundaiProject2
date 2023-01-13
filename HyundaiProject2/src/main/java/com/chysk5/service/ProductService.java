package com.chysk5.service;

import java.util.List;

import com.chysk5.domain.Criteria;
import com.chysk5.domain.ProductCriteria;
import com.chysk5.domain.ProductDTO;
import com.chysk5.domain.ProductImgDTO;
import com.chysk5.domain.ProductSizeDTO;
/*
 * 작성자 : 김주혜
 */
public interface ProductService {
	// 제품 목록
	public List<ProductDTO> getPListDB(String category,ProductCriteria criteria);
	// 제품 상세페이지
	public ProductDTO getProductOption(String pro_id);
	// 제품 사이즈
	public List<ProductSizeDTO> getProductSize(String pro_id);
	// 제품 이미지
	public List<ProductImgDTO> getProductImg(String pro_id);
	// 제품 검색
	public List<ProductDTO> getProductSearch(String keyword);
	// 페이징
	public int getTotal(String category);
	// 신상품
	public List<ProductDTO> getNewIn();

}
