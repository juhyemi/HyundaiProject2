package com.chysk5.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.chysk5.domain.TestDTO;
import com.chysk5.mapper.TestMapper;

import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@RequiredArgsConstructor
public class TestDataServiceImpl implements TestService{

	private final TestMapper mapper;
	
	@Override
	public List<TestDTO> testDataBase() {
		System.out.println("??????");
		log.info(">>>>>>serviceImpl 호출이다!!!");

		return mapper.getList();
		
	}
	
}
