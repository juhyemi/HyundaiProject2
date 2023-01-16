package com.chysk5.service;

import java.util.List;

import org.springframework.lang.Nullable;
import org.springframework.stereotype.Service;

import com.chysk5.domain.AllBuyProductDTO;
import com.chysk5.domain.BuyProductDTO;
import com.chysk5.domain.CancelProductDTO;
import com.chysk5.domain.MyResellProductDTO;
import com.chysk5.domain.ReplyDTO;
import com.chysk5.domain.ResellPriceDTO;
import com.chysk5.domain.SoldOutProductDTO;
import com.chysk5.domain.TalksDTO;
import com.chysk5.mapper.MyPageMapper;
import com.chysk5.mapper.ResellMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class MyPageServiceImpl implements MyPageService {

	private MyPageMapper mapper;
	private ResellMapper rmapper;
	private ResellService rservice;

	/*
	 * @Override public List<MyResellProductDTO> getMyResellList(String mem_id) {
	 * log.info("MyPage Service 들어옴 !!"); List<MyResellProductDTO> myResellList =
	 * new ArrayList<>(); SimpleDateFormat newDtFormat = new
	 * SimpleDateFormat("yyyy-MM-dd"); myResellList =
	 * mapper.getMyResellList(mem_id);
	 * 
	 * for(MyResellProductDTO a : myResellList) { try { SimpleDateFormat dtFormat =
	 * new SimpleDateFormat("yyyyMMdd"); Date formatDate =
	 * dtFormat.parse(a.getRe_regdate()); String strNewDtFormat =
	 * newDtFormat.format(formatDate); a.setRe_regdate(strNewDtFormat); } catch
	 * (ParseException e) { // TODO Auto-generated catch block e.printStackTrace();
	 * }
	 * 
	 * } return myResellList; }
	 */

	/*
	 * @Override public List<MyResellProductDTO> getMyResellList(String mem_id) {
	 * log.info("MyPage Service 들어옴 !!"); List<MyResellProductDTO> myResellList =
	 * new ArrayList<>(); SimpleDateFormat newDtFormat = new
	 * SimpleDateFormat("yyyy-MM-dd"); myResellList =
	 * mapper.getMyResellList(mem_id);
	 * 
	 * List<ResellPriceDTO> priceRank =
	 * 
	 * for(MyResellProductDTO a : myResellList) { try { SimpleDateFormat dtFormat =
	 * new SimpleDateFormat("yyyyMMdd"); Date formatDate =
	 * dtFormat.parse(a.getRe_regdate()); String strNewDtFormat =
	 * newDtFormat.format(formatDate); a.setRe_regdate(strNewDtFormat); } catch
	 * (ParseException e) { // TODO Auto-generated catch block e.printStackTrace();
	 * } }
	 * 
	 * int idx = 0; for(MyResellProductDTO a : myResellList) { String re_id =
	 * a.getRe_id(); List<ResellPriceDTO> priceRank = rmapper.getPriceList(re_id);
	 * log.info("상품별 리셀 사이즈: " + priceRank.get(idx).getRe_price());
	 * log.info("상품별 리셀 가격: " + priceRank.get(idx).getPro_opt_size()); idx++; }
	 * 
	 * 
	 * return myResellList; }
	 * 
	 */

	/*
	 * 정기범 작성
	 * MyPageController의 removeMyResellProduct() 에서 호출
	 * 리셀 상품 등록했던 상품을 등록취소 하는 역할
	 */
	@Override
	public int removeMyResellProduct(String pro_opt_id, String mem_id) {

		int result = mapper.removeMyResellProduct(pro_opt_id, mem_id); // 등록한 상품을 취소하는 mapper의 메서드 호출
		if (result == 1) {
			log.info("remove success !!");
			return result;
		} else
			return 0;
	}

	/*
	 * 정기범 작성
	 * 내가 판매 등록한 상품들 조회
	 * start_date, end_date 는 날짜 검색시에만 사용해야 하므로 @Nullable 어노테이션을 줌
	 */
	@Override
	public List<MyResellProductDTO> getMyResellList(String mem_id, @Nullable String start_date, @Nullable String end_date) {

		List<MyResellProductDTO> resultList = mapper.getMyResellList(mem_id, start_date, end_date);

		// 내가 등록한 가격이 몇번째 순위인지를 저장하기 위한 과정
		for (int i = 0; i < resultList.size(); i++) {  // 내가 판매등록한 상품 리스트에 차례대로 접근
			int index = 1;												// arraylist 인덱스에 접근하여 차례대로 순위 확인을 위해 맨처음에 1로 초기화
			for (ResellPriceDTO a : resultList.get(i).getPriceRank()) { // 내가 판매 등록한 상품 리스트에 차례대로 접근하여
																		// 리셀 상품으로 해당 상품된 가격의 리스트에 차례대로 접근
				if (resultList.get(i).getMy_price() == a.getRe_price()) {  // 등록된 가격 리스트에 하나씩 접근하면서
																		   // 내가 등록한 가격과 동일한 값을 가진 데이터의 인덱스를 찾음
																		   // 해당 인덱스가 내가 등록한 가격의 순위라는 것
					log.info("내 가격: " + resultList.get(i).getMy_price());
					log.info("순위 :" + index);
					resultList.get(i).setMy_rank(index);  				   // index값은 맨처음에 1로 초기화 했으므로, 첫번째 반복문에서 내가 등록한
				}														   // 가격과 동일한 값을 찾으면, 내가 올린 순위는 1위라는 의미
				index++;												   // 한번 반복문을 돌면서 동일한 가격을 찾지 못했으면 그 뒤에 있는 인덱스를
																		   // 접근하여 가격을 확인해야 하므로 변수 index 값을 +1 한다.
			}
		}
		for (MyResellProductDTO a : resultList) {
			String date = a.getRe_regdate().substring(0,10);
			a.setRe_regdate(date);
		}
		return resultList;
	}

	/*
	 * 정기범 작성
	 * 내가 등록한 상품 가격 수정
	 */
	@Override
	public int modifyPrice(String re_id, int re_price) {

		int result = mapper.modifyPrice(re_id, re_price); // 가격 수정하는 mapper의 메서드 호출
		if (result == 1)
			log.info("수정 완료");
		else
			log.info("수정 실패");

		return result;
	}

	@Override
	public List<BuyProductDTO> getBuyProduct(String mem_id) {

		return mapper.getBuyProduct(mem_id);

	}

	// 총 구매 금액
	@Override
	public int totalOrderPrice(String mem_id) {

		log.info("total order price.... " + mem_id);

		return mapper.totalOrderPrice(mem_id);
	}
	
	// 총 구매 횟수
	@Override
	public int totalOrderCount(String mem_id) {

		log.info("total order count...." + mem_id);
		
		return mapper.totalOrderCount(mem_id);
	}
	
	/*
	 * 정기범 작성
	 * 내가 판매 완료한 상품들 목록 조회
	 * start_date, end_date 는 날짜 검색시에만 사용해야 하므로 @Nullable 어노테이션을 줌
	 */
	@Override
	public List<SoldOutProductDTO> getSoldOutList(String mem_id, @Nullable String start_date, @Nullable String end_date) {

		List<SoldOutProductDTO> allList = mapper.getMySoldOutList(mem_id, start_date, end_date); // 내가 판매완료한 상품들 데이터 저장하는 mapper 메소드 호출

		for (SoldOutProductDTO a : allList) {
			String date = a.getRe_selldate().substring(0,10);
			a.setRe_selldate(date);
		}
		
		return allList;
	}

	/*
	 * 정기범 작성
	 * MyPageController의 myorder() 에 의해 호출
	 * 내가 구매한 모든 상품 목록 출력
	 * start_date, end_date 는 날짜 검색시에만 사용해야 하므로 @Nullable 어노테이션을 줌
	 */
	@Override
	public List<AllBuyProductDTO> getAllBuyList(String mem_id, @Nullable String start_date, @Nullable String end_date) {

		List<AllBuyProductDTO> allList = mapper.getAllList(mem_id, start_date, end_date); // mapper 접근하여 모든 구매 목록 데이터 저장
		for (AllBuyProductDTO a : allList) {
			String date = a.getOrder_date().substring(0,10);
			a.setOrder_date(date); 
		}
		
		return allList;
	}

	/*
	 * 정기범 작성
	 * MyPageController의 cancel() 에서 호출
	 * 주문 했던 상품을 주문 취소하기
	 */
	@Override
	public int cancelOrder(String pro_opt_id, String order_no) {

		return mapper.cancelOrder(pro_opt_id, order_no);

	}

	/*
	 * 정기범 작성
	 * 주문 취소 목록 보여주기
	 * start_date, end_date 는 날짜 검색시에만 사용해야 하므로 @Nullable 어노테이션을 줌
	 */
	@Override
	public List<CancelProductDTO> getCancelList(String mem_id, @Nullable String start_date,  @Nullable String end_date) {
		
		List<CancelProductDTO> cancelList = mapper.getCancelList(mem_id, start_date, end_date); // mapper 접근하여 주문 취소한 상품 데이터 저장
		
		for (CancelProductDTO a : cancelList) {
			String date = a.getOrder_date().substring(0,10);
			a.setOrder_date(date);
		}
		
		return cancelList;
	}
	
	// 내가 쓴 글
	@Override
	public List<TalksDTO> getMyTalks(String mem_id) {
		
		log.info("getMyTalks service...." + mem_id);
		
		return mapper.selectMyTalks(mem_id);
	}

	// 내가 쓴 댓글
	@Override
	public List<ReplyDTO> getMyReply(String mem_id) {
		
		log.info("getMyReply service....." + mem_id);
		
		return mapper.selectMyReply(mem_id);
	}

}
