package com.chysk5.mapper;

import com.chysk5.domain.RegResellProductDTO;
import com.chysk5.domain.ResellProductDTO;

public interface ResellMapper {
	
	public ResellProductDTO getMyResellProduct(String pro_opt_id);
	
	public int register(RegResellProductDTO regResellProductDTO);

}
