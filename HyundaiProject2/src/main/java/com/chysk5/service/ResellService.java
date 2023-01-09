package com.chysk5.service;

import java.util.List;

import com.chysk5.domain.RegResellProductDTO;
import com.chysk5.domain.ResellPriceDTO;
import com.chysk5.domain.ResellPriceSearchDTO;
import com.chysk5.domain.ResellProductDetailInfoDTO;
import com.chysk5.domain.ResellProductDetailPriceDTO;
import com.chysk5.domain.ResellProductInfoDTO;
import com.chysk5.domain.ResellProductListDTO;

public interface ResellService {

   public ResellProductInfoDTO getMyResellProduct(String pro_opt_id);
   public List<ResellPriceDTO> getPrice(String pro_opt_id);
   public int register(RegResellProductDTO regResellProductDTO, String order_no);
   public int getPriceRank(String pro_opt_id, int pInt);
 //  public int updateRegStatus(String pro_opt_id, String order_no);

	
   public List<ResellProductListDTO> getResellProductList();
   public ResellProductDetailInfoDTO getResellProductListDetail(String proId);
   public ResellProductDetailPriceDTO getResellProductPriceDetail(ResellPriceSearchDTO dto);
}
