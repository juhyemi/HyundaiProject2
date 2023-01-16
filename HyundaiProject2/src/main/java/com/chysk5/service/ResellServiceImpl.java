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
//   @Transactional
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
   @Override
   public int getPriceRank(String pro_opt_id, int pInt) {
      int existData = mapper.existData(pro_opt_id, pInt);  // 컨트롤러에서 정수형으로 변경한 금액을 매개변수로 하여 
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
   
   
   
    /*
	 * 작성자 : 함세강
	 * 기능 : Resell 상품 목록 리스트 dto 가져오는 역할
	 * 입력 : X
	 * 출력 : List<ResellProductListDTO>
	 */
	@Override
	public List<ResellProductListDTO> getResellProductList() {
		
		log.info("resellProdList Service 실행");
		//Resell 상품 목록을 불러오는 getResellProductList()를 호출
		List<ResellProductListDTO> list = mapper.getResellProductList();
		
		return list;
	}

	
	/*
	 * 작성자 : 함세강
	 * 기능 : Resell 상품 상세 dto 가져오는 역할
	 * 입력 : 상품 아이디
	 * 출력 : ResellProductDetailInfoDTO (상품 이름, 이미지, 사이즈)
	 */
	@Override
	public ResellProductDetailInfoDTO getResellProductListDetail(String proId) {
		//상품번호를 토대로 Resell상품의 상세 정보를 얻어오는 getResellProductDetail()을 호출
		ResellProductDetailInfoDTO dto = mapper.getResellProductDetail(proId);
		
		return dto;
	}
	
	
	
	
	/*
	 * 작성자 : 함세강
	 * 기능 : Resell 상품 상세 dto 가져오는 역할
	 * 입력 : 상품 아이디
	 * 출력 : ResellProductDetailInfoDTO (상품 이름, 이미지, 사이즈)
	 */
	@Transactional
	@Override
	public ResellProductDetailPriceDTO getResellProductPriceDetail(ResellPriceSearchDTO resellDto) {
		//사이즈와 상품명을 가지고 상품옵션 아이디를 조회하는 부분
		ResellProductSearchIdDTO idDto = mapper.getResellProductSearchOptId(resellDto);
		String proOptId = idDto.getPro_opt_id();
		
		//등록된 Resell상품의 최저가격을 가져오는 부분
		ResellProductDetailPriceDTO detailPriceDto = mapper.getResellProductDetailLowPrice(proOptId);
		
		//Resell 상품의 최근 2주동안 거래된 판매 평균가격을 불러오는 getResellProductDetailDatePrice() 메서드 호출
		List<ResellProductDetailPriceDateDTO> list = mapper.getResellProductDetailDatePrice(proOptId);
		
		//반복문을 돌면서 판매일을 원하는 형식으로 가공하는 부분
		for (ResellProductDetailPriceDateDTO dto : list) {
			String date = dto.getRe_selldate().substring(0,10);
			dto.setRe_selldate(date);
		}
		
		detailPriceDto.setDatePriceList(list);
			
		return detailPriceDto;
	}


	
	
	
}

