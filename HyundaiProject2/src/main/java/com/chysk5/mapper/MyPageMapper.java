package com.chysk5.mapper;

import java.util.List;

import com.chysk5.domain.MyResellProductDTO;

public interface MyPageMapper {

	public List<MyResellProductDTO> getMyResellList(String mem_id);
	public int removeMyResellProduct(String re_id);
}
