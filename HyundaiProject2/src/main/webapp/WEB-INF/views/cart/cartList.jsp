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
		
		 reCal();
		 getCheckedCnt();
	}

</script>
<script type="text/javascript">
<!--상품 가격-->		

/*전체선택*/
/* function allCheck(){
            if($("#allCk").prop("checked")) {
                $("input[type=checkbox]").prop("checked",true);
                $("input:checkbox[id='basket_chk_id_0']:checked").each(function(){
             //     console.log(this.closet(".cart_no").val());
             //   	cartCheck(this,this.closet(".cart_no").attr("value")); 
                	console.log("성공");
                });
                console.log("전체 체크");   
                console.log("전체 체크완료");
                getCheckedCnt();

            } else {
                $("input[type=checkbox]").prop("checked",false); 
                console.log("전체 체크"); 
                $("input:checkbox[id='basket_chk_id_0']:checked").each(function(){
            //  	cartCheck(this,$(this).closet(".cart_no").attr("value"));
                	console.log("성공"); 
                    }); 
                console.log("전체 체크해제완료");
                getCheckedCnt();
            }
        } */
       
 
/*  전체삭제 */
 function allDelete(){
        	var csrfHeadName="${_csrf.headerName}";
        	var csrfTokenValue="${_csrf.token}";
        	$.ajax({
        	    url : "/cartAjax/deleteAll",
        		type :"post",
        		beforeSend : function(xhr) {
        	        xhr.setRequestHeader(csrfHeadName, csrfTokenValue);
        	    }, 
        		success : function() {
        		   console.log("전체삭제");
        		   $("input:checkbox[id='basket_chk_id_0']").each(function(){
        	           console.log(".............");			      
        	           this.closest("li").remove(); 
        	           console.log("전체제품 삭제 완료");
        	           reCal();
        	           getCheckedCnt();
        	           });
        		                  
        		},
        		error : function() {
        			alert("체크 삭제 실패");
        		}
        			 
         });
	       	
    }
 
/*체크 박스 개수*/        
function getCheckedCnt()  {
	  // 선택된 목록 가져오기
	  const query = 'input[type=checkbox]:checked';
	  const selectedElements = 
	      document.querySelectorAll(query);
	  console.log("체크개수");
	  // 선택된 목록의 갯수 세기
	  const selectedElementsCnt =
	        selectedElements.length;
	  
	  // 출력
	  document.getElementById('result_check').innerText
	    = "("+selectedElementsCnt+")";
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
					//alert(result);				
				}else{
					//alert(result);		
				}
				//alert("체크박스 성공");	
				reCal();
				getCheckedCnt();
				
			},
			error : function() {
				alert("체크박스 실패");
			}
				 
	 });		
	 
}

function reCal(){
	var csrfHeadName="${_csrf.headerName}";
	var csrfTokenValue="${_csrf.token}";
		 $.ajax({
			    url : "/cartAjax/totalPrice",
				type :"post",
				beforeSend : function(xhr) {
			        xhr.setRequestHeader(csrfHeadName, csrfTokenValue);
			    }, 
				success : function(result) {
				    console.log(result);				    
					var totalprice=result.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
					console.log(result);
					console.log("==========");
					console.log(totalprice);
					var tag="";
					var tag1="";
					tag+=`<span
						class="total_product_price_display_front">\${totalprice}
						</span>`	
				    $(".total_product_price_display_front").html(tag);
					tag1+=`<span
						id="total_order_price_front">\${totalprice}
						</span>`	    
				    $("#total_order_price_front").html(tag1); 
					
				},
				error : function() {
					
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
		   //alert("체크 삭제 성공");		 
		   console.log(".............")	;
		   $("input:checkbox[id='basket_chk_id_0']:checked").each(function(){
           console.log(".............");			      
           this.closest("li").remove(); 
           console.log("선택제품 삭제 완료");
           reCal();
           getCheckedCnt();
           });
		},
		error : function() {
			alert("체크 삭제 실패");
		}
			 
 });


}

