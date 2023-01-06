<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main1.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main2.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/mypage/mypage.css">
<link rel="stylesheet" type="text/css" href="/js/slick/slick.css" crossorigin="anonymous">
</head>
<body class="magiedumatin ">    
<%@ include file="../include/header2.jsp"%>

<div id="wrap">
	<div id="container">
		<div id="contents">
			<div class="myshop-wrap">

				<div
					class="xans-element- xans-myshop xans-myshop-asyncbenefit header ">
					<h2>
						Hello, <a href="/mypage/index"><span class="xans-member-var-name"><sec:authentication property="principal.member.mem_name"/></span></a>
					</h2>
				</div>

				<!-- myshop-layout -->
				<div class="myshop-layout">
					<!-- menu-block -->
					<div class="menu-block">
						<ul>
							<li class="js-order active"><a href="/mypage/myorder">주문내역</a></li>

							<li class="js-board"><a
								href="/board/consult/list.html?board_no=9">1:1 문의</a></li>
							<li class="js-recent"><a
								href="/product/recent_view_product.html">최근 본 상품</a></li>
							<li><a href="#">나의 판매 목록</a></li>
							<li class="js-modify"><a href="/mypage/modify">내 계정</a></li>
							<li onclick="logoutSubmit();"><a href="#">로그아웃</a></li>
						</ul>
						
						<form id="logoutFrm" action="/member/logout" method="post">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						</form>
					</div>


					<!-- contents-block -->
					<div class="contents-block">

						<div class="title-block">
							<h2>주문내역</h2>
						</div>
						
					<nav id=tab-button-nav>
						<div
							class="xans-element- xans-myshop xans-myshop-orderhistorytab order-tab ">
							<ul class="menu">
								<li class="tab_class selected"><a class="tab-button" data-tab-section="tab-section-1">주문내역조회
										<sup>(<span id="xans_myshop_total_orders">1</span>)
									</sup>
								</a></li>
								<li class="tab_class_cs tab-button" ><a 
									href="/myshop/order/list.html?mode=cs&amp;history_start_date=2022-09-30&amp;history_end_date=2022-12-29&amp;past_year=2021">취소/반품/교환
										내역 <sup>(<span id="xans_myshop_total_orders_cs">0</span>)
									</sup>
								</a></li>
								<li class="only-pc tab_class_past tab-button"><a
									class="tab-button" data-tab-section="tab-section-3">리셀주문내역
										<sup>(<span id="xans_myshop_total_orders_past">0</span>)
									</sup>
								</a></li>
								</a></li>		
							</ul>
						</div>
					</nav>
						<div class="ul-desc dash text-grey mt30 only-pc">
							<ul>
								<li>기본적으로 최근 3개월간의 자료가 조회되며, 기간 검색시 지난 주문내역을 조회하실 수 있습니다.</li>
								<li>주문번호를 클릭하시면 해당 주문에 대한 상세 내역을 확인하실 수 있습니다.</li>
								<li>주문상태가 "배송준비중"이더라도 실제 상품이 출고된 경우 요청사항이 거부될 수 있습니다.</li>
							</ul>
						</div>

						<form method="GET" id="OrderHistoryForm" name="OrderHistoryForm">
							<div
								class="xans-element- xans-myshop xans-myshop-orderhistoryhead order-search-block ">
								<ul class="period-rage">
									<li><a href="javascript:void(0);" days="00">오늘</a></li>
									<li><a href="javascript:void(0);" days="07">1주일</a></li>
									<li><a href="javascript:void(0);" days="30">1개월</a></li>
									<li><a href="javascript:void(0);" days="90">3개월</a></li>
									<li><a href="javascript:void(0);" days="180">6개월</a></li>
								</ul>
								<ul class="period-search">
									<li><input id="history_start_date"
										name="history_start_date" class="fText hasDatepicker"
										readonly="readonly" size="10" value="2022-09-30" type="text">
									<button type="button" class="ui-datepicker-trigger">
											<img
												src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/ico_cal.gif"
												alt="..." title="...">
										</button></li>
									<li>~</li>
									<li><input id="history_end_date" name="history_end_date"
										class="fText hasDatepicker" readonly="readonly" size="10"
										value="2022-12-29" type="text">
									<button type="button" class="ui-datepicker-trigger">
											<img
												src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/ico_cal.gif"
												alt="..." title="...">
										</button></li>
									<li><button type="submit" id="order_search_btn"
											class="btn btn-dark">
											<span>SEARCH</span>
										</button></li>
								</ul>
							</div>
							<input id="mode" name="mode" value="" type="hidden"> <input
								id="term" name="term" value="" type="hidden">
						</form>
						
						
						
						
						<section id="tab-section-1" class="tab-section">
						<div
							class="xans-element- xans-myshop xans-myshop-orderhistorylistitem order-list">
							<!--
                        $login_url = /member/login.html
                        $count = 10
                    -->
                    <c:forEach var="List" items="${allList }" varStatus="count">
							<div class="">
								<div class="items-block xans-record-">
									<div class="item-header ">
										<ul class="info-block">
											<li class="first">
												<ul>
													<li class="sub-title">주문일</li>
													<li class="value">${List.order_date }</li>
													<li class="sub-title">주문번호</li>
													<li class="value"><a
														href="/myshop/order/detail.html?order_id=20221229-0003219&amp;page=1&amp;history_start_date=2022-09-30&amp;history_end_date=2022-12-29"
														class="line">20221229-0003219</a></li>
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
													<p> 리셀 상품 </p>
													</c:if>
												</ul>
											</li>
											<li class="last only-pc">
										
											</li>
										</ul>
									</div>

									<div class="item-prod">
										<div class="block">
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
													<div class="option ">[옵션: ${List.pro_opt_size }]</div>
													<div class="quantity text-center">수량: ${List.order_detail_amount }</div>
													<c:if test="${List.re_price == null }">
													<div class="order-price text-right"></div><fmt:formatNumber
																value="${List.pro_price }" type="number" />
																</c:if>
													<c:if test="${List.re_price != null }">
													<div class="order-price text-right"></div><fmt:formatNumber
																value="${List.re_price }" type="number" />
																</c:if>
													
													<div class="btn-block only-mobile">
														<ul>
															<li class=""><a class="btn btn-sm btn-gray btn-pd16"
																href="#none"
																onclick="OrderHistory.orderCancel('20221229-0003219')"><span>주문취소</span></a>
															</li>
															<li class="displaynone"><a
																class="btn btn-sm btn-gray btn-pd16"
																href="/myshop/order/cancel.html?order_id=20221229-0003219"><span>취소신청</span></a>
															</li>
															<li class="displaynone"><a
																class="btn btn-sm btn-gray btn-pd16"
																href="/myshop/order/exchange.html?order_id=20221229-0003219"><span>교환신청</span></a>
															</li>
															<li class="displaynone"><a
																class="btn btn-sm btn-gray btn-pd16"
																href="/myshop/order/return.html?order_id=20221229-0003219"><span>반품신청</span></a>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
										<div class="status">
											
											<button type="button"
												class="btn btn-sm btn-gray btn-pd16"
												onclick="regProduct(${List.pro_opt_id});">
												<span>판매 등록</span>
											</button>


											<button type="button"
												class="btn btn-sm btn-gray btn-pd16 displaynone"
												onclick="OrderHistory.getDetailInfo('?product_no=3363&amp;cate_no=26&amp;order_id=20221229-0003219&amp;ord_item_code=20221229-0003219-01');">
												<span>상세정보</span>
											</button>
										</div>
									</div>
								</div>

							</div>
							
							</c:forEach>
							<div class="empty-block mt40 displaynone">
								<div class="empty-icon-block line">
									<div class="inner">
										<p>주문 내역이 없습니다.</p>
									</div>
								</div>
							</div>
							<div
								class="xans-element- xans-myshop xans-myshop-orderhistorypaging paginate">
								<a
									href="?page=1&amp;history_start_date=2022-09-30&amp;history_end_date=2022-12-29&amp;past_year=2021">&lt;&lt;</a>
								<a
									href="?page=1&amp;history_start_date=2022-09-30&amp;history_end_date=2022-12-29&amp;past_year=2021">&lt;</a>
								<a
									href="?page=1&amp;history_start_date=2022-09-30&amp;history_end_date=2022-12-29&amp;past_year=2021"
									class="this xans-record-">1</a> <a
									href="?page=1&amp;history_start_date=2022-09-30&amp;history_end_date=2022-12-29&amp;past_year=2021">&gt;</a>
								<a
									href="?page=1&amp;history_start_date=2022-09-30&amp;history_end_date=2022-12-29&amp;past_year=2021">&gt;&gt;</a>
							</div>
						</div>
						</section>
						
						
						
						
						<section id="tab-section-3" class="tab-section" hidden>
						<div
							class="xans-element- xans-myshop xans-myshop-orderhistorylistitem order-list">
							<!--
                        $login_url = /member/login.html
                        $count = 10
                    -->
                    <!-- 
                   		<c:forEach var="List" items="${buyResellList }" varStatus="count">
							<div class="">
								<div class="items-block xans-record-">
									<div class="item-header ">
										<ul class="info-block">
											<li class="first">
												<ul>
													<li class="sub-title">주문일</li>
													<li class="value">2022-12-29</li>
													<li class="sub-title">주문번호</li>
													<li class="value"><a
														href="/myshop/order/detail.html?order_id=20221229-0003219&amp;page=1&amp;history_start_date=2022-09-30&amp;history_end_date=2022-12-29"
														class="line">20221229-0003219</a></li>
													<li class="sub-title">결제금액</li>
													<li class="value only-pc">${List.pro_price }</li>
												</ul>
											</li>
											<li class="last only-pc">

											</li>
										</ul>
									</div>

									<div class="item-prod">
										<div class="block">
											<div class="thumb">
												<a
													href="/product/detail.html?product_no=3363&amp;cate_no=26"><img
													src="${List.pro_loc }"
													onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';"
													alt=""></a>
											</div>
											<div class="item-desc">
												<div class="detail">
													<div class="name">
														<a
															href="/product/detail.html?product_no=3363&amp;cate_no=26">${List.pro_name }</a>
													</div>
													<div class="option ">[옵션: ${List.pro_opt_size }]</div>
													<div class="quantity text-center">수량: ${List.order_detail_amount }</div>
													<div class="order-price text-right">${List.pro_price }</div>
													<div class="btn-block only-mobile">
														<ul>
															<li class=""><a class="btn btn-sm btn-gray btn-pd16"
																href="#none"
																onclick="OrderHistory.orderCancel('20221229-0003219')"><span>주문취소</span></a>
															</li>
															<li class="displaynone"><a
																class="btn btn-sm btn-gray btn-pd16"
																href="/myshop/order/cancel.html?order_id=20221229-0003219"><span>취소신청</span></a>
															</li>
															<li class="displaynone"><a
																class="btn btn-sm btn-gray btn-pd16"
																href="/myshop/order/exchange.html?order_id=20221229-0003219"><span>교환신청</span></a>
															</li>
															<li class="displaynone"><a
																class="btn btn-sm btn-gray btn-pd16"
																href="/myshop/order/return.html?order_id=20221229-0003219"><span>반품신청</span></a>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
										<div class="status">
											입금전
											<p class="displaynone">
												<a href="#none" class="line" onclick="">[]</a>
											</p>
											<button type="button"
												class="btn btn-sm btn-gray btn-pd16 displaynone"
												onclick="OrderHistory.withdraw('C','20221229-0003219|3363|000B|495111','F', 'F', 'F', '' , '')">
												<span>취소철회</span>
											</button>
											<button type="button"
												class="btn btn-sm btn-gray btn-pd16 displaynone"
												onclick="OrderHistory.withdraw('E','20221229-0003219|3363|000B|495111','F', 'F', 'F', '' , '')">
												<span>교환철회</span>
											</button>
											<button type="button"
												class="btn btn-sm btn-gray btn-pd16 displaynone"
												onclick="OrderHistory.withdraw('R','20221229-0003219|3363|000B|495111','F', 'F', 'F', '' , '')">
												<span>반품철회</span>
											</button>
											<button type="button"
												class="btn btn-sm btn-gray btn-pd16 displaynone"
												onclick="OrderHistory.getDetailInfo('?product_no=3363&amp;cate_no=26&amp;order_id=20221229-0003219&amp;ord_item_code=20221229-0003219-01');">
												<span>상세정보</span>
											</button>
										</div>
									</div>
								</div>

							</div>
							</c:forEach>
							
							<div class="empty-block mt40 displaynone">
								<div class="empty-icon-block line">
									<div class="inner">
										<p>주문 내역이 없습니다.</p>
									</div>
								</div>
							</div>
							<div
								class="xans-element- xans-myshop xans-myshop-orderhistorypaging paginate">
								<a
									href="?page=1&amp;history_start_date=2022-09-30&amp;history_end_date=2022-12-29&amp;past_year=2021">&lt;&lt;</a>
								<a
									href="?page=1&amp;history_start_date=2022-09-30&amp;history_end_date=2022-12-29&amp;past_year=2021">&lt;</a>
								<a
									href="?page=1&amp;history_start_date=2022-09-30&amp;history_end_date=2022-12-29&amp;past_year=2021"
									class="this xans-record-">1</a> <a
									href="?page=1&amp;history_start_date=2022-09-30&amp;history_end_date=2022-12-29&amp;past_year=2021">&gt;</a>
								<a
									href="?page=1&amp;history_start_date=2022-09-30&amp;history_end_date=2022-12-29&amp;past_year=2021">&gt;&gt;</a>
							</div>
						</div>
						</section>
						 -->

					</div>
					<!-- // contents-block -->
				</div>
				<!-- // myshop-layout -->
			</div>
		</div>
	</div>
</div>

	<form action="/resell/register" method="get" class="reg_product">
		<input type="hidden" name="pro_opt_id" class="send_pro_opt_id"> 
		<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" />
	</form>

<script>
function regProduct(pro_opt_id) {
	
	console.log("상품 id: " + pro_opt_id);
	 
	 $(".send_pro_opt_id").val(pro_opt_id);
	 $(".reg_product").submit();
}

</script>

<script>
	const $nav = document.querySelector('#tab-button-nav')
	console.log("$nav의 값은 무엇이지? " + $nav);
	const $sections = document.querySelectorAll('.tab-section');
	
	 $nav.addEventListener('click', (e) => {
	      if (!e.target.classList.contains('tab-button')) {
	    	  console.log("return!!");
	        return;
	      }
	      
	      const selectedTab = e.target.dataset.tabSection;
	      console.log(selectedTab);
	      
	      $sections.forEach(($section) => {
	          if ($section.id === selectedTab) {
	            $section.removeAttribute('hidden');
	          } else {
	            $section.setAttribute('hidden', true);
	          }
	        });
	      });

</script>


<%@ include file="../include/footer.jsp"%>