package com.chysk5.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chysk5.domain.RegResellProductDTO;
import com.chysk5.domain.ResellPriceDTO;
import com.chysk5.domain.ResellPriceSearchDTO;
import com.chysk5.domain.ResellProductDetailInfoDTO;
import com.chysk5.domain.ResellProductDetailPriceDTO;
import com.chysk5.domain.ResellProductDetailPriceDateDTO;
import com.chysk5.domain.ResellProductImgDTO;
import com.chysk5.domain.ResellProductInfoDTO;
import com.chysk5.domain.ResellProductListDTO;
import com.chysk5.domain.ResellProductSearchIdDTO;
import com.chysk5.domain.ResellProductSizeDTO;
import com.chysk5.mapper.ResellMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class ResellServiceImpl implements ResellService {

   private final ResellMapper mapper;
   
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
   public int getPriceRank(String pro_opt_id, int pInt) {
      log.info("몇번째 순위인지 가져오기");
      int existData = mapper.existData(pro_opt_id, pInt);
      int rank = 0;
      
      if(existData != 0) {
         rank = mapper.getMyRank(pro_opt_id, pInt);
      }
      
      return rank + 1;
   }
   
   
   


	@Transactional
	@Override
	public List<ResellProductListDTO> getResellProductList() {
		
		log.info("resellProdList Service 실행");
		
		List<ResellProductListDTO> list = mapper.getResellProductList();
		
		log.info(list);
		
		for (ResellProductListDTO dto : list) {
			String proId = dto.getPro_id();
			
			List<ResellProductImgDTO> listImgs = mapper.getResellProductListImg(proId);
			
			
			dto.setList(listImgs);
			
		}
		
		log.info(list);
		
		
		return list;
	}

	@Override
	public ResellProductDetailInfoDTO getResellProductListDetail(String proId) {
		
		ResellProductDetailInfoDTO dto = mapper.getResellProductDetail(proId);
		
		List<ResellProductImgDTO> list1 = mapper.getResellProductDetailImgs(proId);
		dto.setListImg(list1);
		
		List<ResellProductSizeDTO> list2 = mapper.getResellProductDetailSizes(proId);
		dto.setListSize(list2);
		
		return dto;
	}
	
	
	
	@Override
	public ResellProductDetailPriceDTO getResellProductPriceDetail(ResellPriceSearchDTO resellDto) {
		/*사이즈와 상품명을 가지고 상품 아이디를 조회하는 부분*/
		ResellProductSearchIdDTO idDto = mapper.getResellProductSearchOptId(resellDto);
		String proOptId = idDto.getPro_opt_id();
		
		log.info("###########################proOptId : " + proOptId);
		
		ResellProductDetailPriceDTO detailPriceDto = mapper.getResellProductDetailLowPrice(proOptId);
		
		List<ResellProductDetailPriceDateDTO> list = mapper.getResellProductDetailDatePrice(proOptId);
		
		log.info("################### avg_list: " + list);
		
		for (ResellProductDetailPriceDateDTO dto : list) {
			String date = dto.getRe_selldate().substring(0,10);
			dto.setRe_selldate(date);
		}
		detailPriceDto.setDatePriceList(list);
		log.info("@@@@@@@@@ getResellProductPriceDetail 호출 성공");
			
		return detailPriceDto;
	}
	
	
	
}

