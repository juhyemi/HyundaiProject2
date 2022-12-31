package com.chysk5.service;

import org.springframework.stereotype.Service;

import com.chysk5.domain.RegResellProductDTO;
import com.chysk5.domain.ResellProductDTO;
import com.chysk5.mapper.ResellMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class ResellServiceImpl implements ResellService {

	private ResellMapper mapper;
	
	@Override
	public ResellProductDTO getMyResellProduct(String pro_opt_id) {
		log.info("reselldata 넘김");		
	    return mapper.getMyResellProduct(pro_opt_id);
	}

	@Override
	public int register(RegResellProductDTO regResellProductDTO) {
		log.info("reselldata go!!!!");
		return mapper.register(regResellProductDTO);
	}
	
}
