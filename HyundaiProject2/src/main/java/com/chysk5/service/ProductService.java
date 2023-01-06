package com.chysk5.service;

import java.util.List;

import com.chysk5.domain.Criteria;
import com.chysk5.domain.ProductDTO;
import com.chysk5.domain.ProductImgDTO;
import com.chysk5.domain.ProductSizeDTO;

public interface ProductService {
	
	public List<ProductDTO> getPListDB(String category, Criteria cri);
	
	public ProductDTO getProductOption(String pro_id);
	
	public List<ProductSizeDTO> getProductSize(String pro_id);
	
	public List<ProductImgDTO> getProductImg(String pro_id);
	
	public List<ProductDTO> getProductSearch(String keyword);
	
	//public List<ProductDTO> getPageList(Criteria cri);
	
	public int getTotal(Criteria cri);
	

}
