package com.chysk5.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chysk5.domain.TestDTO;
import com.chysk5.service.TestService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/test")
@RequiredArgsConstructor
public class TestController {
	
	private final TestService service;
	
	@GetMapping("/data")
	public String testdatabase(Model model) {
		log.info(">>>>>>/data 호출");
		
		log.info(model);
		
		return "testImage";
	}
	
	
	
	
	@GetMapping("/main")
	public String testMain(Model model) {
		log.info("###################################################");
		System.out.println("check");
		return "main";
	}
	
	
	@GetMapping("/aaa")
	public String testImage(Model model) {
		log.info(">>>>>>> : testImage");
		
		return "testImage";
	}
	
	
}
