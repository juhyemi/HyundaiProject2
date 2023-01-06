<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ include file="../include/header.jsp"%>

<link rel="stylesheet" type="text/css" href="/js/slick/slick.css"
	crossorigin="anonymous">

<link rel="stylesheet" type="text/css"
	href="/resources/css/resell/register1.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css/resell/register2.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css/resell/register3.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/resell/register4.css">
<link rel="stylesheet" type="text/css" href="/resources/css/main1.css">
<link rel="stylesheet" type="text/css" href="/resources/css/main2.css">

<link id="smartPopup" rel="stylesheet" type="text/css"
	href="https://app4you.cafe24.com/SmartPopup/assets/css/front.css?vs=202103191120"
	media="all">
<link rel="stylesheet" type="text/css"
	href="https://app4you.cafe24.com/SmartPopup/assets/uipack/slick/1.8.1/css/smart-popup.slick.css?vs=202103191120">
<script
	src="https://app4you.cafe24.com/SmartPopup/assets/uipack/slick/1.8.1/js/smart-popup.slick.js?vs=202103191120"></script>


<script src="https://static.sixshop.com/resources/js/norequire/ssa.js"></script>

<!--  
<link rel="stylesheet" type="text/css"
	href="https://contents.sixshop.com/uploadedFiles/67701/css/designSetting1672214543310.css"> -->



<title>"${product.resellProductDTO.pro_name}"</title>

</head>