// 수량 변경
function modifyCnt(type,cartNo){
	var cartno=cartNo;
	var type=type;
	var csrfHeadName="${_csrf.headerName}";
    var csrfTokenValue="${_csrf.token}";
	console.log("수량증가");
	console.log(cartno);
	console.log(type);
	/* let quantity = $(this).parent("div").find("input").val(); */
	var quantity=$("#quantity_id_"+cartno).val();	
	console.log(quantity);		
		if(type =='p'){
		$("#quantity_id_"+cartno).val(++quantity);	
		}
		else{
		quantity=quantity-1;	
			if(quantity<1){
		  	 alert("최소 1개 구매");	
			}else{	
			$("#quantity_id_"+cartno).val(quantity);	
			}
		}
	 console.log(quantity);
	 if(quantity>=1){ // 수량이 1이상일 경우만 ajax통신
	 let cntData = {
			    cart_no : cartno,
			    cart_amount : quantity
			};
		$.ajax({
		    url : "/cartAjax/updateCnt",
			type :"post",
			data: JSON.stringify(cntData),
			async:false,
			contentType : "application/json; charset=utf-8",
			beforeSend : function(xhr) {
		        xhr.setRequestHeader(csrfHeadName, csrfTokenValue);
		    }, 
			success : function() {
			 	console.log("성공");				        
				//var procnt=parseInt(quantity);							
				//var proprice=parseInt($("#pro-price_"+cartno).text().replace(/,/g , ''));				
				//var proprice=parseInt($("#pro-price_"+cartno).val());
				var proprice=$("#pro-price_"+cartno).attr("value");
			    var prototalprice=(quantity*proprice).toLocaleString('ko-KR');			
				var tag="";
				tag +=`<strong id="pro-price"_cartno>\${prototalprice}</strong>`				
				
				$("#pro-price_"+cartno).html(tag);
				//alert("카운트 업데이트 성공"); 
				reCal();
			},
			error : function() {
				console.log("실패");
				//alert("카운트 업데이트 실패");
			}
				 
	 	});
	 }
}




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
					<div class="xans-element- xans-order xans-order-selectorder select-del ">
						<a href="javascript:void(0);" onclick="allDelete();"
							target="_top">전체삭제</a>
					</div>
					<!-- 체크박스 선택 삭제 -->
					<div
						class="xans-element- xans-order xans-order-selectorder select-del ">
						<a href="javascript:void(0);" onclick="selectDelete();"
							target="_top">선택삭제&nbsp;<em
								class="xans-element- xans-order xans-order-normtitle " id="result_check">(0)
							</em></a>
					</div>
				</div>

				<ul class="xans-element- xans-order xans-order-list items-block">

					<!-- 	c태그 변수명 cartlist 목록 시작  -->
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
										<!--수량 변경 시작-->
										<div class="quantity-block">
											<button type="button" class="btn btn-minus" onclick="modifyCnt('m',${cartlist.cart_no});">
												<span>DOWN</span>
											</button>
											<input id="quantity_id_${cartlist.cart_no}" name="quantity_name" size="2"
												value="${cartlist.cart_amount}" type="text">
											<button type="button" class="btn btn-plus" onclick="modifyCnt('p',${cartlist.cart_no});">
												<span>UP</span>
											</button>
										</div>
                                        <!--수량 변경 끝-->
										<div class="price-block">
											<strong id="pro-price_${cartlist.cart_no}" value="${cartlist.pro_price}"><fmt:formatNumber value="${cartlist.pro_price*cartlist.cart_amount}" pattern="#,###" /> <!-- 143,000 --></strong>
										</div>


									</div>
								</div>
							</li>
						
					</c:forEach>
				</ul>
			</div>
		</div>
		<!-- 	c태그 변수명 cartlist 목록 끝  -->
		<div class="section">
			<!-- 총 주문금액 : 국내배송상품 -->
			<div
				class="xans-element- xans-order xans-order-totalsummary ec-base-table typeList gBorder total">
				<div class="total-price-block">
					<div class="block summary">
						<ul>
							<li class="price-title">상품 금액</li>
							<li class="price"><strong><span><span
										class="total_product_price_display_front">0 <!-- 261,000 -->
									</span></span></strong></li>
						</ul>
						<!-- <ul class="">
							<li class="price-title">할인금액</li>
							<li class="price" id="total_benefit_price_area"><strong>-</strong><strong><span
									id="total_product_discount_price_front">0</span></strong></li>
						</ul> -->
						<ul>
							<li class="price-title">배송비</li>
							<li class="price"><strong><span
									id="total_delv_price_front"><span
										class="total_delv_price_front"> 0
									</span></span></strong></li>
						</ul>
					</div>

					<div class="block total">
						<ul>
							<li class="price-title">전체합계</li>
							<li class="price"><strong><span
									id="total_order_price_front"> 0<!-- 249,200 -->
								</span></strong> <span class="txt14 displaynone"><span
									id="total_order_price_back"></span></span></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="xans-element- xans-order xans-order-totalsummary ">
				<div
					class="xans-element- xans-order xans-order-totalorder btn-block ">
				    <form name="content_form" action="/order/orderForm" method="GET">
				    <input type="hidden" class="cart_no" value="${cartlist.cart_no}">
				    <input type="hidden" name="order_resell_check" value="0">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					<button type="submit" id="orderform"
						class="btn btn-md btn-white btn-full"
						onclick="checkForm()" onsubmit="return true;">
						<span>선택상품 주문</span>
					</button>
			       </form>
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
<script>
// iframe parent window 

function checkForm(){ 

    document.content_form.target="_parent"; 

    document.content_form.submit(); 

} 
</script>

</html>
</html>