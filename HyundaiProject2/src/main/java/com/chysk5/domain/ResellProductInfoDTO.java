package com.chysk5.domain;

import java.util.List;

import lombok.Data;

@Data
public class ResellProductInfoDTO {
	
	private ResellProductDTO resellProductDTO;
	private List<ResellPriceDTO> resellPrice;
}
