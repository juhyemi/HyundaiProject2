package com.chysk5.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.chysk5.domain.PriceRankDTO;
import com.chysk5.domain.RegResellProductDTO;
import com.chysk5.domain.ResellPriceDTO;
import com.chysk5.domain.ResellProductDTO;
import com.chysk5.domain.ResellProductDetailInfoDTO;
import com.chysk5.domain.ResellProductImgDTO;
import com.chysk5.domain.ResellProductListDTO;
import com.chysk5.domain.ResellProductSizeDTO;

public interface ResellMapper {

   
   public ResellProductDTO getMyResellProduct(String pro_opt_id);
   public List<ResellPriceDTO> getPriceList(String pro_opt_id);
   public int register(RegResellProductDTO regResellProductDTO);
   public int getMyRank(@Param("pro_opt_id") String pro_opt_id, @Param("re_price") int re_price);
   public int existData(@Param("pro_opt_id") String pro_opt_id, @Param("re_price") int re_price);

	/* Resell 상품 리스트 불러오기 */
   public List<ResellProductListDTO> getResellProductList();
   public List<ResellProductImgDTO> getResellProductListImg(String proId);
   
	/* Resell 상품 상세 불러오기 */
   public ResellProductDetailInfoDTO getResellProductDetail(String proId);
   public List<ResellProductImgDTO> getResellProductDetailImgs(String proId);
   public List<ResellProductSizeDTO> getResellProductDetailSizes(String proId);
   
}

