package com.chysk5.service;

import java.util.List;

import com.chysk5.domain.CartCntUpdateDTO;
import com.chysk5.domain.CartDTO;
import com.chysk5.domain.ProductOptionDTO;
/* 
cartService
@author 윤태영
@since 2023.01.02
 
<pre>
수정일          수정자                    수정내용
 ----------  ---------------    ---------------------------
2023.01.02   윤태영              최초 생성
</pre>
*/
public interface CartSerivce {
	
	public List<CartDTO>cartList(String mem_id);
	// 장바구니 추가
	public String addCart(CartDTO cart);
	// 상품 옵션 id 가져오기
	public String searchOptid(ProductOptionDTO product);
	//장바구니 물품 삭제
     //public void delete(String mem_id, String pro_optId);
     //장바구니 수량 변경
     public void updateCnt(CartCntUpdateDTO cntDTO);
     //장바구니 체크박스
     public void cartCheck(String cart_no,String cart_select);
     
     //장바구니 체크 여부 확인 후 선택 삭제
     public void deleteCheck(String mem_id);
     
     // 장바구니 전체 가격
     public String totalPrice(String mem_id);
     
     // 장바구니 전체 삭제
     public void deleteAll(String mem_id);
     
     // 장바구니에 담겨있는 상품 수량
     public int selectCartCnt(String mem_id);
}