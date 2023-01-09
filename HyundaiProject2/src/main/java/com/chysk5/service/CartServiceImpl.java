package com.chysk5.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chysk5.domain.CartCntUpdateDTO;
import com.chysk5.domain.CartDTO;
import com.chysk5.domain.ProductOptionDTO;
import com.chysk5.mapper.CartMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Service
@Log4j
@AllArgsConstructor

public class CartServiceImpl implements CartSerivce {
    
	private CartMapper mapper;
	
	// 장바구니 목록 조회
	@Override
	public List<CartDTO>cartList(String mem_id){
		
		log.info("cartlist..!");		
    return mapper.cartList(mem_id);	
		
	};
	
	// 카트 option_id 조회
	@Override
    public String searchOptid(ProductOptionDTO product) {
		
		log.info("서비스 cart optid 조회");
		return mapper.searchOptid(product);
	}  
	
	@Override
	// 카트 물건 추가
	public void addCart(CartDTO cart) {
	    	
		log.info("서비스 cart insert...!");
		
		mapper.addCart(cart);
	};
	
	@Override
	public int checkCart(CartDTO cart) {
		log.info("서비스 checkCart.!");
		return mapper.checkCart(cart);
	}
	// 수량 변경
	@Override
	 public void updateCnt(CartCntUpdateDTO cntDTO) {
		log.info("수량 변경...!");		
		 mapper.updateCnt(cntDTO);
	}
	
	// 장바구니 물품 존재시 count 증가
	  @Override public void increaseCount(CartDTO cart) {
	  log.info("서비스 increaseCount.!"); mapper.increaseCount(cart); 
	  }
	
	
	@Override
	public void delete(String mem_id, String pro_optId) {
		log.info("서비스 delete...!");
		mapper.delete(mem_id, pro_optId);
	}
	
	@Override
   public void cartCheck(String cart_no,String cart_select) {
		log.info("카트 체크..!");
		mapper.Cartcheck(cart_no,cart_select);
	}
	
	@Override
	  public void deleteCheck(String mem_id) {
	   	
	    log.info("체크 상품 삭제");
	    mapper.deleteCheck(mem_id);
	}
	
	
	@Override
	public String totalPrice(String mem_id) {
		
		log.info("전체가격 계산");
		return mapper.totalPrice(mem_id);
		
	}
	
	
}
