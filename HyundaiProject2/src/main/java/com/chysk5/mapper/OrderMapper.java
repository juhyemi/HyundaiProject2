package com.chysk5.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.chysk5.domain.CartDTO;
import com.chysk5.domain.OrderDTO;
import com.chysk5.domain.OrderListDTO;
import com.chysk5.domain.ResellPriceSearchDTO;
import com.chysk5.domain.ResellProductIdDTO;
import com.chysk5.domain.productImageDTO;

/* 
OrderMapper
@author 윤태영
@since 2023.01.04
 
<pre>
수정일          수정자                    수정내용
 ----------  ---------------    ---------------------------
2023.01.04   윤태영              최초 생성
 </pre>
*/
@Mapper
public interface OrderMapper {
	
	/* 주문양식 주문 물품 조회 */
	public List<OrderListDTO> orderFormList(String mem_id);
	
	//order_total 데이터 삽입 + select key (order_total_no)
	public void insertSelectKey(@Param("order")OrderDTO order,@Param("mem_id")String mem_id,@Param("order_resell_check")int order_resell_check);
    	
	// order_detail 데이터 삽입
	public void insertOrderDetail(@Param("order_no") String order_no, @Param("orderList")OrderListDTO orderList);
	// 주문 품목 장바구니 삭제
    public void cartOrderDelete(@Param("mem_id")String mem_id, @Param("orderList")OrderListDTO orderList);
    
    //리셀 상품 주문시 판매시간과 판매 가능 여부 업데이트
	public void updateResell(String re_id); 
    
    //resell 상품 주문서 조회
    public List<OrderListDTO> resellOrderFormList(String proOptId);
        
    // 리셀 상품 이미지 얻기
    public productImageDTO getProductImage(ResellPriceSearchDTO resellDto);
    
    // 물품 옵션 id 얻기
    public String getReproductOptId(String re_id);
    
    //리셀 상품 order_detail 데이터 삽입
    public void insertresellOrderDetail(@Param("order_no")String order_no,@Param("pro_opt_id")String pro_opt_id);
}

