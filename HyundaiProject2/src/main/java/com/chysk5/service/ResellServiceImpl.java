package com.chysk5.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chysk5.domain.PriceRankDTO;
import com.chysk5.domain.RegResellProductDTO;
import com.chysk5.domain.ResellPriceDTO;
import com.chysk5.domain.ResellProductDTO;
import com.chysk5.domain.ResellProductInfoDTO;
import com.chysk5.mapper.ResellMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class ResellServiceImpl implements ResellService {

	private ResellMapper mapper;
	
	@Transactional
	@Override
	public ResellProductInfoDTO getMyResellProduct(String pro_opt_id) {
		log.info("reselldata 넘김");
		ResellProductInfoDTO resellInfo = new ResellProductInfoDTO();
		
		resellInfo.setResellPrice(getPrice(pro_opt_id));
		resellInfo.setResellProductDTO(mapper.getMyResellProduct(pro_opt_id));
		resellInfo.getResellProductDTO().setPro_opt_id(pro_opt_id);
	    return resellInfo;
	}

	@Override
	public int register(RegResellProductDTO regResellProductDTO) {
		log.info("reselldata go!!!!");
		return mapper.register(regResellProductDTO);
	}

	@Override
	public List<ResellPriceDTO> getPrice(String pro_opt_id) {
		log.info("XL별 리스트 가져오기");
		List<ResellPriceDTO> getPrice = new ArrayList<>();
		getPrice = mapper.getPriceList(pro_opt_id);
		log.info(getPrice);
		return getPrice;
	}

	@Override
	public int getPriceRank(PriceRankDTO priceRankDTO) {
		log.info("몇번째 순위인지 가져오기");
		int rank = mapper.getMyRank(priceRankDTO.getPro_opt_id(), priceRankDTO.getRe_price());
		return rank + 1;
	}

	@Override
	public List<ResellProductDTO> getResellProductList() {
		
		log.info("resellProdList Service 실행");
		
		List<ResellProductDTO> list = mapper.getResellProductList();
		
		
		return list;
	}
	
	
	
}
