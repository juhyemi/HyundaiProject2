package com.chysk5.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.lang.Nullable;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.chysk5.domain.AllBuyProductDTO;
import com.chysk5.domain.MemberDTO;
import com.chysk5.domain.MyResellProductDTO;
import com.chysk5.domain.SoldOutProductDTO;
import com.chysk5.service.MemberService;
import com.chysk5.service.MyPageService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@Secured({"ROLE_MEMBER"})
@RequestMapping("/mypage/")
@AllArgsConstructor

public class MypageController {
	
	private MyPageService service;
	
	private MemberService mService;

	// 마이페이지 메인 화면으로 이동
	@GetMapping("/index")
	public void index(Model model, Principal prin) {
		String mem_id = prin.getName();
		
		int totalOrderPrice = service.totalOrderPrice(mem_id);
		
		model.addAttribute("totalOrderPrice", totalOrderPrice);
		
	}
	
	// 주문내역 페이지로 이동
	@GetMapping("/myorder")
	public String myorder(Principal prc, Model model, @Nullable String start_date, @Nullable  String end_date) {
		
		 String mem_id=prc.getName();
		 
		 List<AllBuyProductDTO> allList = service.getAllBuyList(mem_id, start_date, end_date);
		 
		 log.info("startDate 들어왔나? " + start_date);
		 log.info("endDate 들어왔나? " + end_date);
		 
		 
		 model.addAttribute("allList", allList);
		 
		 for(AllBuyProductDTO a : allList) {
			 log.info(a);
		 }
		 /*
		 List<BuyProductDTO> buyResellList = service.getBuyProduct(mem_id);
		 model.addAttribute("buyResellList", buyResellList);
		 
		 for(BuyProductDTO a : buyResellList) {
			 log.info(a);
		 }
		*/
		 
		 return "mypage/myorder";
	}
	
	// 최근 본 상품 페이지로 이동
	@GetMapping("/recent_view_product")
	public void recentView() {}
	
	// 내가 쓴 글 페이지로 이동
	@GetMapping("/myarticle")
	public void myarticle() {
		
		
	}
	
	// 회원 정보 수정 페이지로 이동
	@GetMapping("/modify")
	public void modify(Model model, Principal prin) {
		
		String mem_id = prin.getName();
		
		MemberDTO member = mService.selectMember(mem_id);
		
		log.info("modify get ..... " + member);
		
		model.addAttribute("member", member);
	}
	
	// 내가 등록한 상품 페이지 이동
	@GetMapping("/myResell")
	public String getMyResellList(Model model, @Nullable String start_date, @Nullable  String end_date) {
		log.info("MyResell 페이지 이동");
			
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	    User user = (User)authentication.getPrincipal();    
	    String mem_id = user.getUsername();
	    
	    List<MyResellProductDTO> myResellList = service.getMyResellList(mem_id, start_date, end_date);
	    List<SoldOutProductDTO> mySoldOutList = service.getSoldOutList(mem_id, start_date, end_date);
	    
	    for(SoldOutProductDTO a : mySoldOutList) {
	    	log.info("@@@@@@@@@@" + a);
	    }
		
		model.addAttribute("myResellList", myResellList);
		model.addAttribute("mySoldOutList", mySoldOutList);
		
		return "mypage/myResellPage";
	}
	
	// 내가 등록한 상품 삭제
	@ResponseBody
	@DeleteMapping(value="/myResell/{pro_opt_id}")
	public void removeMyResellProduct(@PathVariable("pro_opt_id") String pro_opt_id, Principal prc) {
		log.info("확인: " + pro_opt_id);
		 String mem_id=prc.getName();
		int result = service.removeMyResellProduct(pro_opt_id, mem_id);
		
		return;
	}
	
	// 내가 등록한 상품 가격 수정
	@PostMapping("/myResell")
	public String modify(@RequestParam(name="re_id") String re_id, @RequestParam(name="re_price") int re_price) {
		
		log.info("가격 수정할 re_id: " + re_id);
		log.info("수정할 가격: " + re_price);
		service.modifyPrice(re_id, re_price);
		
		return "redirect:/mypage/myResell";
	}
}
