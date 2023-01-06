<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko" xmlns="//www.w3.org/1999/xhtml" xml:lang="ko">
<head>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css"
	href="/resources/css/orderForm1.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css/orderForm2.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css/order/ordercomplete.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css/order/cart.css">
<link rel="stylesheet" type="text/css" href="/js/slick/slick.css"
	crossorigin="anonymous">
<title>Document</title>
<meta name="referrer" content="unsafe-url">
</head>
<script>
window.onload=function(){
	
		$("input:checkbox[name='1']").prop("checked",true);
		
		$("input:checkbox[name='0']").prop("checked",false);

	}

</script>
<script type="text/javascript">
<!--상품 가격-->		

/*전체선택*/
function allCheck(){
            if($("#allCk").prop("checked")) {
                $("input[type=checkbox]").prop("checked",true);

            } else {
                $("input[type=checkbox]").prop("checked",false); 
            }
        }
/* 부분체크박스 */		
function cartCheck(obj, cartNo){
		
	var csrfHeadName="${_csrf.headerName}";
	var csrfTokenValue="${_csrf.token}";
	var select = obj.checked;
	var cartCheck="0";
	var cartno = cartNo;		
	if(select){
		  cartcheck="1";
	}
	else{
		cartcheck="0";
		
	}
	
	 var data = {
			    cart_no : cartno,
			    cart_select : cartcheck
			};
	 $.ajax({
		    url : "/cartAjax/cartCheck",
			type :"post",
			data : data,
			beforeSend : function(xhr) {
		        xhr.setRequestHeader(csrfHeadName, csrfTokenValue);
		    }, 
			success : function(result) {
				if(result=="1"){
					alert(result);				
				}else{
					alert(result);		
				}
				alert("체크박스 성공");	
				
			},
			error : function() {
				alert("체크박스 실패");
			}
				 
	 });		
	 
}

//선택 제품 삭제
function selectDelete(){
	
	var csrfHeadName="${_csrf.headerName}";
	var csrfTokenValue="${_csrf.token}";
	$.ajax({
	    url : "/cartAjax/deleteCheck",
		type :"post",
		beforeSend : function(xhr) {
	        xhr.setRequestHeader(csrfHeadName, csrfTokenValue);
	    }, 
		success : function() {
		   alert("체크 삭제 성공");		 
		   console.log(".............")	;
		   $("input:checkbox[id='basket_chk_id_0']:checked").each(function(){
               console.log(".............");
			   
          /*     console.log(li_value);
             var li=$("li[data-li_value='1']"); 
             console.log(li); */
              this.closest("li").remove(); 
              console.log("될까");
           });
		},
		error : function() {
			alert("체크 삭제 실패");
		}
			 
 });


}

//수량 업데이트
/* function updateCnt(){

	
	
	} */
