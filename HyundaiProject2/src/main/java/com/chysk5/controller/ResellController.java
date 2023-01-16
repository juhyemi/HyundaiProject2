package com.chysk5.controller;


import java.security.Principal;
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
		log.info(searchDTO);
		ResellProductDetailPriceDTO dto = service.getResellProductPriceDetail(searchDTO);
		
		
		log.info("getResellProductPrice 호출");
		log.info(searchDTO);
		
		log.info(dto);
		
		return dto;
	}
	

	/*
	 * 정기범 작성
	 * resell/register.jsp 로 들어왔을때 보여줄 정보들을 전달하는 역할
	 */
	@GetMapping("/register")
	public String getMyResellProduct(@RequestParam("pro_opt_id") String pro_opt_id, @RequestParam("order_no") String order_no, Model model){
		
		ResellProductInfoDTO resellProductInfoDTO = service.getMyResellProduct(pro_opt_id);
		
		model.addAttribute("product", resellProductInfoDTO);
		model.addAttribute("order_no", order_no);
		
		return "resell/register";
	}
	
	/*
	 * 정기범 작성
	 * 개인 상품 등록하는 역할
	 * db에 직접 insert 해야 하므로 Post Method를 사용
	 */
	@PostMapping("/register")
	public String regMyResellProduct(RegResellProductDTO regResellProductDTO, 
			RedirectAttributes rttr, Principal prin, @RequestParam("order_no") String order_no) {
				
		regResellProductDTO.setMember_mem_id(prin.getName()); // 현재 로그인한 회원 아이디 가져옴
		int result = service.register(regResellProductDTO, order_no);
		rttr.addFlashAttribute("result");
		
		return "redirect:/main"; // 등록후 main 화면으로 redirect 시킴
	}
	
	/*
	 * 정기범 작성
	 * register 페이지에서 내가 작성한 금액이 몇번째 순위인지 확인하는 역할
	 * ajax 를 통해 일부분만 변화시킴
	 */
	@ResponseBody
	@ResponseStatus(HttpStatus.OK)
	@GetMapping("/register/myRank")
	public String getPriceRank(PriceRankDTO priceRankDTO) {
		
		// , 및 특수문자를 가져온 상태로 데이터를 받았을경우 특수문자를 없애서 다시 저장
		String noCommaPrice = priceRankDTO.getRe_price().replaceAll("[^ㄱ-ㅎㅏ-ㅣ가-힣a-zA-Z0-9]", "");
		
		// db의 값과 비교하기 위해 문자열 숫자값을 정수형으로 변환
		int pInt = Integer.parseInt(noCommaPrice);
		
		String pro_opt_id = priceRankDTO.getPro_opt_id();
		// db를 통해 내가 작성한 금액이 몇번째 순위인지 저장
		String rank = String.valueOf(service.getPriceRank(pro_opt_id, pInt));
		return rank;
	}
}
