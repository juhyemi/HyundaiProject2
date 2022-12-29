package com.chysk5.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chysk5.domain.TestDTO;
import com.chysk5.service.TestService;

import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/test")
@Log4j
@RequiredArgsConstructor
public class TestController {
	
	private final TestService service;
	
	@GetMapping("/data")
	public String testDB(Model model) {
		
		log.info(service);
		log.info("controller에서 service 호출");
		List<TestDTO> list =  service.testDataBase();
		
		model.addAttribute("listJSP", list);
		
		log.info(model);
		
		System.out.println("end");
		return "check";
	}
	
}
