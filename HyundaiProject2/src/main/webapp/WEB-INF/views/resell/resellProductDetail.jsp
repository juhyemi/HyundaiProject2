<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main1.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main2.css">
<link rel="stylesheet" type="text/css" href="/resources/css/product/c1.css">
<link rel="stylesheet" type="text/css" href="/resources/css/product/c2.css">
<link rel="stylesheet" type="text/css" href="/resources/css/product/productDetail.css">
<link rel="stylesheet" type="text/css" href="/resources/css/resell/resellProdcut.css">
<style>
th, td{
	text-align: center;
}

#showDetail:hover{
	text-decoration: underline;
	cursor: pointer;
}


</style>

</head>

<body class="product-detail magiedumatin">

	<%@ include file="../include/header2.jsp"%>

	<div id="wrap">
		<div id="container">
			<div id="contents">
				<div class="product-detail-wrap">
					<div
						class="xans-element- xans-product xans-product-detail detail-block">
						<div class="product-imagees" style=" margin-bottom: 20px;">
							<div class="xans-element- xans-product xans-product-image ">

								<div class="only-pc">
									<ul
										class="xans-element- xans-product xans-product-image prdImages first ">
										<li><a href="javascript:void(0);"><img
												src="${productDetail.listImg.get(0).pro_loc}"
												class="ThumbImage" alt=""></a></li>
									</ul>
									<ul class="xans-element- xans-product xans-product-addimage prdImages add">
										 <li class="xans-record-"><a href="javascript:void(0);"><img
												src="${productDetail.listImg.get(1).pro_loc}"
												class="ThumbImage" alt=""></a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="product-form sticky" style="top: -380px;">
							<div class="header">
								<div
									class="xans-element- xans-product xans-product-headcategory ">
									<ul class="category">
										<li><a href="/">PersonalSelling</a></li>
										<li class=""><em>/</em><a href="/product/list/${productDetail.pro_category}"><c:out value="${productDetail.pro_category}"></c:out></a>
										</li>
										<li class="displaynone"><em>/</em><a href=""></a></li>
										<li class="displaynone"><em>/</em><strong><a
												href=""></a></strong></li>
									</ul>
								</div>

								<div
									class="xans-element- xans-product xans-product-detaildesign product-detail-block">
									<p class="product_name_css xans-record-">
										<span class="title"><span
											style="font-size: 18px; color: #000000; font-weight: bold;">상품명</span></span>
										<span class="value"><span id="proName"
											style="font-size: 18px; color: #000000; font-weight: bold;"><c:out value="${productDetail.pro_name }"></c:out></span></span>
									</p>
									<p class="ma_product_code_css xans-record-">
										<span class="title"><span
											style="font-size: 12px; color: #555555;">자체상품코드</span></span>

									</p>
									<!-- 
									<p class="summary_desc_css xans-record-">
										<span class="title"><span
											style="font-size: 12px; color: #555555;">상품요약정보</span></span> <span
											class="value"><span
											style="font-size: 12px; color: #555555;">포근하고 부드러운 촉감의
												입체감이 있는 텍스처, 후드와 배색이 포인트인 투웨이 후드 가디건</span></span>
									</p>
									 -->
									<p class="prd_price_sale_css xans-record-">
										<span class="title"><span
											style="font-size: 14px; color: #000000; font-weight: bold;">할인판매가</span></span>
										<span class="value"><span><span
												style="font-size: 14px; color: #000000;"><span
													id="span_product_price_sale">사이즈를 선택해주세요 </span></span></span></span>
									</p>
									<ul class="discountMember">
										<li><a href="#"><img
												class="ec-front-product-show-benefit-icon" product-no="3492"
												benefit="DP"
												src="//img.echosting.cafe24.com/skin/admin_ko_KR/product/btn_disc_period.gif"
												alt="기간할인"></a></li>
									</ul>
									<p></p>
									<p class="product_price_css xans-record-">
										<span class="title"><span
											style="font-size: 14px; color: #000000;">판매가</span></span> <span
											class="value"><span
											style="font-size: 14px; color: #000000;"><strong
												id="span_product_price_text"
												style="text-decoration: line-through;"></strong><input
												id="product_price" name="product_price" value=""
												type="hidden"></span></span>
									</p>
									<p class="product_custom_css xans-record-">
										<span class="title"><span
											style="font-size: 13px; color: #555555;">소비자가</span></span> <span
											class="value"><span
											style="font-size: 13px; color: #555555;"><span
												id="span_product_price_custom" class="displaynone"><strike>188,000</strike></span></span></span>
									</p>
									<p class="simple_desc_css xans-record-">
										<span class="title"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span></span> <span
											class="value"><span
											style="font-size: 12px; color: #555555;"><strong>12/28,
													PM12:00 OPEN - 1/25 순차 출고</strong><br>무통장 입금 결제 건의 경우, 추가 오픈 시간
												이전까지 입금 완료되지 않을 경우 자동으로 다음 차수의 주문 건과 함께 배송됩니다.<br>*추가
												오픈될 경우에 해당, 모든 재 오픈 차수 동일</span></span>
									</p>
									<p class="made_in_css xans-record-">
										<span class="title"><span
											style="font-size: 12px; color: #555555;">원산지</span></span> <span
											class="value"><span
											style="font-size: 12px; color: #555555;">국내 </span></span>
									</p>
									<p class="print_date_css xans-record-">
										<span class="title"><span
											style="font-size: 12px; color: 555555;">제조일자</span></span> <span
											class="value"><span
											style="font-size: 12px; color: 555555;">2022-11</span></span>
									</p>
									<p class="quantity_css xans-record-">
										<span class="title"><span
											style="font-size: 12px; color: #555555;">수량</span></span> <span
											class="value"><span
											style="font-size: 12px; color: #555555;"><span
												id="NewProductQuantityDummy"><span class="quantity"><input
														id="quantity" name="quantity_name"
														style="width: 30px; height: 18px; border: 1px solid #BCBCBC;"
														value="" type="text"><img
														src="//img.echosting.cafe24.com/design/skin/mono/product/btn_basketUp.gif"
														class="QuantityUp" alt="수량증가"><img
														src="//img.echosting.cafe24.com/design/skin/mono/product/btn_basketDown.gif"
														class="QuantityDown" alt="수량감소"></span></span></span></span>
									</p>
								</div>
								
								<!-- TODO: 일단 숨김처리. 문제없으면 오픈시 삭제 -->
								<div class="displaynone">
									<h2>LINE POINTED HOODY ZIP CARDIGAN IN BLACK</h2>
									<h3 id="self-maPcode">MK229NCD015M0BB</h3>
									<div
										class="xans-element- xans-product xans-product-additional simple-desc-block ">
										포근하고 부드러운 촉감의 입체감이 있는 텍스처, 후드와 배색이 포인트인 투웨이 후드 가디건</div>
									<div class="price-block">
										<span id="span_product_price_text"
											style="text-decoration: line-through;">188,000</span> <s
											class="price188,000">188,000</s> <span class="dc-price">169,200</span>
									</div>
								</div>
							</div>

							<div class="js-option-color-block active">
								<div class="option-title">발매정가</div>
								<div class="option-color-block">
									<div id="self-option" class="displaynone"></div>
									<div
										class="xans-element- xans-product xans-product-relation xans-record-">
										<div
											class="xans-element- xans-product xans-product-relationlist">
											<div class="items js-option-color">
												<!-- 
												<span prod-no="" class=" active null" alt="BLACK"
													title="BLACK" style="color: rgb(0, 0, 0);">BLACK</span> <span
													id="pcode-P0000FEJ" class="border" prod-no="3493"
													alt="IVORY" title="IVORY"
													style="color: rgb(255, 255, 240);">IVORY</span>
												 -->
											</div>
										</div>
									</div>
									<p class="selected-item"><fmt:formatNumber value="${productDetail.pro_price}" pattern="#,###"/></p>
								</div>
							</div>
							
							
							<div
								class="xans-element- xans-product xans-product-option xans-record-">
								<div
									class="xans-element- xans-product xans-product-option xans-record-">
									<div class="option-title option-title-size">SIZE</div>
									<div class="option-block">
										<ul option_product_no="3492"
											option_select_element="ec-option-select-finder"
											option_sort_no="1" option_type="T" item_listing_type="C"
											option_title="SIZE" product_type="product_option"
											product_option_area="product_option_3492_0"
											option_style="button" ec-dev-id="product_option_id1"
											ec-dev-name="option1" ec-dev-class="ProductOption0"
											class="ec-product-button" required="true">
											
											<c:forEach var="sizeDTO" items="${productDetail.listSize}">
												
												<li class="pro_opt_size" option_value="P0000FEI000A" title=""><a href="#" onclick="return false" >
														<span id="sizeVal"><c:out value="${sizeDTO.pro_opt_size}" /></span>
												</a></li>
												
											</c:forEach>
										  
										</ul>
										
										
										<select required="true"
											product_option_area_select="product_option_3492_0"
											id="product_option_id1" name="option1" option_title="SIZE"
											option_type="T" item_listing_type="C"
											class="ProductOption0 displaynone">
											<option value="*">empty</option>
											<option value="P0000FEI000A">FREE</option>
										</select>
									</div>
								</div>
							</div>
							
							
							
							
							<div class="xans-element- xans-product xans-product-action product-action-block">
								<div class="buy-block ">
									<button type="button" class="btn btn-order btn-dark btn-full" onclick="resellOrder()">
										 <span id="btnBuy">즉시 구매</span>
									</button>
								

									<!-- size modal창-->
									<div class="background show" id="resellModal">
										<div class="window">
											<div class="popup">
												<div class="sizeBtn">
													<input type="button" class="resellPrice"
														value="132,000(XL)"> <input type="button"
														class="resellPrice" value="113,000(L)"> <input
														type="button" class="resellPrice" value="123,000(M)">
												</div>
												<div id="closeModal">

													<button type="button"
														class="btn btn-order btn-dark btn-full close-resell-btn"
														onclick="close_modal();">
														<span id="closeModalPrice">창 닫기</span>
												</div>

											</div>


										</div>

									</div>

									<script>
										function size_show_modal() {
											const resellModal = document
													.getElementById("resellModal")
											resellModal.style.display = "flex"
										}

										function close_modal() {
											const closeModal = document
													.getElementById("closeModal")
											resellModal.style.display = "none"
										}
									</script>

								</div>
								<div class="displaynone ">
									<button type="button" class="btn btn-order btn-dark btn-full "
										onclick="product_submit_action(1, '/exec/front/order/basket/', this)">
										<span id="btnReserve">PREORDER</span>
									</button>
								</div>
								<button type="button"
									class="btn btn-order btn-dark-disabled btn-full btn-soldout displaynone">
									<span>SOLD OUT</span>
								</button>
								<div class="option-soldout-restock-block displaynone ">
									<button type="button"
										class="btn btn-order btn-dark btn-full btn-loading btn-resotck displaynone"
										sms_restock_login_display="" onclick="smsRestockAct()">
										<span>재입고 알림</span>
									</button>
								</div>
								<div class="sms-restock-block"></div>
								<div class="sms-restock-block2"></div>
								<iframe class="sms-restock-iframe" id="smsRestockIframe"
									name="smsRestockIframe" frameborder="0" scrolling="no"
									src="/blank.html"></iframe>
								<div id="NaverChk_Button"></div>
								<div id="appPaymentButtonBox">
									<div id="kakao-checkout-button"></div>
								</div>
							</div>


							
							<!-- <div id="lineChart" style="width: 900px; height: 500px"></div> -->
							<table class="type06" id="priceTable"></table>
							<br>
							<div id="lineChart" ></div>


							<div
								class="xans-element- xans-product xans-product-additional info-block">
								<ul class="info-tab">
									<li class="js-delivery active"><a
										href="javascript:infoAct('delivery');"><span>DELIVERY</span></a>
									</li>
									<li class="js-details"><a
										href="javascript:infoAct('details');"><span>DETAILS</span></a></li>
									<li class="js-size "><a href="javascript:infoAct('size');"><span>SIZE
												GUIDE</span></a></li>
								</ul>

								<div id="delivery" class="info-desc active"
									style="height: 522.333px;">
									<strong> 해당 상품은 개인이 판매하는 제품 입니다.

										<div id="details" class="info-desc" style="height: 522.333px;">
											겉감 - 폴리에스터 56%, 아크릴 28%, 램스울 12%, 폴리우레탄 4% <br> 배색 - 램스울
											50%, 캐시나일론 50% <br> 니트 드라이클리닝 권장 <br> <br> -비침
											없음 <br> -신축성 좋음 <br> -안감 없음 <br> -두께감 보통 <br>
											<br> *단독 드라이클리닝을 권장합니다. <br> *열과 수축에 주의하여 주십시오. <br>
											*이염에 주의하여 주십시오. <br> *소재 특성상 필링(보풀)이 생길 수 있습니다. <br>
											*올풀림에 주의하여 주십시오. <br> *모니터에 따라 컬러의 오차가 있을 수 있습니다. <br>
											<br> *모든 예약 배송 상품은 상품의 재고가 있을 경우 안내된 기간보다 빠르게 배송될 수
											있습니다.
											<p style="margin-top: 24px;"></p>
											<p class=" ">제조일자: 2022-11</p>
											<p class=" ">제조국: 국내</p>
										</div>
										<div id="size" class="info-desc" style="height: 522.333px;">
											<table>
												<thead>
													<tr>
														<th>SIZE</th>
														<th>FREE</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>어깨</td>
														<td>41.5</td>
													</tr>
													<tr>
														<td>가슴</td>
														<td>44</td>
													</tr>
													<tr>
														<td>암홀</td>
														<td>19.5</td>
													</tr>
													<tr>
														<td>소매길이</td>
														<td>55</td>
													</tr>
													<tr>
														<td>소매단</td>
														<td>12.5</td>
													</tr>
													<tr>
														<td>밑단</td>
														<td>53</td>
													</tr>
													<tr>
														<td>총장</td>
														<td>51</td>
													</tr>
												</tbody>
											</table>
											<br>
											<div>(상세 사이즈 치수는 측정 방법과 위치에 따라 1-2cm 오차가 있을 수 있습니다)</div>
											MODEL IS 179CM WEARING A SIZE FREE, SHOES SIZE 250MM
										</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

