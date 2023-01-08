package com.chysk5.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.lang.Nullable;
import org.springframework.stereotype.Service;

import com.chysk5.domain.AllBuyProductDTO;
import com.chysk5.domain.BuyProductDTO;
import com.chysk5.domain.MyResellProductDTO;
import com.chysk5.domain.ResellPriceDTO;
import com.chysk5.domain.SoldOutProductDTO;
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

	@Override
	public int removeMyResellProduct(String pro_opt_id, String mem_id) {

		int result = mapper.removeMyResellProduct(pro_opt_id, mem_id);
		if (result == 1) {
			log.info("remove success !!");
			return result;
		} else
			return 0;
	}

	@Override
	public List<MyResellProductDTO> getMyResellList(String mem_id, @Nullable String start_date, @Nullable String end_date) {

		List<MyResellProductDTO> resultList = mapper.getMyResellList(mem_id, start_date, end_date);

		for (int i = 0; i < resultList.size(); i++) {
			int index = 1;
			for (ResellPriceDTO a : resultList.get(i).getPriceRank()) {
				log.info("가격 :" + a.getRe_price());
				if (resultList.get(i).getMy_price() == a.getRe_price()) {
					log.info("내 가격: " + resultList.get(i).getMy_price());
					log.info("순위 :" + index);
					resultList.get(i).setMy_rank(index);
				}

				
				index++;
			}

			log.info("==============================");
		}
		
		for (MyResellProductDTO a : resultList) {
			String date = a.getRe_regdate().substring(0,10);
			a.setRe_regdate(date);
		}

		/*
		 * for(MyResellProductDTO a : resultList) { int myRank =
		 * a.getPriceRank().indexOf(a.getMy_price()); log.info("순위 확인 : " + myRank);
		 * a.setMy_rank(myRank); }
		 */

		return resultList;
	}

	@Override
	public int modifyPrice(String re_id, int re_price) {

		log.info("가격 수정 Service 들어옴");
		int result = mapper.modifyPrice(re_id, re_price);
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

	// 내가 판매 완료한 상품들 목록
	@Override
	public List<SoldOutProductDTO> getSoldOutList(String mem_id, @Nullable String start_date, @Nullable String end_date) {

		List<SoldOutProductDTO> allList = mapper.getMySoldOutList(mem_id, start_date, end_date);

		for (SoldOutProductDTO a : allList) {
			String date = a.getRe_selldate().substring(0,10);
			a.setRe_selldate(date);
		}
		
		return allList;
	}

	// 내가 구매한 모든 상품 목록 보여주기
	@Override
	public List<AllBuyProductDTO> getAllBuyList(String mem_id, @Nullable String start_date, @Nullable String end_date) {

		List<AllBuyProductDTO> allList = mapper.getAllList(mem_id, start_date, end_date);
		for (AllBuyProductDTO a : allList) {
			String date = a.getOrder_date().substring(0,10);
			a.setOrder_date(date);
		}
		
		return allList;
	}
}
