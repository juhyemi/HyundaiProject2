package com.chysk5.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.chysk5.domain.PriceRankDTO;
import com.chysk5.domain.RegResellProductDTO;
import com.chysk5.domain.ResellPriceDTO;
import com.chysk5.domain.ResellPriceSearchDTO;
import com.chysk5.domain.ResellProductDTO;
import com.chysk5.domain.ResellProductDetailInfoDTO;
import com.chysk5.domain.ResellProductDetailPriceDTO;
import com.chysk5.domain.ResellProductDetailPriceDateDTO;
import com.chysk5.domain.ResellProductImgDTO;
import com.chysk5.domain.ResellProductListDTO;
import com.chysk5.domain.ResellProductSearchIdDTO;
import com.chysk5.domain.ResellProductSizeDTO;
import com.chysk5.domain.UpdateProductDTO;

public interface ResellMapper {

   // 등록할 리셀 상품 정보 출력
   public ResellProductDTO getMyResellProduct(String pro_opt_id);
   
   // 이미 등록된 리셀 상품 가격 조회
   public List<ResellPriceDTO> getPriceList(String pro_opt_id);
   
   // 리셀 상품 등록
   public int register(RegResellProductDTO regResellProductDTO);
   
   // 상품 등록시 리셀 상품 등록했다고 알려주는 컬럼 값 수정
   public int updateRegStatus(@Param("pro_opt_id") String pro_opt_id, @Param("order_no") String order_no);
   
// 내가 입력한 금액보다 낮은 금액의 갯수 파악
   public int existData(@Param("pro_opt_id") String pro_opt_id, @Param("re_price") int re_price);
   
   // 내가 등록하려는 금액의 순위 확인
   public Integer getMyRank(@Param("pro_opt_id") String pro_opt_id, @Param("re_price") int re_price);
   
	/* Resell 상품 리스트 불러오기 */
   public List<ResellProductListDTO> getResellProductList();
   public List<ResellProductImgDTO> getResellProductListImg(String proId);
   
	/* Resell 상품 상세 불러오기 */
   public ResellProductDetailInfoDTO getResellProductDetail(String proId);
   public List<ResellProductImgDTO> getResellProductDetailImgs(String proId);
   public List<ResellProductSizeDTO> getResellProductDetailSizes(String proId);
   
   public ResellProductSearchIdDTO getResellProductSearchOptId(ResellPriceSearchDTO dto);
   public ResellProductDetailPriceDTO getResellProductDetailLowPrice(String proOptId);
   public List<ResellProductDetailPriceDateDTO> getResellProductDetailDatePrice(String proOptId);
   
   
}

