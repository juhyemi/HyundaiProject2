<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main1.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main2.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/mypage/mypage.css">
<link rel="stylesheet" type="text/css" href="/js/slick/slick.css" crossorigin="anonymous">
</head>
<body class="magiedumatin">    
<%@ include file="../include/header2.jsp"%>

<div id="wrap">
	<div id="container">
		<div id="contents">

			<div class="xans-element- xans-layout xans-layout-logincheck ">
				
			</div>

			<!-- myshop-wrap -->
			<div class="myshop-wrap">

				<div
					class="xans-element- xans-myshop xans-myshop-asyncbenefit header ">
					<h2>
						Hello, <a href="/mypage/index"><span class="xans-member-var-name"><sec:authentication property="principal.member.mem_name"/></span></a>
					</h2>
				</div>

				<div class="only-mobile">
					<div class="header-mobile">
						<h2>My page</h2>
					</div>
				</div>

				<!-- myshop-layout -->
				<div class="myshop-layout">
					<!-- menu-block -->
					<div class="menu-block">
						<ul>
							<li class="js-order"><a href="/mypage/myorder">주문내역</a></li>
							<li><a href="/mypage/myResell">나의 판매 목록</a></li>
							<li class="js-board"><a
								href="/mypage/myarticle">내가 쓴 글</a></li>
							<li class="js-modify"><a href="/mypage/modify">내 계정</a></li>
							<li onclick="logoutSubmit();"><a href="javascript:void(0)">로그아웃</a></li>
						</ul>
						
						<form id="logoutFrm" action="/member/logout" method="post">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						</form>
					</div>
					<!-- // menu-block -->

					<!-- contents-block -->
					<div
						class="xans-element- xans-myshop xans-myshop-bankbook contents-block ">
						<!-- account-wallet-block -->
						<section class="account-wallet-block">
							<div class="account block">
								<div class="title-block">
									<h2>Account informations</h2>
									<span><a href="/mypage/modify" class="text-grey">회원정보수정</a></span>
								</div>
								<table class="table-simple">
									<colgroup>
										<col style="width: 100px;">
										<col style="width: auto;">
									</colgroup>
									<tbody>
										<tr>
											<th>이름</th>
											<td class="xans-element- xans-myshop xans-myshop-benefit "><span><sec:authentication property="principal.member.mem_name"/></span></td>
										</tr>
										<tr>
										</tr>
										<tr>
											<th>총 구매 금액</th>
											<td class="xans-element- xans-myshop xans-myshop-bankbook ">
												<fmt:formatNumber type="number" maxFractionDigits="3" value="${totalOrderPrice}" /> (<c:out value="${totalOrderCount}"/>회) <span class="js-limit-price"></span>
											</td>

										</tr>
									</tbody>
								</table>
							</div>


						</section>
						<!-- // account-wallet-block -->
						<!-- my-order-block -->
						
					
						<section class="my-order-block">
							<div class="title-block">
								<h2>My orders</h2>
								<span><a href="/mypage/myorder" class="text-grey">전체주문조회</a></span>
							</div>

							<div
								class="xans-element- xans-myshop xans-myshop-orderhistorylistitem order-list">
								<!--
			$login_url = /member/login.html
			$count = 2
		-->
		<c:if test="${fn:length(allList) > 0}">	
		                    <c:forEach var="List" items="${allList }" varStatus="count">
								<div class="">
									<div class="items-block ">
										<div class="item-header displaynone">
											<ul class="info-block">
												<li class="first">
													<ul>
														<li class="sub-title">${List.order_date }</li>
														<li class="value"></li>
														<li class="sub-title">결제금액</li>
													<c:if test="${List.re_price == null }">
													<li class="value only-pc"><fmt:formatNumber
																value="${List.pro_price }" type="number" />
													</li>
													</c:if>
													<c:if test="${List.re_price != null}">
													<li class="value only-pc"><fmt:formatNumber
																value="${List.re_price }" type="number" />
													</li>
													</c:if>
													</ul>
												</li>
												<li class="last">
													<ul>
														<li class="displaynone"><a
															class="btn btn-sm btn-gray btn-pd16" href="#none"
															onclick=""><span>주문취소</span></a></li>
														<li class="displaynone"><a
															class="btn btn-sm btn-gray btn-pd16"
															href="/myshop/order/cancel.html"><span>취소신청</span></a></li>
														<li class="displaynone"><a
															class="btn btn-sm btn-gray btn-pd16"
															href="/myshop/order/exchange.html"><span>교환신청</span></a></li>
														<li class="displaynone"><a
															class="btn btn-sm btn-gray btn-pd16"
															href="/myshop/order/return.html"><span>반품신청</span></a></li>
													</ul>
												</li>
											</ul>
										</div>

										<div class="item-prod">
											<div class="thumb">
												<a
													href="#"><img
													src="${List.pro_loc }"
													alt=""></a>
											</div>
											<div class="item-desc">
												<div class="detail">
													<div class="name">
														<a
															href="#">
															${List.pro_name }</a>
													</div>
													<div class="option displaynone">[옵션: ${List.pro_opt_size }]</div>
													<div class="quantity text-center">수량: ${List.order_detail_amount }</div>
													<c:if test="${List.re_price == null }">
													<div class="order-price text-right"></div><fmt:formatNumber
																value="${List.pro_price }" type="number" />
																</c:if>
													<c:if test="${List.re_price != null }">
													<div class="order-price text-right"></div><fmt:formatNumber
																value="${List.re_price }" type="number" />
																</c:if>
												</div>
												<div class="status">
													<p class="displaynone">
														<a href="#none" class="line" onclick="">[]</a>
													</p>
													
												</div>
											</div>
										</div>
									</div>
									
									

									
									
								</div>
								</c:forEach>
								</c:if>
								<c:if test="${fn:length(allList) == 0}">	
								<div class="empty-block mt40 ">
									<div class="empty-icon-block">
										<div class="inner">
											<p>주문 내역이 없습니다.</p>
										</div>
									</div>
								</div>
								</c:if>
							</div>
						</section>
						
					
						<!-- // `my-order-block -->

					</div>
					<!-- // contents-block -->


				</div>
				<!-- // myshop-layout -->
			</div>
			<!-- // myshop-wrap -->
		</div>
	</div>
</div>

<%@ include file="../include/footer.jsp"%>