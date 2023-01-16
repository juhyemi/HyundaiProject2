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
   
   /*
    * 정기범 작성
    * 내가 등록하려는 상품에 대한 정보 + 해당 상품을 리셀로 등록한 가격정보 를 가져옴
    */
   @Transactional
   @Override
   public ResellProductInfoDTO getMyResellProduct(String pro_opt_id) {
      ResellProductInfoDTO resellInfo = new ResellProductInfoDTO();
      
      resellInfo.setResellPrice(getPrice(pro_opt_id)); // 리셀에 등록된 상품중 내가 올리려는 상품이 등록된 가격 리스트를 저장
      resellInfo.setResellProductDTO(mapper.getMyResellProduct(pro_opt_id)); // 내가 올리려는 상품에 대한 정보를 저장
      resellInfo.getResellProductDTO().setPro_opt_id(pro_opt_id); // 변수로 들어온 pro_opt_id 를 도메인의 setter 를 이용하여 저장
      
       return resellInfo; // 위에서 저장한 정보를 뿌리기 위하여 Controller에게 데이터 전달
   }

   /*
    * 정기범 작성
    * 상품을 직접 등록하는 부분
    * 상품을 등록한 후, 등록되었다는 상태를 다른테이블에서 알아야함으로, update 구문이 추가적으로 필요하다
    * 그래서 등록한 후 update 쿼리를 실행하는 mapper 메서드를 호출함으로써 Transaction 처리를 진행함
    */
   @Transactional
   @Override
   public int register(RegResellProductDTO regResellProductDTO, String order_no) {
      int result1 = mapper.register(regResellProductDTO); //r_product 테이블에 insert 함으로써 새로운 데이터 삽입
      String pro_opt_id = regResellProductDTO.getProduct_option_pro_opt_id();

      
      int result2 = mapper.updateRegStatus(pro_opt_id, order_no);
            
      if(result1 == 1 && result2 == 1) { // 정상적인 작업이라면 insert 도 하나의 행이 삽입, 
    	  								 // update 도 하나의 행이 수정되어야 함.
    	  return 1;
      } else {
    	  log.info("업데이트중 오류 발생");
    	  return 0;
      }
   }

   /*
    * 정기범 작성
    * 상품 id 별로 리셀 테이블에 저장된 가격 정보를 조회하는 역할
    * getMyResellProduct 메서드에서 사용됨
    */
   @Override
   public List<ResellPriceDTO> getPrice(String pro_opt_id) {
      List<ResellPriceDTO> getPrice = new ArrayList<>(); // 가격 리스트를 저장하기 위해 arraylist 선언
      getPrice = mapper.getPriceList(pro_opt_id); // mapper에 접근하여 해당 상품 id값을 가진 행들의 가격 리스트를 저장
      return getPrice;
   }

   /*
    * 정기범 작성
    * 내가 작성한 순위가 몇번째인지 가져오는 역할
    */
   @Transactional
   @Override
   public int getPriceRank(String pro_opt_id, int pInt) {
      int existData = mapper.existData(pro_opt_id, pInt);  // 컨트롤러에서 정수형으로 변경한 금액을 매개변수로 하여
      													   // r_product 테이블에서 내가 입력한 금액이 몇번째 순위인지 가져옴
      int rank = 0;
      
      if(existData != 0) {
         rank = mapper.getMyRank(pro_opt_id, pInt);
      }
      
      return rank + 1; // 자신의 순위보다 하나 앞 순위를 리턴 함으로 +1 을 해준다.
   }
     
   
   


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