</script>
<body id="popup" class="iframe-layout">
	<div
		class="xans-element- xans-order xans-order-basketpackage basket-wrap ">
		<div class="section">

			<div class="title">
				<h1>Shopping Bag</h1>
				<button type="button" class="btn-close"
					onclick="parent.basketClose();">
					<span>close</span>
				</button>
			</div>
		</div>
		<div
			class="xans-element- xans-order xans-order-tabinfo ec-base-tab typeLight displaynone ">
			<ul class="menu">
				<li class="selected "><a href="/order/basket.html"
					target="_top">국내배송상품 (2)</a></li>
				<li class=" "><a href="/order/basket.html?delvtype=B"
					target="_top">해외배송상품 (0)</a></li>
			</ul>
			<p class="right ">장바구니에 담긴 상품은 30일 동안 보관됩니다.</p>
		</div>
		<div class="section"></div>
		<!-- basket-list -->
		<div
			class="xans-element- xans-order xans-order-normnormal basket-list xans-record-">
			<div class="section">

				<div class="header">
					<div class="select-all">
						<label> <!--  <input type="checkbox" id="one" name="number" value="1"> 전체선택 -->
							<input id="allCk" type="checkbox"
							onclick="allCheck();">
							&nbsp;<span>전체선택 <em
								class="xans-element- xans-order xans-order-normtitle ">(2)
							</em>
						</span></label>
					</div>
					<!-- 체크박스 선택 삭제 -->
					<div
						class="xans-element- xans-order xans-order-selectorder select-del ">
						<a href="javascript:void(0);" onclick="selectDelete();"
							target="_top">선택삭제</a>
					</div>
				</div>

				<ul class="xans-element- xans-order xans-order-list items-block">

					<!-- 	c태그 변수명 cartlist -->
					<c:forEach items="${cartList}" var="cartlist">
						
							<input type="hidden" class="cart_no" value="${cartlist.cart_no}">
							<%-- 	<input type="hidden" class="cart_check" value="${cartlist.cart_check}">  --%>
							<input type="hidden" class="indiviual_pro_price"
								value="${cartlist.pro_price}">
							<input type="hidden" class="cart_check"
								value="${cartlist.cart_select}">
							<input type="hidden" class="indiviual_cart_amount"
								value="${cartlist.cart_amount}">
							<li class="xans-record-" id="${cartlist.cart_no}" data-li_value="off">
								<div class="block">
									<!-- 상품체크 -->
									<div class="check">
										<input type="checkbox" id="basket_chk_id_0"
											name="${cartlist.cart_select}"
											onclick="cartCheck(this, ${cartlist.cart_no});">
									</div>
									<div class="thumb">
										<a href="/product/detail.html?product_no=3341&amp;cate_no=86"
											target="_top"><img
											src='<c:url value='${cartlist.pro_loc}'></c:url>'
											alt="MATIN KIM LOGO COATING JUMPER IN BEIGE"></a>
									</div>
									<div class="desc">
										<p class="name">
											<a
												href="/product/matin-kim-logo-coating-jumper-in-beige/3341/category/86/"
												class="ec-product-name" target="_top">${cartlist.pro_name}</a>
										</p>
										<!-- 	<ul class="xans-element- xans-order xans-order-optionall option">
									<li class="xans-record-"><strong class="displaynone">MATIN
											KIM LOGO COATING JUMPER IN BEIGE</strong>[옵션: FREE] <span
										class="displaynone">(1개)</span><br></li>
								</ul> -->
										<ul
											class="xans-element- xans-order xans-order-optionall option">
											<li class="xans-record-"><strong class="displaynone"></strong>[옵션:${cartlist.pro_opt_size}]
												<span class="displaynone">(1개)</span><br></li>
										</ul>
										<!-- 숨김처리 -->
										<div id="" class="price-block displaynone">
											<strong>143,000</strong>
											<p class="displaynone"></p>
										</div>
										<!-- // 숨김처리 -->
										<!--수량 변경-->
										<div class="quantity-block">
											<button type="button" class="btn btn-minus">
												<span>DOWN</span>
											</button>
											<input id="quantity_id_0" name="quantity_name_0" size="2"
												value="${cartlist.cart_amount}" type="text">
											<button type="button" class="btn btn-plus">
												<span>UP</span>
											</button>
										</div>

										<div class="price-block">

											<strong><fmt:formatNumber
													value="${cartlist.pro_price}" pattern="#,###" /> <!-- 143,000 --></strong>
										</div>

										<div class="del">
											<a href="javascript:void(0);"
												onclick="Basket.deleteBasketItem(0);" target="_top"><span>Remove</span></a>
										</div>

									</div>
								</div>
							</li>
						
					</c:forEach>
				</ul>
			</div>
		</div>
		<!-- // basket-list -->
		<div class="section">
			<!-- 총 주문금액 : 국내배송상품 -->
			<div
				class="xans-element- xans-order xans-order-totalsummary ec-base-table typeList gBorder total">
				<div class="total-price-block">
					<div class="block summary">
						<ul>
							<li class="price-title">상품 금액</li>
							<li class="price"><strong><span><span
										class="total_product_price_display_front"> <!-- 261,000 -->
									</span></span></strong></li>
						</ul>
						<ul class="">
							<li class="price-title">할인금액</li>
							<li class="price" id="total_benefit_price_area"><strong>-</strong><strong><span
									id="total_product_discount_price_front">0</span></strong></li>
						</ul>
						<ul>
							<li class="price-title">배송비</li>
							<li class="price"><strong><span
									id="total_delv_price_front"><span
										class="total_delv_price_front"> <!-- 0 -->
									</span></span></strong></li>
						</ul>
					</div>

					<div class="block total">
						<ul>
							<li class="price-title">전체합계</li>
							<li class="price"><strong><span
									id="total_order_price_front"> <!-- 249,200 -->
								</span></strong> <span class="txt14 displaynone"><span
									id="total_order_price_back"></span></span></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="xans-element- xans-order xans-order-totalsummary ">
				<div
					class="xans-element- xans-order xans-order-totalorder btn-block ">
					<button type="button" id="orderform"
						class="btn btn-md btn-white btn-full"
						onclick=" window.open('/order/orderForm', '_parent')">
						<span>선택상품 주문</span>
					</button>
					<!-- 네이버 체크아웃 구매 버튼  -->
					<div id="NaverChk_Button"></div>
					<!--상품상세페이지에 추가되는 앱 관련 결제버튼 div-->
					<div id="appPaymentButtonBox">
						<div id="kakao-checkout-button"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="criteo-tags-div" style="display: none;"></div>

</body>


</html>
</html>