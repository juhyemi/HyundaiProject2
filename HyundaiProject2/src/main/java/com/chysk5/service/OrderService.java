package com.chysk5.service;

import java.util.List;

import com.chysk5.domain.OrderDTO;
import com.chysk5.domain.OrderListDTO;
import com.chysk5.domain.ResellPriceSearchDTO;
/* 
OrderService
@author 윤태영
@since 2023.01.04 
<pre>
수정일          수정자                    수정내용
 ----------  ---------------    ---------------------------
2023.01.04   윤태영              최초 생성
 </pre>
*/
public interface OrderService {
	/* 주문양식 주문 물품 조회 */
	public List<OrderListDTO> orderFormList(String mem_id);

	/* 주문 결제 */
	public List<OrderListDTO> orderComplete(OrderDTO order, String mem_id, int order_resell_check, String re_id);

	/* 주문된 물품 카트 삭제 */
	public void orderDelete(String mem_id, OrderListDTO orderList);

	/* 리셀 주문 상품 목록 조회 */
	public List<OrderListDTO> resellOrderFormList(ResellPriceSearchDTO dto);

}
