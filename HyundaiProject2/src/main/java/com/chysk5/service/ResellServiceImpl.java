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
import com.chysk5.domain.UpdateProductDTO;
import com.chysk5.mapper.MyPageMapper;
import com.chysk5.mapper.ResellMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class ResellServiceImpl implements ResellService {

   private final ResellMapper mapper;
   private final MyPageMapper mpMapper;
   
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

//   @Transactional
   @Override
   public int register(RegResellProductDTO regResellProductDTO, String order_no                                                                                                                                        ) {
      log.info("reselldata go!!!!");
      int result1 = mapper.register(regResellProductDTO); //상품 등록
 //     int result2 = updateRegStatus(regResellProductDTO.getProduct_option_pro_opt_id(), order_no);      
      String pro_opt_id = regResellProductDTO.getProduct_option_pro_opt_id();
      log.info(pro_opt_id);
      log.info(order_no);
      
      
      log.info("******************"+order_no+"**************");
      
      int result2 = mapper.updateRegStatus(pro_opt_id, order_no);
//      int result3 = mpMapper.cancelOrder(pro_opt_id, order_no);
      
      log.info(result2);
      
      if(result1 == 1 && result2 == 1) {
    	  log.info("정상 업데이트 완료");
    	  return 1;
      } else {
    	  log.info("업데이트중 오류 발생");
    	  return 0;
      }
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
   
   /*
	@Override
	public int updateRegStatus(String pro_opt_id, String order_no) {

		log.info("등록못하도록 상태 업데이트!!!");
		log.info("주문 번호 : " + order_no);
		log.info("상품 번호 : " + pro_opt_id);		
		UpdateProductDTO dto = new UpdateProductDTO();
		
		dto.setOrder_no(order_no);
		dto.setPro_opt_id(pro_opt_id);
		log.info(dto);
		int a = mapper.updateRegStatus(dto);
		log.info(a);
		
		return 0;

	}
	*/
   
   
   


	@Transactional
	@Override
	public List<ResellProductListDTO> getResellProductList() {
		
		log.info("resellProdList Service 실행");
		
		List<ResellProductListDTO> list = mapper.getResellProductList();
		
		log.info(list);
		
		/*
		for (ResellProductListDTO dto : list) {
			String proId = dto.getPro_id();
			List<ResellProductImgDTO> listImgs = mapper.getResellProductListImg(proId);
			dto.setResellProductlist(listImgs);
		}
		*/
		
		
		
		return list;
	}

	@Override
	public ResellProductDetailInfoDTO getResellProductListDetail(String proId) {
		
		ResellProductDetailInfoDTO dto = mapper.getResellProductDetail(proId);
		
		/*리팩토링 전 코드
		List<ResellProductImgDTO> list1 = mapper.getResellProductDetailImgs(proId);
		dto.setListImg(list1);
		
		List<ResellProductSizeDTO> list2 = mapper.getResellProductDetailSizes(proId);
		dto.setListSize(list2);
		*/
		
		log.info(dto);
		
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