<body class="display display-home display desktop">

	<%@ include file="../include/header2.jsp"%>

	<div id="searchOptimizeTextDiv"
		style="position: absolute !important; top: -999999px !important; left: -999999px !important"></div>






	<!-- body section -->







	<div id="body"
		class="body device-desktop systemPage pageLink-product snsBtnType-iconAndText hero-notUse   cartUse productSearchUse productSearchMobileUse customerMenuUse customerMenuMobileUse headerSnsUse productSearchType-mobile-icon productSearchType-icon customerMenuType-icon customerMenuType-mobile-icon cartType-icon-bag cartType-mobile-icon-bag headerEnglishType-null entire-style-width-type-wide header-style-type-normal header-style-effect-type-fixedAtTop header-style-effect-mobile-type-fixedAtTop mobile-submenu-type-slide mobile-submenu-borderTop-notUse mobile-submenu-borderBottom-use hero-size-type-heightRelative hero-style-type-dark hero-indexPage-height-type-fullScreen hero-otherPages-height-type-fullScreen hero-indexPage-height-mobile-type-twoFifths hero-otherPages-height-mobile-type-twoFifths hero-indexPage-ratio-type-16to9 hero-otherPages-ratio-type-3to1 logoImageWhenHeaderInHero-use hero-header-position-headerInHero hero-align-center hero-button-size-medium hero-button-mobile-size-medium hero-navi-type-none productList-width-type-wide productList-language-english productList-filter-style-type-select-pill productList-textPosition-underImg productList-filterPosition-leftSide productList-imgMaskingType-rectangle productList-roundCornerType-all productList-filter-mobile-type-dropdown productList-column-desktop-4 productList-column-mobile-3 productList-badge-type-rectangle productList-badge-align-centerTop productList-hoverEffect-secondImg productListSlide-width-type-wide productListSlide-imgMaskingType-rectangle productListSlide-roundCornerType-all productListSlide-textPosition-underImg productListSlide-column-desktop-4 productListSlide-column-mobile-1 productListSlide-margin-notUse productListSlide-name-use productListSlide-hoverEffect-none board-language-english board-lineup-width-type-normal board-grid-width-type-normal board-grid-hoverEffect-none board-title-align-left board-grid-column-desktop-4 board-grid-column-mobile-2 blog-post-title-align-center blog-language-english blogGrid-filterPosition-leftSide blog-grid-width-type-wide blog-grid-hoverEffect-brightnessEffect blog-sidebar-notUse blog-sidebar-position-leftSide gallery-style-dark customSection-width-type-normal button-type-normal button-size-medium button-mobile-size-small button-shape-roundedSquare moveTopBtn-type-icon-arrow1 moveTopBtn-shape-roundedSquare moveTopBtn-weight-light moveTopBtn-border-notUse systemPage-productDetail-width-type-wide systemPage-productDetail-reviewQna-width-type-syncWithProductDetailBottomInfo systemPage-productDetail-relatedProduct-width-type-syncWithProductDetailBottomInfo systemPage-productDetail-buyButton-mobile-fixedPosition-use systemPage-productDetail-bottomInfo-mobile-fixedFontSize-notUse productDetail-mainImg-position-left productDetail-navigation-notUse customerMenuMobileUse productSearchMobileUse sitePlan-paidShoppingMall logoImage-loaded logoImageWhenHeaderInHero-loaded siteModel-loaded shopProductDetail-loaded desktop"
		data-device="desktop" data-viewport="desktop" browser="Chrome"
		browserversion="108.0.0.0" browsermajorversion="108" mobile="false"
		os="Windows" osversion="10">





		<div class="container-background background-color"></div>
		<div class="container-background background-image"></div>





		<div class="site-header-content-group">
			<div id="siteHeader"
				class="siteHeader site-division  layout-type-normal-single-center1 layout-mobile-type-normal-center-left borderBottom-use headerMenuHamburgerBar-use placeholder">





				<div class="row row-search mobile">
					<div
						class="searchIcon ico-search-border systemIcon systemIconWeight_normal"
						data-type="icon"></div>
					<form class="headerSearchBar" action="" onsubmit="return false;">
						<input type="search"
							onkeyup="require('v2/mall/util/common').goSearchResultPage(event)"
							placeholder="검색">
					</form>
					<div
						class="closeSearchBar-btn icomoon-ic-close-small-border systemIcon systemIconWeight_normal"></div>
				</div>

			</div>

		</div>


		<div id="displayCanvas" class="desktop" data-viewport="desktop">















			<div class="shopProductDetail wrapper">
				<div id="productDetail" class="productDetail wrapper"
					data-mini-cart-trigger-point="productOption">
					<div class="top-info clearfix">
						<div id="shopProductImgsDiv"
							class="content mainImg productImgType_thumbnails ratio_default"
							imgsrc="/uploadedFiles/67701/product/image_1669013784464.jpg">
							<div id="shopProductImgsMainDiv" class="main img-div img imgZoom"
								style="padding-top: 100%;">
								
								<!-- 
								<div
									class="shopProductImgMainWrapper type_thumbnails sequence_0"
									data-shopproductsequence="0" '="" data-ratio="1.00">
									<img data-shopproductsequence="0"
										imgsrc="/uploadedFiles/67701/product/image_1669013784464.jpg"
										class="shopProductImgMain thumbnails"
										src="https://contents.sixshop.com/thumbnails/uploadedFiles/67701/product/image_1669013784464_1000.jpg">
								</div>
								<div
									class="shopProductImgMainWrapper type_thumbnails sequence_1"
									data-shopproductsequence="1" '="" data-ratio="1.00">
									<img data-shopproductsequence="1"
										imgsrc="/uploadedFiles/67701/product/image_1669013784339.jpg"
										class="shopProductImgMain thumbnails"
										src="https://contents.sixshop.com/thumbnails/uploadedFiles/67701/product/image_1669013784339_1000.jpg">
								</div>
								<div
									class="shopProductImgMainWrapper type_thumbnails sequence_2"
									data-shopproductsequence="2" '="" data-ratio="1.25">
									<img data-shopproductsequence="2"
										imgsrc="/uploadedFiles/67701/product/image_1669871844019.jpg"
										class="shopProductImgMain thumbnails"
										src="https://contents.sixshop.com/thumbnails/uploadedFiles/67701/product/image_1669871844019_1000.jpg">
								</div>
								<div
									class="shopProductImgMainWrapper type_thumbnails sequence_3"
									data-shopproductsequence="3" '="" data-ratio="1.25">
									<img data-shopproductsequence="3"
										imgsrc="/uploadedFiles/67701/product/image_1669871844241.jpg"
										class="shopProductImgMain thumbnails"
										src="https://contents.sixshop.com/thumbnails/uploadedFiles/67701/product/image_1669871844241_1000.jpg">
								</div>
								<div
									class="shopProductImgMainWrapper type_thumbnails sequence_4"
									data-shopproductsequence="4" '="" data-ratio="1.00">
									<img data-shopproductsequence="4"
										imgsrc="/uploadedFiles/67701/product/image_1669012465283.jpg"
										class="shopProductImgMain thumbnails"
										src="https://contents.sixshop.com/thumbnails/uploadedFiles/67701/product/image_1669012465283_1000.jpg">
								</div>
								<div
									class="shopProductImgMainWrapper type_thumbnails sequence_5"
									data-shopproductsequence="5" '="" data-ratio="1.00">
									<img data-shopproductsequence="5"
										imgsrc="/uploadedFiles/67701/product/image_1669012465463.jpg"
										class="shopProductImgMain thumbnails"
										src="https://contents.sixshop.com/thumbnails/uploadedFiles/67701/product/image_1669012465463_1000.jpg">
								</div>
								<div
									class="shopProductImgMainWrapper type_thumbnails sequence_6"
									data-shopproductsequence="6" '="" data-ratio="1.00">
									<img data-shopproductsequence="6"
										imgsrc="/uploadedFiles/67701/product/image_1669012465061.jpg"
										class="shopProductImgMainZoom type_thumbnails"
										onmousemove="require(&quot;common/common&quot;).imgZoomIn($(this))"
										src="https://contents.sixshop.com/thumbnails/uploadedFiles/67701/product/image_1669012465061_2500.jpg"><img
										data-shopproductsequence="6"
										imgsrc="/uploadedFiles/67701/product/image_1669012465061.jpg"
										class="shopProductImgMain thumbnails"
										src="https://contents.sixshop.com/thumbnails/uploadedFiles/67701/product/image_1669012465061_1000.jpg">
								</div>
								 -->
								
								<div
									class="shopProductImgMainWrapper type_thumbnails sequence_7 on"
									data-shopproductsequence="7" '="" data-ratio="1.00">
									<img data-shopproductsequence="7"
										class="shopProductImgMain thumbnails"
										src="${product.resellProductDTO.pro_loc}">
								</div>
								<div
									class="shopProductImgMainWrapper type_thumbnails sequence_8"
									data-shopproductsequence="8" '="" data-ratio="1.00">
									<img data-shopproductsequence="8"
										imgsrc="/uploadedFiles/67701/product/image_1669012838633.jpg"
										class="shopProductImgMain thumbnails"
										src="https://contents.sixshop.com/thumbnails/uploadedFiles/67701/product/image_1669012838633_1000.jpg">
								</div>
								<div
									class="shopProductImgMainWrapper type_thumbnails sequence_9"
									data-shopproductsequence="9" '="" data-ratio="1.00">
									<img data-shopproductsequence="9"
										imgsrc="/uploadedFiles/67701/product/image_1636356590156.jpg"
										class="shopProductImgMain thumbnails"
										src="https://contents.sixshop.com/thumbnails/uploadedFiles/67701/product/image_1636356590156_1000.jpg">
								</div>
							</div>
							
							<!-- 
							<div id="shopProductImgsThumbDiv" class="sub img-div">
								<div class="sub img" data-shopproductsequence="0">
									<div class="shopProductImgRatio"
										imgsrc="/uploadedFiles/67701/product/image_1669013784464.jpg"
										style="background-image: url(https://contents.sixshop.com/thumbnails/uploadedFiles/67701/product/image_1669013784464_1000.jpg); width: 100%"
										onclick="require(&quot;v2/mall/service/product&quot;).detail.displayProductImg(event)"></div>
								</div>
								<div class="sub img" data-shopproductsequence="1">
									<div class="shopProductImgRatio"
										imgsrc="/uploadedFiles/67701/product/image_1669013784339.jpg"
										style="background-image: url(https://contents.sixshop.com/thumbnails/uploadedFiles/67701/product/image_1669013784339_1000.jpg); width: 100%"
										onclick="require(&quot;v2/mall/service/product&quot;).detail.displayProductImg(event)"></div>
								</div>
								<div class="sub img" data-shopproductsequence="2">
									<div class="shopProductImgRatio"
										imgsrc="/uploadedFiles/67701/product/image_1669871844019.jpg"
										style="background-image: url(https://contents.sixshop.com/thumbnails/uploadedFiles/67701/product/image_1669871844019_1000.jpg); width: 100%"
										onclick="require(&quot;v2/mall/service/product&quot;).detail.displayProductImg(event)"></div>
								</div>
								<div class="sub img" data-shopproductsequence="3">
									<div class="shopProductImgRatio"
										imgsrc="/uploadedFiles/67701/product/image_1669871844241.jpg"
										style="background-image: url(https://contents.sixshop.com/thumbnails/uploadedFiles/67701/product/image_1669871844241_1000.jpg); width: 100%"
										onclick="require(&quot;v2/mall/service/product&quot;).detail.displayProductImg(event)"></div>
								</div>
								<div class="sub img" data-shopproductsequence="4">
									<div class="shopProductImgRatio"
										imgsrc="/uploadedFiles/67701/product/image_1669012465283.jpg"
										style="background-image: url(https://contents.sixshop.com/thumbnails/uploadedFiles/67701/product/image_1669012465283_1000.jpg); width: 100%"
										onclick="require(&quot;v2/mall/service/product&quot;).detail.displayProductImg(event)"></div>
								</div>
								<div class="sub img" data-shopproductsequence="5">
									<div class="shopProductImgRatio"
										imgsrc="/uploadedFiles/67701/product/image_1669012465463.jpg"
										style="background-image: url(https://contents.sixshop.com/thumbnails/uploadedFiles/67701/product/image_1669012465463_1000.jpg); width: 100%"
										onclick="require(&quot;v2/mall/service/product&quot;).detail.displayProductImg(event)"></div>
								</div>
								<div class="sub img" data-shopproductsequence="6">
									<div class="shopProductImgRatio"
										imgsrc="/uploadedFiles/67701/product/image_1669012465061.jpg"
										style="background-image: url(https://contents.sixshop.com/thumbnails/uploadedFiles/67701/product/image_1669012465061_1000.jpg); width: 100%"
										onclick="require(&quot;v2/mall/service/product&quot;).detail.displayProductImg(event)"></div>
								</div>
								<div class="sub img" data-shopproductsequence="7">
									<div class="shopProductImgRatio"
										imgsrc="/uploadedFiles/67701/product/image_1669012838413.jpg"
										style="background-image: url(https://contents.sixshop.com/thumbnails/uploadedFiles/67701/product/image_1669012838413_1000.jpg); width: 100%"
										onclick="require(&quot;v2/mall/service/product&quot;).detail.displayProductImg(event)"></div>
								</div>
								<div class="sub img" data-shopproductsequence="8">
									<div class="shopProductImgRatio"
										imgsrc="/uploadedFiles/67701/product/image_1669012838633.jpg"
										style="background-image: url(https://contents.sixshop.com/thumbnails/uploadedFiles/67701/product/image_1669012838633_1000.jpg); width: 100%"
										onclick="require(&quot;v2/mall/service/product&quot;).detail.displayProductImg(event)"></div>
								</div>
								<div class="sub img" data-shopproductsequence="9">
									<div class="shopProductImgRatio"
										imgsrc="/uploadedFiles/67701/product/image_1636356590156.jpg"
										style="background-image: url(https://contents.sixshop.com/thumbnails/uploadedFiles/67701/product/image_1636356590156_1000.jpg); width: 100%"
										onclick="require(&quot;v2/mall/service/product&quot;).detail.displayProductImg(event)"></div>
								</div>
							</div>
							 -->
							
							<div class="swiper-button-prev swiper-button-black"></div>
							<div class="swiper-button-next swiper-button-black"></div>
							<div class="swiper-pagination"></div>
						</div>





						<div id="shopProductContentInfo"
							class="content clearfix info align_left">
							<div id="shopProductNameWrapper" class="row">
								<h1 id="shopProductName"
									class="row name designSettingElement productName">${product.resellProductDTO.pro_name}
								</h1>

							</div>







							<div id="resellProduct">
								<span id="resellProductCaption" class="resellProductCaption">
									<span class="size">${product.resellProductDTO.pro_opt_size}</span>
								</span> <span id="resellProductCaption" class="resellProductCaption">

									<span class="originalprice" id="originalPrice"></span>
								</span>

							</div>



							<br>
							<div>
								<form action="" method="post">

									<input id="input1" type="text"
										onkeyup="inputNumberFormat(this);" placeholder="가격을 입력하세용~"
										maxlength="10" numberOnly />
									<!--	<input id="input2" type="submit" />   -->
									<!-- <input id="input3" type="submit"
										value="최저가 순위보기" />  -->
									<a href="#none" class="input2" onclick="getMyRank();"><span>순위 확인</span></a> <a
										href="#none" class="input3" onclick="show_resell_modal();"><span>최저가
											순위보기</span></a>
								</form>
							</div>

							<!-- size modal창-->
							<div class="background show" id="resellModal">
								<div class="window">
									<div class="popup">
										<table class="type06">
											<c:forEach var="resellPrice" items="${product.resellPrice}">
												<tr style="border-bottom: 0.5px solid #222;">
													<th scope="row">${resellPrice.pro_opt_size}</th>
													<td><fmt:formatNumber value="${resellPrice.re_price }" type="number"/></td>
												</tr>
											</c:forEach>
										</table>
										<div id="closeModal">
											<button type="button"
												class="btn btn-order btn-dark btn-full close-resell-btn"
												onclick="close_modal();">
												<span id="closeModalPrice">창 닫기</span>
										</div>
									</div>
								</div>
							</div>


							<div id="showPriceRank"></div>
							<!-- 
							<c:forEach var="resellPrice" items="${product.resellPrice}">

								<p>size : ${resellPrice.pro_opt_size}</p>

								<p>price : ${resellPrice.re_price}</p>
 
							</c:forEach>
							-->
							<div id="productAdditionalInfo"
								class="row productInfo designSettingElement text-body">

								<div id="tax">
									<div class="point rewardPointRate">
										<span class="title">수수료</span> <span
											class="rewardPointInfo description">3% </span>
									</div>
									<div id="shopProductRewardPointInfo"
										class="rewardPoint-wrapper designSettingElement text-body hide">
										<div class="rewardPoint-info">
											<span class="rewardPoint-title">기본 적립</span><span
												class="rewardPoint-description">3%</span>
										</div>
									</div>
								</div>




							</div>


							<div
								class="product-order-summary-wrapper designSettingElement text-body ">
								<div
									class="product-order-summary-info designSettingElement shape">
									<div class="product-order-summary-row">
										<span class="title">판매 금액</span> <span class="row-content">
											<i class="ico-info-triangle no-ico-hover-effect hide"></i>&nbsp;
											<span id="product-order-total-quantity">0</span> <span>원</span>

										</span>
									</div>
									<div class="product-order-summary-row">
										<span class="title">정산 금액</span> <span class="row-content">
											<span id="product-order-total-price">0</span> <span>원</span>
										</span>
									</div>
								</div>
							</div>

							<!-- 
							<div id="productActionButtonDiv"
								class="productActionButtonDiv row">
								<div class="normalButton">
									<div class="btn-wrapper buyButton">
										<button id="btn_buyNow"
											class="buyNow designSettingElement button 
                                          "
											data-is-mini-cart-available="true"
											onclick="require('v2/mall/service/product').detail.handlePurchase('buyNow', event)">
											등록하기</button>
									</div>

								</div>
							</div>
 -->

							<div id="productActionButtonDiv"
								class="productActionButtonDiv row">
								<div class="normalButton">
									<div class="btn-wrapper buyButton">
										<button id="btn_buyNow"
											data-prooptid="${product.resellProductDTO.pro_opt_id}"
											class="buyNowResell designSettingElement button 
                                          "
											type="button" onclick="regResell();">등록하기</button>
									</div>

								</div>
							</div>


						</div>






					</div>
				</div>
			</div>


		</div>


	</div>



	</div>

	</div>









	<div
		class="mobile-fixed-buy-button-box designSettingElement entire-background-color">
		<button class="open-order-box-btn designSettingElement button">구매하기</button>
	</div>






	</div>



	<div id="restockNoticeDailog" class="restockNoticeDialog hide">
		<div class="restockNoticeDialog-overlay"></div>
		<div
			class="restockNoticeWrapper designSettingElement entire-background-color">
			<div class="restockNoticeDialog-close designSettingElement text-assi">
				<i class="icon icomoon-ic-close-small"></i>
			</div>
			<div class="restockNotice-title designSettingElement text-title">
				<span class="title">재입고 알림 신청</span>
			</div>
			<div id="restockOptionsDiv"></div>
			<div
				class="restockNoticePhoneTitle restockNotice-text designSettingElement text-body">
				<span class="text">휴대폰 번호</span>
			</div>
			<div
				class="restockNoticePhoneNumberDiv designSettingElement text-body">
				<input type="tel" id="customerPhone1"
					class="designSettingElement shape phoneNumber js-inputOnlyNumber"
					maxlength="3" autofocus="">
				<div class="element">-</div>
				<input type="tel" id="customerPhone2"
					class="designSettingElement shape phoneNumber js-inputOnlyNumber"
					maxlength="4">
				<div class="element">-</div>
				<input type="tel" id="customerPhone3"
					class="designSettingElement shape phoneNumber js-inputOnlyNumber"
					maxlength="4">
			</div>
			<div
				class="restockProductOptionInfo restockNotice-text designSettingElement text-body">
				<span class="text"><span class="productName"></span><span
					class="combinedOptionValue"></span> 재입고 시 알림</span>
			</div>
			<div
				class="restockNoticeMessage restockNotice-text designSettingElement text-body hide">
				<span class="text"></span>
			</div>
			<div class="btn-wrapper restockNoticeButtonDiv">
				<button class="restockNoticeButton designSettingElement button">신청하기</button>
			</div>
		</div>
	</div>
	</div>












	<form action="/resell/register" method="post" class="reg_product">
		<input type="hidden" name="member_mem_id" class="send_member_id">
		<input type="hidden" name="re_id" class="send_re_id"> <input
			type="hidden" name="re_price" class="send_re_price"> <input
			type="hidden" name="product_option_pro_opt_id"
			class="send_pro_opt_id"> <input type="hidden"
			name="re_available" class="send_re_available">
	</form>


	<script>
