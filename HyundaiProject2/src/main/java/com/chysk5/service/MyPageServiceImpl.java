package com.chysk5.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;

import com.chysk5.domain.MyResellProductDTO;
import com.chysk5.mapper.MyPageMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class MyPageServiceImpl implements MyPageService {

	private MyPageMapper mapper;
	
	@Override
	public List<MyResellProductDTO> getMyResellList(String mem_id) {
		log.info("MyPage Service 들어옴 !!");
		List<MyResellProductDTO> myResellList = new ArrayList<>();
		SimpleDateFormat newDtFormat = new SimpleDateFormat("yyyy-MM-dd");
		myResellList = mapper.getMyResellList(mem_id);
		
		for(MyResellProductDTO a : myResellList) {
			try {
				SimpleDateFormat dtFormat = new SimpleDateFormat("yyyyMMdd");
				Date formatDate = dtFormat.parse(a.getRe_regdate());
				String strNewDtFormat = newDtFormat.format(formatDate);
				a.setRe_regdate(strNewDtFormat);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return myResellList;
	}

	@Override
	public int removeMyResellProduct(String re_id) {
		
		int result = mapper.removeMyResellProduct(re_id);
		if(result == 1) {
			log.info("remove success !!");
			return result;
		} else return 0;
	}

	// 총 구매 금액
	@Override
	public int totalOrderPrice(String mem_id) {
		
		log.info("total order price.... " + mem_id);
		
		return mapper.totalOrderPrice(mem_id);
	}

}
