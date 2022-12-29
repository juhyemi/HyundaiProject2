package com.chysk5.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.chysk5.domain.TestDTO;
import com.chysk5.mapper.TestMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@RequiredArgsConstructor
public class TestServiceImpl implements TestService{

	private final TestMapper mapper;
	
	@Override
	public List<TestDTO> getDB() {
		log.info("service 호출");

		return mapper.getList();
	}
	
	
	
}