<form id="resellInfo" action="/order/resell" >
	<input type="hidden" value="" name="sizeVal" id="resellSize"></input>
	<input type="hidden" value="${productDetail.pro_name}" name="proName"></input>
</form>


<script type="text/javascript">

function resellOrder(){
	
	var sizeVal = $(".pro_opt_size.ec-product-selected > a > span").text();
	$("#resellSize").val(sizeVal);
	$('#resellInfo').submit();
	
}




$(document).ready(function(){
	
	$(".pro_opt_size ").on("click", function(){
		var sizeVal = $(this).find('span').text();
		//var proName = '<c:out value="${productDetail.pro_name}"/>'
		var proName = `<c:out value="${productDetail.pro_name}" escapeXml="false" />`
		//var proName = ${productDetail.pro_name};
		
		
		let searchOBJ = {
				"sizeVal" : sizeVal,
				"proName" : proName
		}
		
		var csrfHeadName="${_csrf.headerName}";
	    var csrfTokenValue="${_csrf.token}";
		
		
		$.ajax({
			type: 'post',
			url : '/resell/price',
			data : JSON.stringify(searchOBJ),
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			beforeSend : function(xhr) {
	              xhr.setRequestHeader(csrfHeadName, csrfTokenValue);
	          },
			success : function(result){
				var tag = "";
				var price = parseInt(result.re_low_price);
				price = price.toLocaleString('ko-KR');
				
				tag+=`<span id="span_product_price_sale">판매가 : \${price}</span>`
				
				$("#span_product_price_sale").html(tag);
				var tabletag = "";
				tabletag=`<tr>
							  <th class="date" scope="row" style="width: 40%; text-align: center">최근 5일 평균 거래가</th>
							  <td style="text-align: right; font-size: 10px; vertical-align: bottom;"><span id="showDetail" onclick="showChart();">자세히 살펴보기</span></td>
						  </tr>`
			  
				 /* for(var i=9; i<14;i++){  */
				 for(var i=13; 8<i;i--){ 
					
					/* 여기부터 하면 됩니다. 0,1,2,3,4 */
					console.log(result.datePriceList[i].re_selldate)
					console.log(result.datePriceList[i].avg_price)
					
					var avgprice=parseInt(result.datePriceList[i].avg_price);
					avgprice = avgprice.toLocaleString('ko-KR');
					
					if(i%2==0){
						if(avgprice==0){
							tabletag+=`
								<tr>
									<th scope="row" class="even">\${result.datePriceList[i].re_selldate}</th>
									<td class="even"> - </td>
								</tr>
							   	`
						}else {
							tabletag+=`
								<tr>
									<th scope="row" class="even">\${result.datePriceList[i].re_selldate}</th>
									<td class="even">\${avgprice}원</td>
								</tr>
							   	`
						}
						
						
					}else {
						if(avgprice==0){
							tabletag+=`
								<tr>
									<th scope="row">\${result.datePriceList[i].re_selldate}</th>
									<td> - </td>
								</tr>
							   	`
						}else{
							tabletag+=`
								<tr>
									<th scope="row">\${result.datePriceList[i].re_selldate}</th>
									<td>\${avgprice}원</td>
								</tr>
							   	`
						}
					}

				}
				
				$("#priceTable").html(tabletag);
				
				
				
				
				
				
				
			},
			error : function(result){
				alert("ajax 실패")
				
			}
		})
		
			
    	$(".pro_opt_size").removeClass("ec-product-selected");
		$(this).addClass("ec-product-selected");
		
		$("#lineChart").empty();
		
	});
		 
});

