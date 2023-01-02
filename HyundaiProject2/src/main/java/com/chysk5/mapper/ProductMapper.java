package com.chysk5.mapper;

import java.util.List;

import com.chysk5.domain.ProductDTO;
import com.chysk5.domain.ProductImgDTO;
import com.chysk5.domain.ProductSizeDTO;

public interface ProductMapper {
	
	public List<ProductDTO> getPList(String category);
	
	public ProductDTO getProductOption(String pro_id);
	
	public List<ProductSizeDTO> getProductSize(String pro_id);
	
	public List<ProductImgDTO> getProductImg(String pro_id);
	
}
