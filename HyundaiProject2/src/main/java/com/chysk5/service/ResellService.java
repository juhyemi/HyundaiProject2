package com.chysk5.service;

import com.chysk5.domain.RegResellProductDTO;
import com.chysk5.domain.ResellProductDTO;

public interface ResellService {

	public ResellProductDTO getMyResellProduct(String pro_opt_id);
	
	public int register(RegResellProductDTO regResellProductDTO);
}
