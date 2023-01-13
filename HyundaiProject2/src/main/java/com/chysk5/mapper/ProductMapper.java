package com.chysk5.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.chysk5.domain.ProductCriteria;
import com.chysk5.domain.ProductDTO;
import com.chysk5.domain.ProductImgDTO;
import com.chysk5.domain.ProductSizeDTO;
// 작성자 : 김주혜
public interface ProductMapper {
	// 카테고리 별 상품 리스트
	public List<ProductDTO> getPList(@Param("category") String category,@Param("criteria") ProductCriteria criteria);
	// 상품 상세페이지
	public ProductDTO getProductOption(String pro_id);
	// 상품 사이즈
	public List<ProductSizeDTO> getProductSize(String pro_id);
	// 상품 이미지
	public List<ProductImgDTO> getProductImg(String pro_id);
	// 검색
	public List<ProductDTO> getProductSearch(String keyword);
	// 신상품
	public List<ProductDTO> getNewIn();
	// 페이징
	public int getTotalCount(String category);

}