function showChart(){
	
	var sizeVal = $(".pro_opt_size.ec-product-selected > a > span").text();
	var proName = `<c:out value="${productDetail.pro_name}" escapeXml="false" />`
	 //var proName = '<c:out value="${productDetail.pro_name}" />'
	
	let searchOBJ = {
			"sizeVal" : sizeVal,
			"proName" : proName
		}
	
	var csrfHeadName="${_csrf.headerName}";
    var csrfTokenValue="${_csrf.token}";
	
	
	$.ajax({
		type: 'post',
		url : '/resell/price',
		data : JSON.stringify(searchOBJ),
		contentType : "application/json; charset=utf-8",
		dataType : "json",
		beforeSend : function(xhr) {
              xhr.setRequestHeader(csrfHeadName, csrfTokenValue);
        },
		success:function(result){
			
			var arrTotalPoint = new Array();
			
			for(var i=0; i<result.datePriceList.length;i++){
				var arrOnePoint = new Array();
				var avgPrice = parseInt(result.datePriceList[i].avg_price);
				
				var date = result.datePriceList[i].re_selldate;
				var monthDate = date.substr(8);
				arrOnePoint.push(monthDate)

				arrOnePoint.push(avgPrice)
				arrTotalPoint.push(arrOnePoint)
			}
			
		
			
			/*Google api차트  */
			google.charts.load('current', {'packages':['line']});
		    google.charts.setOnLoadCallback(drawChart);

		    function drawChart() {

		      var data = new google.visualization.DataTable();
		      data.addColumn('string', 'Date(일)');
		      data.addColumn('number', '평균 판매가');
		     
		      data.addRows(arrTotalPoint);

		      var options = {
		    		 
		    		  
		    
		        chart: {
		          title: '최근 2주 평균 가격' 
		          
		        },
		        width: 450,
		        height: 350,
		        axes: {
		          x: {
		            0: {side: 'bottom'}
		          }
		        },
		        legend: {
		            position: 'none'
		        },
		        /* 
		        colors: ['black'],
			     
		        lineWidth:24,
		         */
		        
		        series: {
	      
	                0:{ 
	                	color : 'black', 
	                	lineWidth: 5 
	                } 
	            },
	            

	            vAxis: {
	            	  viewWindowMode: "explicit",   
	            	  viewWindow: {min: 0}, 
	            	  baseline:{
	            	    color: '#F6F6F6'
	            	  },
	            	  format:'#,###원'
       	  
	            	}
	          
		      };

		      
		      
		      
		      var chart = new google.charts.Line(document.getElementById('lineChart'));
				

		      chart.draw(data, google.charts.Line.convertOptions(options));
		    }
			
			
			
		},
		error:function(result){
			alert("ajax 실패")
		}
		
	});
	
}

</script>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">


</script>


<%@ include file="../include/footer.jsp"%>