<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main1.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/mypage/mypage.css">
<link rel="stylesheet" type="text/css" href="/js/slick/slick.css" crossorigin="anonymous">
</head>
<body>    
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
						Hello, <span><span class="xans-member-var-name">신수진</span></span>
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
							<li class="js-order"><a href="/myshop/order/list.html">주문내역</a></li>

							<li class="js-board"><a
								href="/board/consult/list.html?board_no=9">1:1 문의</a></li>
							<li class="js-recent"><a
								href="/product/recent_view_product.html">최근 본 상품</a></li>
							<li class="js-modify"><a href="/member/modify.html">내 계정</a></li>
							<li onclick="logoutSubmit();"><a href="#">로그아웃</a></li>
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
									<span><a href="/member/modify.html" class="text-grey">회원정보수정</a></span>
								</div>
								<table class="table-simple">
									<colgroup>
										<col style="width: 100px;">
										<col style="width: auto;">
									</colgroup>
									<tbody>
										<tr>
											<th>이름</th>
											<td class="xans-element- xans-myshop xans-myshop-benefit "><span>신수진</span></td>
										</tr>
										<tr>


										</tr>
										<tr>
											<th>총 구매 금액</th>
											<td class="xans-element- xans-myshop xans-myshop-bankbook ">
												0(0회) <span class="js-limit-price"></span>
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
								<span><a href="/myshop/order/list.html" class="text-grey">전체주문조회</a></span>
							</div>

							<div
								class="xans-element- xans-myshop xans-myshop-orderhistorylistitem order-list">
								<!--
			$login_url = /member/login.html
			$count = 2
		-->
								<div class="displaynone">
									<div class="items-block ">
										<div class="item-header displaynone">
											<ul class="info-block">
												<li class="first">
													<ul>
														<li class="sub-title">주문일</li>
														<li class="value"></li>
														<li class="sub-title">주문번호</li>
														<li class="value"><a href="/myshop/order/detail.html"
															class="line"></a></li>
														<li class="sub-title">결제금액</li>
														<li class="value"></li>
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
												<a href="/product/detail.html"><img
													src="//img.echosting.cafe24.com/thumb/img_product_small.gif"
													onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';"
													alt=""></a>
											</div>
											<div class="item-desc">
												<div class="detail">
													<div class="name">
														<a href="/product/detail.html"></a>
													</div>
													<div class="option displaynone"></div>
													<div class="quantity text-center">수량:</div>
													<div class="order-price text-right"></div>
												</div>
												<div class="status">
													<p class="displaynone">
														<a href="#none" class="line" onclick="">[]</a>
													</p>
													<button type="button"
														class="btn btn-sm btn-gray btn-pd16 displaynone"
														onclick="">
														<span>취소철회</span>
													</button>
													<button type="button"
														class="btn btn-sm btn-gray btn-pd16 displaynone"
														onclick="">
														<span>교환철회</span>
													</button>
													<button type="button"
														class="btn btn-sm btn-gray btn-pd16 displaynone"
														onclick="">
														<span>반품철회</span>
													</button>
													<button type="button"
														class="btn btn-sm btn-gray btn-pd16 displaynone"
														onclick="">
														<span>상세정보</span>
													</button>
												</div>
											</div>
										</div>
									</div>

									<div class="items-block ">
										<div class="item-header displaynone">
											<ul class="info-block">
												<li class="first">
													<ul>
														<li class="sub-title">주문일</li>
														<li class="value"></li>
														<li class="sub-title">주문번호</li>
														<li class="value"><a href="/myshop/order/detail.html"
															class="line"></a></li>
														<li class="sub-title">결제금액</li>
														<li class="value"></li>
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
												<a href="/product/detail.html"><img
													src="//img.echosting.cafe24.com/thumb/img_product_small.gif"
													onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';"
													alt=""></a>
											</div>
											<div class="item-desc">
												<div class="detail">
													<div class="name">
														<a href="/product/detail.html"></a>
													</div>
													<div class="option displaynone"></div>
													<div class="quantity text-center">수량:</div>
													<div class="order-price text-right"></div>
												</div>
												<div class="status">
													<p class="displaynone">
														<a href="#none" class="line" onclick="">[]</a>
													</p>
													<button type="button"
														class="btn btn-sm btn-gray btn-pd16 displaynone"
														onclick="">
														<span>취소철회</span>
													</button>
													<button type="button"
														class="btn btn-sm btn-gray btn-pd16 displaynone"
														onclick="">
														<span>교환철회</span>
													</button>
													<button type="button"
														class="btn btn-sm btn-gray btn-pd16 displaynone"
														onclick="">
														<span>반품철회</span>
													</button>
													<button type="button"
														class="btn btn-sm btn-gray btn-pd16 displaynone"
														onclick="">
														<span>상세정보</span>
													</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="empty-block mt40 ">
									<div class="empty-icon-block">
										<div class="inner">
											<p>주문 내역이 없습니다.</p>
										</div>
									</div>
								</div>
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