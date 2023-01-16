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
import com.chysk5.domain.CancelProductDTO;
import com.chysk5.domain.MemberDTO;
import com.chysk5.domain.MyResellProductDTO;
import com.chysk5.domain.ReplyDTO;
import com.chysk5.domain.SoldOutProductDTO;
import com.chysk5.domain.TalksDTO;
import com.chysk5.service.MemberService;
import com.chysk5.service.MyPageService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/*********************************
 * @function : MyPageController
 * @author : Sujin Shin, Kibeom Chung
 * @Date : Dec 30. 2022.
 * 마이페이지에서 회원의 활동 내역을 조회할 수 있는 요청을 처리하기 위한 컨트롤러
*********************************/
@Controller
@Log4j
@Secured({"ROLE_MEMBER"})
@RequestMapping("/mypage/")
@AllArgsConstructor
public class MypageController {
	
	private MyPageService service;
	
	private MemberService mService;
	
	/*
	 * 작성자 : 신수진, 정기범
	 * 기능 : 마이페이지 메인 화면
	 * 입력 : 로그인한 회원의 아이디
	 * 출력 : MyPageService의 totalOrderPrice(총 구매 가격)과 totalOrderCount(총 구매 횟수) 메서드를 호출,
	 * 		  각 결과값을 모델 애트리뷰트에 저장한다.
	 * 		  또한 getAllBuyList(전체 주문 내역)의 메서드를 호출한 결과값인 리스트를 저장한다.
	 * */ 
	@GetMapping("/index")
	public void index(Model model, Principal prin) {
		String mem_id = prin.getName();
		
		int totalOrderPrice = service.totalOrderPrice(mem_id);
		int totalOrderCount = service.totalOrderCount(mem_id);
		
		List<AllBuyProductDTO> allList = service.getAllBuyList(mem_id, null, null);
		
		for(AllBuyProductDTO a : allList) {
			log.info(a);
		}
		
		model.addAttribute("totalOrderPrice", totalOrderPrice);
		model.addAttribute("totalOrderCount", totalOrderCount);	
		model.addAttribute("allList", allList);
		
	}
	
	//기범
	// 주문내역 페이지로 이동
	@GetMapping("/myorder")
	public String myorder(Principal prc, Model model, @Nullable String start_date, @Nullable  String end_date) {
		
		 String mem_id=prc.getName();
		 
		 List<AllBuyProductDTO> allList = service.getAllBuyList(mem_id, start_date, end_date);
		 List<CancelProductDTO> cancelList = service.getCancelList(mem_id, start_date, end_date);
		 
		 log.info("startDate 들어왔나? " + start_date);
		 log.info("endDate 들어왔나? " + end_date);
		 
		 
		 model.addAttribute("allList", allList);
		 model.addAttribute("cancelList", cancelList);
		 
		 for(AllBuyProductDTO a : allList) {
			 log.info(a);
		 }
		 
		 for(CancelProductDTO a : cancelList) {
			 log.info("취소 목록: " + a);
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
	
	/*
	 * 작성자 : 신수진
	 * 기능 : 내가 쓴 글 페이지
	 * 입력 : 로그인한 회원의 아이디
	 * 출력 : MyPageService의 getMyTalks 메서드와, getMyReply 메서드를 호출해
	 * 		  각 호출된 결과값을 모델 애트리뷰트에 저장한다.
	 * */ 
	@GetMapping("/myarticle")
	public void myarticle(Principal prin, Model model) {
		log.info("mytalks controller.....");
		
		String mem_id = prin.getName();
		
		List<TalksDTO> talksList = service.getMyTalks(mem_id);
		log.info("mytalks list : " + talksList);
		
		List<ReplyDTO> replyList = service.getMyReply(mem_id);
		log.info("myrelpy list: " + replyList);
		
		model.addAttribute("tList", talksList);
		model.addAttribute("rList", replyList);
	}
	
	/*
	 * 작성자 : 신수진
	 * 기능 : 회원 정보 수정 페이지로 이동
	 * 입력 : 로그인한 회원의 아이디
	 * 출력 : MemberService의 selectMember 메서드를 호출해 나온
	 * 		 회원 정보를 담은 객체 결과값을 모델 애트리뷰트에 저장한다.
	 * */ 
	@GetMapping("/modify")
	public void modify(Model model, Principal prin) {
		
		String mem_id = prin.getName();
		
		MemberDTO member = mService.selectMember(mem_id);
		
		log.info("modify get ..... " + member);
		
		model.addAttribute("member", member);
	}
	
	//기범
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
	
	// 기범
	// 내가 등록한 상품 삭제
	@ResponseBody
	@DeleteMapping(value="/myResell/{pro_opt_id}")
	public void removeMyResellProduct(@PathVariable("pro_opt_id") String pro_opt_id, Principal prc) {
		log.info("확인: " + pro_opt_id);
		 String mem_id=prc.getName();
		int result = service.removeMyResellProduct(pro_opt_id, mem_id);
		
		return;
	}
	
	// 기범
	// 내가 등록한 상품 가격 수정
	@PostMapping("/myResell")
	public String modify(@RequestParam(name="re_id") String re_id, @RequestParam(name="re_price") int re_price) {
		
		log.info("가격 수정할 re_id: " + re_id);
		log.info("수정할 가격: " + re_price);
		service.modifyPrice(re_id, re_price);
		
		return "redirect:/mypage/myResell";
	}
	
	//기범
	//내가 구매한 상품 구매 취소
	@PostMapping("myorder/cancel")
	public String cancel(@RequestParam("order_no") String order_no, @RequestParam("pro_opt_id") String pro_opt_id) {
		
		log.info("주문취소 상품 id: " + pro_opt_id);
		log.info("주문 취소 주문 id: " + order_no);
		service.cancelOrder(pro_opt_id, order_no);
		
		return "redirect:/mypage/myorder";
	}
}
