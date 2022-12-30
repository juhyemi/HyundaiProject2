package com.chysk5.mapper;

import java.util.List;

import com.chysk5.domain.ProductDTO;

public interface ProductMapper {
	
	public List<ProductDTO> getPList(String kind);
	
	
}
