<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
   content="width=device-width,initial-scale=1,user-scalable=no">
<meta name="_csrf" th:content="${_csrf.token}"/>
<meta name="_csrf_header" th:content="${_csrf.headerName}"/>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript" src="${contextPath}/resources/js/jquery/optimizer.js"></script>
<script type="text/javascript" src="${contextPath}/resources/js/jquery/security.js"></script>
<title>CHYSK 5</title>
<link rel="stylesheet" href="${contextPath}/resources/css/font.css" type="text/css">
<link rel="icon" href="${contextPath}/resources/img/common/favicon2.png">
<link rel="stylesheet" type="text/css" href="../resources/css/main1.css">
<link rel="stylesheet" type="text/css" href="../resources/css/main2.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main2-before.css">
<link rel="stylesheet" type="text/css"
   href="../resources/css/order/orderForm1.css">
<link rel="stylesheet" type="text/css"
   href="../resources/css/order/orderForm2.css">
<link rel="stylesheet" type="text/css" href="/js/slick/slick.css"
   crossorigin="anonymous">
<style>
footer{
   margin-top: 0px !important;
}
</style>
</head>
<!-- 주문 상세 페이지 작성자 윤태영 -->
<script> 
/* 주문 상품 전체 총액 계산 */
 window.onload=function(){
   var totalprice=0;
   $(".each_price_class").each(function(index,item){    
    var price1=parseInt($(this).val()); 
    totalprice+=price1;
    });

	totalprice=totalprice.toLocaleString('ko-KR'); 	
	var tag="";
	tag+=`<div class="products-block-order"><div class="total-price-block"><div class="block summary"><ul>
	<li class="price-title">상품 금액</li><li class="pro-price-total"><strong>\${totalprice}</strong></li>
	</ul><ul class="displaynone"><li class="price-title">부가세</li><li class="price"><strong></strong></li>
	</ul><ul><li class="price-title">배송비</li><li class="price"><strong>0</strong></li></ul>
	</div><div class="block total"><ul><li class="price-title">전체합계</li><li class="price"><strong>\${totalprice}</strong></li>
	</ul></div></div><!-- // total-price-block --><div class="order-btn-block"><button type="submit" class="btn btn-md btn-dark btn-full" id="btn_payment">
	<input type="hidden" name="order_total_price" value=\${totalprice} >
	<span id="total_order_sale_price_view">\${totalprice}</span> &nbsp; <span>결제하기</span></button>
	</div></div>`

    $(".products-block-order").html(tag);
   //.리셀 주문 확인
    resell_order();
 }  

/* 리셀 주문 상품시 리셀 제품 표시 */ 
 function resell_order(){
    var resellcheck=$('input[name=order_resell_check]').val();
    console.log("리셀체크:"+resellcheck);    
    if(resellcheck=='1'){
      $("#resellchk").text("Resell");    
      $("#title_resell").text("RESELL 주문상품")
       
    }
    
 }
</script>


<body id="userStyle" class="orderform">
<!-- header -->
<div class="header-wrap">
   <header><a href="/" class="logo" style="top: 65%; left: 9%;"><span>Matin Kim</span></a>
    </header>
</div>
<!-- // header -->


