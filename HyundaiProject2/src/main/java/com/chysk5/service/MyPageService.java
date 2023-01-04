package com.chysk5.service;

import java.util.List;
import com.chysk5.domain.MyResellProductDTO;

public interface MyPageService {
	
	public List<MyResellProductDTO> getMyResellList(String mem_id);
	public int removeMyResellProduct(String re_id);
}
