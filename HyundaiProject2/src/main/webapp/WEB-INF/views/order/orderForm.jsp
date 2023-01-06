<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="../resources/css/main1.css">
<link rel="stylesheet" type="text/css" href="../resources/css/main2.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/order/orderForm1.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/order/orderForm2.css">

<link rel="stylesheet" type="text/css" href="/js/slick/slick.css"
	crossorigin="anonymous">

</head>

<body id="userStyle" class="orderform">

	<%@ include file="../include/header2.jsp"%>

	<!-- container -->
	<form id="frm_order_act" name="frm_order_act" action="/order/orderComplete" method="post">
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
							<div class="form-block">
								<!-- <label class="ePlaceholderEach required" title="이름*">
									<p class="form-title">이름*</p> <input id="oname" name="oname"
									fw-filter="isFill" fw-label="주문자 성명" fw-msg=""
									class="inputTypeText" placeholder="이름*" size="15" value=""
									type="text">
									<div class="err-msg">이름 항목은 필수 입력값입니다.</div>	
								</label> -->
								<div><sec:authentication property="principal.member.mem_name"/></div>
							</div>
                       
							<div class="ePlaceholderGroup" title="휴대전화*">
								<div class="form-block phone-block">
									<label class="ePlaceholder required">
										<p class="form-title active">휴대전화*</p>
										<div class="phone">
										<!-- 	<select id="ophone2_1" name="ophone2_[]"
												fw-filter="isNumber&amp;isFill" fw-label="주문자 핸드폰번호"
												fw-alone="N" fw-msg="">
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
											</select>-<input id="ophone2_2" name="ophone2_[]" maxlength="4"
												fw-filter="isNumber&amp;isFill" fw-label="주문자 핸드폰번호"
												fw-alone="N" fw-msg="" size="4" value="" type="text">-<input
												id="ophone2_3" name="ophone2_[]" maxlength="4"
												fw-filter="isNumber&amp;isFill" fw-label="주문자 핸드폰번호"
												fw-alone="N" fw-msg="" size="4" value="" type="text"> -->
												<sec:authentication property="principal.member.mem_phone"/>
										</div>
									</label>
								</div>
							</div>

							<div class="ePlaceholderGroup" title="이메일*">
					<div class="form-block email-block flex">
									<label class="ePlaceholder required">
										<p class="form-title active">이메일*</p>
										<div class="email">
											<!-- <input id="oemail1" name="oemail1" fw-filter="isFill"
												fw-label="주문자 이메일" fw-alone="N" fw-msg="" class="mailId"
												value="" type="text">@<input id="oemail2"
												name="oemail2" fw-filter="isFill" fw-label="주문자 이메일"
												fw-alone="N" fw-msg="" class="mailAddress"
												readonly="readonly" value="" type="text"><select
												id="oemail3" fw-filter="isFill" fw-label="주문자 이메일"
												fw-alone="N" fw-msg="">
												<option value="" selected="selected">- 이메일 선택 -</option>
												<option value="naver.com">naver.com</option>
												<option value="daum.net">daum.net</option>
												<option value="nate.com">nate.com</option>
												<option value="hotmail.com">hotmail.com</option>
												<option value="yahoo.com">yahoo.com</option>
												<option value="empas.com">empas.com</option>
												<option value="korea.com">korea.com</option>
												<option value="dreamwiz.com">dreamwiz.com</option>
												<option value="gmail.com">gmail.com</option>
												<option value="etc">직접입력</option>
											</select> -->
											<sec:authentication property="principal.member.mem_email"/>
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
									placeholder="받는사람*" size="15" value="" type="text">
								</label>
							</div>

							<div class="form-block flex-column-2 post-block">
								<label class="ePlaceholderEach">
									<p class="form-title">우편번호*</p> <input id="order_post"
									name="order_post" fw-filter="isFill" fw-label="수취자 주소1" fw-msg=""
									class="inputTypeText" placeholder="*우편번호" size="40"
									value="" type="text">
									
									<!-- <input id="order_post"
									name="order_post" fw-filter="isFill" fw-label="수취자 우편번호1"
									fw-msg="" class="inputTypeText" placeholder="" size="6"
									maxlength="6" readonly="1" value="" type="text">
 -->								</label>
								<!-- <button type="button" class="btn btn-sm btn-gray-border btn-120"
									onclick="execDaumPostcode();">
									<span>우편번호 찾기</span>
								</button> -->
							</div>






							<div class="form-block form-submit-address">
								<label class="ePlaceholderEach required" title="기본주소*">
									<p class="form-title displaynone">기본주소*</p> <input id="order_addr"
									name="order_addr" fw-filter="isFill" fw-label="수취자 주소1" fw-msg=""
									class="inputTypeText" placeholder="기본주소*" size="40"
								 value="" type="text">
								</label>
							</div>
							<!-- <div class="form-block form-submit-address">
								<label class="ePlaceholderEach required" title="상세주소*">
									<p class="form-title displaynone">상세주소*</p> <input id="raddr2"
									name="raddr2" fw-filter="" fw-label="수취자 주소2" fw-msg=""
									class="inputTypeText" placeholder="상세주소*" size="40" value=""
									type="text">
								</label>
							</div> -->

							<div class="displaynone ePlaceholderGroup" title="전화*">
								<div class="form-block phone-block flex-column-2 mt40">
									<label class="ePlaceholder required">
										<p class="form-title active">전화*</p>
										<div class="phone"></div>
									</label>
								</div>
							</div>

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
												fw-alone="N" fw-msg="" size="4" value="" type="text">-<input
												id="rphone2_3" name="rphone2_[]" maxlength="4"
												fw-filter="isNumber&amp;isFill" fw-label="수취자 핸드폰번호"
												fw-alone="N" fw-msg="" size="4" value="" type="text">
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
						<h2>주문상품</h2>
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
								<ul class="xans-element- xans-order xans-order-normallist items-block">
									<c:forEach var="orderformlist" items="${orderFormList}">
									<li class="xans-record-">
										<div class="block">
											<div class="thumb">
												<img
													src='${orderformlist.pro_loc}'
													class="thumb-img">
											</div>
											<div class="desc">
												<p class="name">${orderformlist.pro_name}</p>
												[옵션:${orderformlist.pro_opt_size}]											
												<div class="price-block">
													<strong><fmt:formatNumber value="${orderformlist.pro_price}" pattern="#,###" /></strong>
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
								<li class="price"><strong>396,000</strong></li>
							</ul>
							<ul class="displaynone">
								<li class="price-title">부가세</li>
								<li class="price"><strong></strong></li>
							</ul>
							<ul>
								<li class="price-title">할인금액</li>
								<li class="price"><strong>-</strong><strong
									id="total_sale_price_view">0</strong></li>
							</ul>
							<ul>
								<li class="price-title">배송비</li>
								<li class="price"><strong>0</strong></li>
							</ul>
						</div>

						<div class="block total">
							<ul>
								<li class="price-title">전체합계</li>
								<li class="price"><strong><input id="total_price"
										name="total_price" fw-filter="isFill" fw-label="결제금액"
										fw-msg="" class="inputTypeText" placeholder=""
										style="text-align: right; ime-mode: disabled; clear: none; border: 0px; float: none;"
										size="10" readonly="1" value="356400" type="text"></strong></li>
							</ul>
						</div>
					</div>
					<!-- // total-price-block -->
                     
					<div class="order-btn-block">
					<!-- 	<button type="button" class="btn btn-md btn-dark btn-full"
							id="btn_payment">
							<span id="total_order_sale_price_view">356,400</span> &nbsp; <span>결제하기</span>
						</button> -->
						
					 	<button type="submit" class="btn btn-md btn-dark btn-full"
							id="btn_payment">
							<span id="total_order_sale_price_view">356,400</span> &nbsp; <span>결제하기</span>
						</button>
					</div>
				</div>
             
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                <input type="hidden" name="order_resell_check" value="${orderReselCheck}" />
               
			</div>
			<!-- // products-block -->

		</div>

	</form>

	<%@ include file="../include/footer.jsp"%>