<!-- gnb -->
<div id="gnb" class="">
   <div class="menu-block depth1">

      <ul class="js-menu fashion active">
         <li class="active"><a href="/" class="">
               <span>Home</span>
            </a></li>
         <li><a href="/product/list.html?cate_no=45">
               <span>New In</span>
            </a></li>
         <!-- <li><a href="/product/list.html?cate_no=66"><span style="color: red;">Black Friday</span></a></li> -->
         <li class="is-sub" cate-no="Shop"><a href="javascript:void(0);">
               <span>Shop</span><i></i>
            </a></li>
         <li class="is-sub" cate-no="Search"><a href="javascript:void(0);">
               <span>Search</span><i></i>
            </a></li>
         <li class="space"></li>
         <li class=""><a href="/resell">
               <span>Resell</span>
            </a></li>
         <li class=""><sec:authorize access="isAnonymous()">
               <a href="/member/login">
                  <span>Fashion Talks</span>
               </a>
            </sec:authorize> <sec:authorize access="isAuthenticated()">
               <a href="/talks/tlist">
                  <span>Fashion Talks</span>
               </a>
            </sec:authorize></li>
         <li class=" only-mobile"><a href="javascript:languageOpen();">
               <span>Language</span>
            </a></li>

         <li class="xans-element- xans-layout xans-layout-statelogoff "><a href="/mypage/index">
               <span>My page</span>
            </a></li>
         <!-- 로그인이 안되어 있을 경우 -->
         <sec:authorize access="isAnonymous()">
            <li class="xans-element- xans-layout xans-layout-statelogoff "><a href="/member/login">
                  <span>Login</span>
               </a></li>
         </sec:authorize>
         <!-- 로그인이 되어있을 경우 -->
         <sec:authorize access="isAuthenticated()">

            <li class="xans-element- xans-layout xans-layout-statelogoff "><a href="#" onclick="logoutSubmit();">
                  <span>Logout</span>
               </a>
               <form id="logoutFrm" action="/member/logout" method="post">
                  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
               </form></li>

         </sec:authorize>

      </ul>

      <!--
            판다씨 배너 매니저
            그룹명 : 모바일 GNB 배너
        -->
      <div class="js-mobile-banner mobile-banner fashion active">
         <div class="banner-block only-mobile" pandassi-banner-group="ready" pandassi-banner-group-code="54b363be92b596be859c">

            <div pandassi-banner="ready"=""="">
               <!-- 배너 반복시작 // -->
               <a href="/collection-view.html?product_no=3360&amp;cate_no=90&amp;display_group=1" target="_self">
                  <img src="https://matinkim.com/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/84e84686080407234c31f28490ab790c.jpg">
               </a>
            </div>
            <!-- // 반복종료 -->

            <!-- // 반복종료 -->

         </div>
      </div>
      <div class="js-mobile-banner mobile-banner beauty">
         <div class="banner-block only-mobile" pandassi-banner-group="ready" pandassi-banner-group-code="9c821c8ba4243dfa8084">

            <div pandassi-banner="ready"=""="">
               <!-- 배너 반복시작 // -->
               <a href="/product/beauty_detail.html?product_no=3520&amp;cate_no=99&amp;display_group=1" target="_self">
                  <img src="https://matinkim.com/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/6853d8abffbbc1e921c5038263c7d5a4.jpg">
               </a>
            </div>
            <!-- // 반복종료 -->

            <!-- // 반복종료 -->

         </div>
      </div>
      <!-- // 그룹종료 -->

   </div>

   <div class="menu-block depth2" cate-no="Shop">
      <div class="sub">
         <ul>
            <li><a href="/product/list/Outerwears">
                  <span>Outerwears</span>
               </a></li>
            <li><a href="/product/list/Tops">
                  <span>Tops</span>
               </a></li>
            <li><a href="/product/list/Bottoms">
                  <span>Bottoms</span>
               </a></li>
            <li><a href="/product/list/Accessories">
                  <span>Accessories</span>
               </a></li>

         </ul>

      </div>
   </div>

   <div class="menu-block depth2 search" cate-no="Search">
      <div class="sub">
         <div class="block">

            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            <div class="xans-element- xans-search xans-search-form ">
               <fieldset>
                  <span class="displaynone"></span>
                  <div class="form-block">
                     <label class="ePlaceholderEach required" title="Search">
                        <p class="form-title">Search</p>
                        <div class="flex">
                           <input id="keyword_side" class="inputTypeText" placeholder="Search" size="15" value="" type="text">
                           <button id="btn_keyword" type="button" onclick="searchSubmit('keyword_side');">
                              <span>ok</span>
                           </button>
                        </div>
                     </label>
                  </div>
               </fieldset>

            </div>

         </div>
      </div>
   </div>

