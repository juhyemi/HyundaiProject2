package com.chysk5.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.chysk5.domain.ProductDTO;
import com.chysk5.mapper.ProductMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@RequiredArgsConstructor
public class Productimpl implements ProductService{
	
	private final ProductMapper productmapper;

	@Override
	public List<ProductDTO> getPListDB(String kind){
		log.info("-----------> 서비스 호출");
		log.info(kind);
		List<ProductDTO> list = productmapper.getPList(kind);
		log.info(list);
		return productmapper.getPList(kind);
		
	}
	


}
