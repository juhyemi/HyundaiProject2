package com.chysk5.controller;


import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.chysk5.domain.PriceRankDTO;
import com.chysk5.domain.RegResellProductDTO;
import com.chysk5.domain.ResellPriceSearchDTO;
import com.chysk5.domain.ResellProductDetailInfoDTO;
import com.chysk5.domain.ResellProductDetailPriceDTO;
import com.chysk5.domain.ResellProductInfoDTO;
import com.chysk5.domain.ResellProductListDTO;
import com.chysk5.service.ResellService;

import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;


/*
 *  정기범, 함세강 작성
 */

@Controller
@Log4j
@RequestMapping("/resell")
@RequiredArgsConstructor
public class ResellController {
	
	private final ResellService service;
	
	@GetMapping
	public String getResellProductList(Model model) {
		
		log.info("resell controller 호출");
		
		List<ResellProductListDTO> list =  service.getResellProductList();
		
		log.info("데이터 전달 성공");
		log.info(list);
		
		model.addAttribute("rProduct", list);
		
		return "resell/resellProductList";
	}
	
	
	@GetMapping("/{proId}")
	public String getResellProductDetail(@PathVariable String proId,Model model) {
		
		log.info(">>>>>>>>>>>> getResellProductDetail 컨트롤러 호출");
		log.info(proId);
		
		ResellProductDetailInfoDTO dto = service.getResellProductListDetail(proId);
		
		model.addAttribute("productDetail", dto);
		
		log.info("데이터 전달 성공 : "+ dto);
		
		return "resell/resellProductDetail";
	}
	

	@PostMapping("/price")
	@ResponseStatus(HttpStatus.OK)
	@ResponseBody
	public ResellProductDetailPriceDTO getResellProductPrice(@RequestBody ResellPriceSearchDTO searchDTO) {
		ResellProductDetailPriceDTO dto = service.getResellProductPriceDetail(searchDTO);
		
		
		log.info("getResellProductPrice 호출");
		
		log.info(searchDTO);
		log.info(dto);
		
		return dto;
	}
	
	

	@GetMapping("/register")
	public String getMyResellProduct(@RequestParam("pro_opt_id") String pro_opt_id, Model model){
		
		log.info("pro_opt_id: " + pro_opt_id);
		ResellProductInfoDTO resellProductInfoDTO = new ResellProductInfoDTO();
		
		resellProductInfoDTO = service.getMyResellProduct(pro_opt_id);
		
		log.info("resellProduct: " + resellProductInfoDTO.getResellProductDTO().getPro_name());
		log.info("resellProduct: " + resellProductInfoDTO.getResellProductDTO().getPro_opt_id());
		log.info("resellProduct: " + resellProductInfoDTO.getResellProductDTO().getPro_opt_size());
		log.info("resellProduct: " + resellProductInfoDTO.getResellProductDTO().getPro_price());
		
		model.addAttribute("product", resellProductInfoDTO);
		
		return "resell/register";
	}
	
	@PostMapping("/register")
	public String regMyResellProduct(RegResellProductDTO regResellProductDTO, RedirectAttributes rttr) {
		
		log.info("register: " + regResellProductDTO);
		service.register(regResellProductDTO);
		rttr.addFlashAttribute("result");
		return "redirect:/main";
	}
	
	@ResponseBody
	@GetMapping("/register/myRank")
	public String getPriceRank(PriceRankDTO priceRankDTO) {
		log.info("getPriceRank*********");
		log.info(priceRankDTO.getPro_opt_id());
		log.info(priceRankDTO.getRe_price());
		String noCommaPrice = priceRankDTO.getRe_price().replaceAll("[^ㄱ-ㅎㅏ-ㅣ가-힣a-zA-Z0-9]", "");
		
		int pInt = Integer.parseInt(noCommaPrice);
		
		String rank = String.valueOf(service.getPriceRank(priceRankDTO.getPro_opt_id(), pInt));
		log.info(rank + "번째 순위 임 !!!");
		return rank;
	}
}