</div>
<form id="searchForm" action="/product/search" method="post">
   <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
   <input type="hidden" name="keyword" value="" />
</form>
<script type="text/javascript">
$(document).ready(function(){
      
});

function searchSubmit(inputId){
      var keyword = $('#'+inputId).val();
      $('input[name=keyword]').val(keyword);
      $('input[name=keyword]').attr('value',keyword);
      if(keyword == '' || keyword == null){
         alert("검색어를 입력해주세요");
      }else{
         $("#searchForm").submit();        
         }
         
             
          
}
 </script>
<div class="gnb-dimmer"></div>
<!-- // gnb -->

<!-- 장바구니 -->
<div class="basket-block">
   <div class="basket-wrap-iframe">
      <iframe class="basket-iframe" id="basketIframe" name="basketIframe" frameborder="0" scrolling="no" src='/cart/cartList'></iframe>
   </div>
</div>

<!-- // 장바구니 -->
<!-- language-block -->
<div class="language-block">

   <div class="language-select-block kor">
      <div class="header">
         <h2>Shop in</h2>
         <a href="javascript:languageClose();" class="btn-close">
            <span>close</span>
         </a>
      </div>
      <div class="select-block">
         <p>언어를 선택하십시오.</p>

         <div class="radio-block">
            <label> <input type="radio" name="language" value="KOR" onclick="languageSelect(this.value);" checked=""><span>한국어 | KRW</span>
            </label> <label> <input type="radio" name="language" value="ENG" onclick="languageSelect(this.value);"><span>English | USD</span>
            </label>
         </div>
      </div>
      <div class="desc">
         <p>
            한국 사이트에서 KRW로 쇼핑을 하고 있습니다.<br> 위의 상점을 확인하거나 변경하십시오.<br>
         </p>
         <p class="delivery-desc">
            * 배송지를 변경할 경우 카트의 내용물은 보관되지 않습니다.<br>
         </p>
      </div>

      <div class="continue-block">
         <a href="javascript:languageSelectGo();" class="close">
            <p>Continue to website</p>
            <span>close</span>
         </a>
      </div>
   </div>
