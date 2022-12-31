package com.chysk5.controller;


/*
 * 기범
 */

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.chysk5.domain.RegResellProductDTO;
import com.chysk5.domain.ResellProductDTO;
import com.chysk5.service.ResellService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/resell/")
@AllArgsConstructor
public class ResellController {
	
	private ResellService service;
	
	@GetMapping("/register")
	public String getMyResellProduct(@RequestParam("pro_opt_id") String pro_opt_id, Model model){
		
		log.info("pro_opt_id: " + pro_opt_id);
		ResellProductDTO resellProductDTO = new ResellProductDTO();
		
		resellProductDTO = service.getMyResellProduct(pro_opt_id);
		resellProductDTO.setPro_opt_id(pro_opt_id);
		
		log.info("resellProduct: " + resellProductDTO);
		
		model.addAttribute("product", resellProductDTO);
		
		return "resell/register";
	}
	
	@PostMapping("/register")
	public String regMyResellProduct(RegResellProductDTO regResellProductDTO, RedirectAttributes rttr) {
		
		log.info("register: " + regResellProductDTO);
		service.register(regResellProductDTO);
		rttr.addFlashAttribute("result");
		return "redirect:/main";
	}
}
