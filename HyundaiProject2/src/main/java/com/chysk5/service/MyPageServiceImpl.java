package com.chysk5.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.chysk5.domain.MyResellProductDTO;
import com.chysk5.mapper.MyPageMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class MyPageServiceImpl implements MyPageService {

	private MyPageMapper mapper;
	
	@Override
	public List<MyResellProductDTO> getMyResellList(String mem_id) {
		log.info("MyPage Service 들어옴 !!");
		List<MyResellProductDTO> myResellList = new ArrayList<>();
		
		myResellList = mapper.getMyResellList(mem_id);
		
		for(MyResellProductDTO a : myResellList) {
			log.info(a);
		}
		
	
		return myResellList;
	}

}
