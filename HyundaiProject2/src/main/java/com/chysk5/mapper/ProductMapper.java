package com.chysk5.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.chysk5.domain.ProductCriteria;
import com.chysk5.domain.ProductDTO;
import com.chysk5.domain.ProductImgDTO;
import com.chysk5.domain.ProductSizeDTO;

public interface ProductMapper {
	
	public List<ProductDTO> getPList(@Param("category") String category,@Param("criteria") ProductCriteria criteria);
	
	public ProductDTO getProductOption(String pro_id);
	
	public List<ProductSizeDTO> getProductSize(String pro_id);
	
	public List<ProductImgDTO> getProductImg(String pro_id);
	
	public List<ProductDTO> getProductSearch(String keyword);
	
	//public List<ProductDTO> getProductListWithPaging(ProductCriteria criteria);
	
	public List<ProductDTO> getNewIn();

	public int getTotalCount(String category);

}