</div>

   <!-- container -->
   <form id="frm_order_act" name="frm_order_act"
      action="/order/orderComplete" method="post">
      <!-- orderfrom-wrap -->
      <div class="orderfrom-wrap">
         <!-- order-info-block -->
         <div class="order-info-block">
            <!-- [주문배송정보] 주문자정보, 배송지정보, 배송정보 -->
            <!-- 주문자 정보 -->
            <section class="order-form-block">
               <div class="order-form-block-inner">
                  <div class="title">
                     <h3>1. 주문자 정보</h3>
                  </div>

                  <fieldset>
                     <div class="ePlaceholderGroup" title="이름">
                        <div class="form-block email-block flex">
                           <label class="ePlaceholder required">
                              <p class="form-title active" style="margin-bottom: 10px;">이름</p>
                              <div style="border-bottom: 1px solid #e5e5e5; width: 100px;">
                                 <sec:authentication property="principal.member.mem_name" />
                              </div>
                           </label>
                        </div>
                     </div>
                     <div class=" ePlaceholderGroup" title="휴대전화*">
                              <div class="form-block phone-block flex-column-2 mt40">
                                 <label class="ePlaceholder required">
                                    <p class="form-title active">휴대전화*</p>
                                    <div class="phone">
                                       <input id="rphone2_2" size="4" value="<sec:authentication property='principal.member.mobile1' />" type="text" disabled>
                                       -
                                       <input id="rphone2_2" size="4" value="<sec:authentication property='principal.member.mobile2' />" type="text" disabled>
                                       -
                                       <input id="rphone2_3" size="4" value="<sec:authentication property='principal.member.mobile3' />" type="text" disabled>
                                    </div>
                                 </label>
                              </div>
                           </div>
                     <div class="ePlaceholderGroup" title="이메일">
                        <div class="form-block email-block flex">
                           <label class="ePlaceholder required">
                              <p class="form-title active" style="margin-bottom: 10px;">이메일</p>
                              <div class="email" style="border-bottom: 1px solid #e5e5e5;">
                                 <sec:authentication property="principal.member.mem_email" />
                              </div>
                           </label>
                        </div>
                     </div>

                  </fieldset>
               </div>
            </section>
            <!-- // 주문자 정보 -->
            <!-- 배송지 정보 -->
            <section class="order-form-block">
               <div class="order-form-block-inner">
                  <div class="title">
                     <h3>2. 배송지 정보</h3>
                  </div>

                  <fieldset>
                     <div class="only-pc"></div>

                     <div class="only-mobile">
                        <div class="displaynone">
                           <select
                              class="xans-element- xans-order xans-order-deliverylist xans-record-"><option
                                 value="direct" selected="">직접입력</option>
                              <option value="same">회원정보와 동일</option></select>
                        </div>
                        <div class="">
                           <select
                              class="xans-element- xans-order xans-order-deliverylist"><option
                                 value="direct" selected="">직접입력</option>
                              <option value="same">회원정보와 동일</option>
                              <option value="273319" class="xans-record-">[윤태영] 경기
                                 용인시 기흥구 용구대로 1842 107동 1902호</option>
                           </select>
                        </div>
                     </div>

                     <div class="form-block mt20 mb10">
                        <label class="ePlaceholderEach required" title="받는사람*">
                           <input id="rname" name="rname" fw-filter="isFill"
                           fw-label="수취자 성명" fw-msg="" class="inputTypeText"
                           placeholder="받는사람*" size="15" style="width:100px;" value="" type="text" required>
                           <div class="err-msg">받는 사람 필수 입력값입니다.</div>
                        </label>
                     </div>
                     
                       <!-------------------- 주문 ---->
                           <div class="form-block flex-column-2 post-block">

								<label class="ePlaceholderEach">
									<p class="form-title">우편번호*</p> <input type="text"
									id="sample6_postcode" name="order_post" placeholder="우편번호*"> 
								</label>
								 <input type="button" class="btn btn-sm btn-gray-border btn-120" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
					       </div>

                                        
							<div class="form-block form-submit-address">
								<label class="ePlaceholderEach required" title="기본주소*">
									<p class="form-title displaynone">기본주소*</p> <input type="text"
									id="sample6_address" name="order_addr" placeholder="주소">						
								</label>
							</div>
							
							
						
							<input type="text" id="sample6_detailAddress" placeholder="상세주소*" size="50" style="width: 100%;" >
						
                            <!-------------------- 주문 ---->
                           <div class=" ePlaceholderGroup" title="휴대전화*">
                              <div class="form-block phone-block flex-column-2 mt40">
                                 <label class="ePlaceholder required">
                                    <p class="form-title active">휴대전화*</p>
                                    <div class="phone">
                                       <select id="rphone2_1" name="rphone2_[]"
                                          fw-filter="isNumber&amp;isFill" fw-label="수취자 핸드폰번호"
                                          fw-alone="N" fw-msg="">
                                          <option value="010">010</option>
                                          <option value="011">011</option>
                                          <option value="016">016</option>
                                          <option value="017">017</option>
                                          <option value="018">018</option>
                                          <option value="019">019</option>
                                       </select>-<input id="rphone2_2" name="rphone2_[]" maxlength="4"
                                          fw-filter="isNumber&amp;isFill" fw-label="수취자 핸드폰번호"
                                          fw-alone="N" fw-msg="" size="4" value="" type="text" autocomplete="off">-<input
                                          id="rphone2_3" name="rphone2_[]" maxlength="4"
                                          fw-filter="isNumber&amp;isFill" fw-label="수취자 핸드폰번호"
                                          fw-alone="N" fw-msg="" size="4" value="" type="text" autocomplete="off"> 
                                    </div>
                                 </label>
                              </div>
                           </div>

                           <div class="select-block mt40">

                              <div class="select-block-inner">


                                 <textarea id="omessage" name="omessage" fw-filter=""
                                    fw-label="배송 메세지" fw-msg="" maxlength="255" cols="70"
                                    placeholder="배송메시지는 택배사에게 전달되는 메시지로, 배송메시지를 통해 배송일자를 지정하실 수 없습니다."></textarea>
                              </div>
                           </div>
                  </fieldset>
               </div>
            </section>
            <!-- 배송 정보 -->
         </div>
         <!-- // order-info-block -->

         <!-- products-block -->
         <div class="products-block">
            <div class="products-block-products">
               <div class="title-block only-pc">
                  <h2 id="title_resell">주문상품</h2>
               </div>

               <div class="title-block-mobile only-mobile">
                  <div class="first">
                     <button type="button" class="btn btn-back"
                        onclick="history.back();">
                        <span>back</span>
                     </button>
                     <span class="title">주문상품</span> <span class="price js-prod-price">0</span>
                  </div>
                  <div class="last">
                     <span onclick="$('.products-list-block').toggle();">상품확인</span>
                  </div>
               </div>
               <!--   주문서 주문 목록 뿌리기 -->
               <div class="products-list-block">
                  <!-- products-list -->

                  <div class="products-list ">
                     <ul
                        class="xans-element- xans-order xans-order-normallist items-block">
                        <c:forEach var="orderformlist" items="${orderFormList}">
                           <input type="hidden" class="each_price_class" name="each_price"
                              value="${orderformlist.pro_price*orderformlist.cart_amount}">
                           <!-- 리셀 id -->
                           <input type="hidden" name="re_id"
                              value="${orderformlist.re_id}" />
                           <li class="xans-record-">
                              <div class="block">
                                 <div class="thumb">
                                    <img src='${orderformlist.pro_loc}' class="thumb-img">
                                 </div>
                                 <div class="desc">
                                     <ul id="resellchk" style="  padding-bottom: 10px; border-bottom-width: 20px; font-family: 'Nabla', cursive; font-size: 16px; color : #e2703a;"> </ul>
                                    <p class="name">${orderformlist.pro_name}</p>
                                    [옵션: ${orderformlist.pro_opt_size}]
                                    <div class="price-block">
                                       <strong><fmt:formatNumber
                                             value="${orderformlist.pro_price}" pattern="#,###" /></strong>
                                    </div>
                                    <div class="quantity-block">
                                       <span>수량: ${orderformlist.cart_amount}</span>
                                    </div>
                                 </div>
                              </div>
                           </li>
                        </c:forEach>
                     </ul>
                  </div>

                  <!-- // products-list -->
               </div>

            </div>

            <div class="products-block-order">
               <!-- total-price-block -->
               <div class="total-price-block">
                  <div class="block summary">
                     <ul>
                        <li class="price-title">상품 금액</li>
                        <li class="pro-price-total"><strong>0</strong></li>
                     </ul>
                     <ul class="displaynone">
                        <li class="price-title">부가세</li>
                        <li class="price"><strong></strong></li>
                     </ul>
                     <ul>
                        <li class="price-title">배송비</li>
                        <li class="price"><strong>0</strong></li>
                     </ul>
                  </div>

                  <div class="block total">
                     <ul>
                        <li class="price-title">전체합계</li>
                        <li class="price"><strong>0</strong></li>
                     </ul>
                  </div>
               </div>
               <!-- // total-price-block -->

               <div class="order-btn-block">
                  <button type="submit" class="btn btn-md btn-dark btn-full"
                     id="btn_payment">
                  <input type="hidden" name="order_total_price" value="" />
                     <span id="total_order_sale_price_view">0</span> &nbsp; <span>결제하기</span>
                  </button>
               </div>
            </div>

            <input type="hidden" name="${_csrf.parameterName}"
               value="${_csrf.token}" /> <input type="hidden"
               name="order_resell_check" value="${orderReselCheck}" />


         </div>
         <!-- // products-block -->

      </div>

   </form>
    <!-- daum kakao 우편 번호 api연결 -->
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                   // document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    //document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>

	<%@ include file="../include/footer.jsp"%>

