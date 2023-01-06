package com.chysk5.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;

import com.chysk5.domain.BuyProductDTO;
import com.chysk5.domain.MyResellProductDTO;
import com.chysk5.domain.ResellPriceDTO;
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
	public List<MyResellProductDTO> getMyResellList(String mem_id) {

		return mapper.getMyResellList(mem_id);
	}


	@Override
	public int modifyPrice(String re_id, int re_price) {
	
		log.info("가격 수정 Service 들어옴");
		int result = mapper.modifyPrice(re_id, re_price);
		if(result == 1)	log.info("수정 완료");
		else log.info("수정 실패");
		
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

}