function show_resell_modal() {
	const resellModal = document.getElementById("resellModal")
	resellModal.style.display = "flex"
}

function close_modal() {
	const closeModal = document
			.getElementById("closeModal")
	resellModal.style.display = "none"
}

</script>

	<script>
/* resell product register  */
//$("#btn_buyNow").on("click", function() {
	function regResell(){
 //let member_id = $(this).data("member_id"); 추후에 변경할 내용
 let member_mem_id = "chung";
 let re_id = "10"; // 추후 변경
 let re_price = document.getElementById("input1").value;
 let pro_opt_id = $("#btn_buyNow").data("prooptid");
 let re_available = "0"; //추후 변경
 
 console.log(member_mem_id);
 console.log(re_id);
 console.log(re_price);
 console.log(pro_opt_id);
 console.log(re_available);
 
 $(".send_member_id").val(member_mem_id);
 $(".send_re_id").val(re_id);
 $(".send_re_price").val(re_price);
 $(".send_pro_opt_id").val(pro_opt_id);
 $(".send_re_available").val(re_available);
 $(".reg_product").submit();
	}

</script>

	<script>
function getMyRank() {
	
	let productInfo={
			pro_opt_id: ${product.resellProductDTO.pro_opt_id},
			re_price: document.getElementById("input1").value
	}
	
	let og_price = document.getElementById("input1").value;
	og_price = og_price.replace(",", "");
	
	var tmpPrice = parseInt(og_price);
	
	let og_comma = (og_price * 1).toLocaleString("ko-KR"); 
	let with_tax = Math.round(og_price * 0.97)
	with_tax = with_tax.toLocaleString("ko-KR");
	
	console.log(og_price, og_comma,with_tax, tmpPrice); 
	
	$.ajax({
		type: "get",
		url: "/resell/register/myRank",
		data: productInfo,
		success: function(data) {
			if(tmpPrice % 100 == 0) {
				if(data == 1) {
					$("#showPriceRank").text("최저가 입니다. 빠른 판매를 원하시면 해당 가격으로 설정하세요");
					$("#product-order-total-quantity").text(og_comma);
					$("#product-order-total-price").text(with_tax);
				} else {
					$("#showPriceRank").text(data + "번째 순위 입니다!");
					$("#product-order-total-quantity").text(og_comma);
					$("#product-order-total-price").text(with_tax);
					}
			} else {
				alert("100원 단위로 입력하세요.");
			}
			},

		error: function() {
			alert("ajax 통신 실패");
		}
	})
	}



</script>

	<script>

function comma(str) {
    str = String(str);
    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
}

function uncomma(str) {
    str = String(str);
    return str.replace(/[^\d]+/g, '');
} 

function inputNumberFormat(obj) {
    obj.value = comma(uncomma(obj.value));
}

function inputOnlyNumberFormat(obj) {
    obj.value = onlynumber(uncomma(obj.value));
}

function onlynumber(str) {
    str = String(str);
    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1');
}

/* 영역 안 가격 */


var money = $('#money').text();
var money2 = money.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
$('#money').text(money2);

</script>

	<script>

	let price = ${product.resellProductDTO.pro_price};
	let commaPrice = price.toLocaleString("ko-KR");
	
	console.log("가격은: " + commaPrice);
	$("#originalPrice").text(commaPrice);
</script>










	<%@ include file="../include/footer.jsp"%>