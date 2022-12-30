<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

<div id="wrap">
	<div id="container">
		<div id="contents">
			<div class="myshop-wrap">

				<div
					class="xans-element- xans-myshop xans-myshop-asyncbenefit header ">
					<h2>
						Hello, <span><span class="xans-member-var-name">신수진</span></span>
					</h2>
				</div>

				<!-- myshop-layout -->
				<div class="myshop-layout">
					<!-- menu-block -->
					<div class="menu-block">
						<ul>
							<li class="js-order active"><a
								href="/myshop/order/list.html">주문내역</a></li>




							<li class="js-board"><a
								href="/board/consult/list.html?board_no=9">1:1 문의</a></li>
							<li class="js-recent"><a
								href="/product/recent_view_product.html">최근 본 상품</a></li>
							<li class="js-modify"><a href="/member/modify.html">내 계정</a></li>
							<li><a href="/exec/front/Member/logout/">로그아웃</a></li>
						</ul>
					</div>


					<!-- contents-block -->
					<div class="contents-block">

						<div class="title-block">
							<h2>주문내역</h2>
						</div>

						<div
							class="xans-element- xans-myshop xans-myshop-orderhistorytab order-tab ">
							<ul class="menu">
								<li class="tab_class selected"><a
									href="/myshop/order/list.html?history_start_date=2022-09-30&amp;history_end_date=2022-12-29&amp;past_year=2021">주문내역조회
										<sup>(<span id="xans_myshop_total_orders">1</span>)
									</sup>
								</a></li>
								<li class="tab_class_cs"><a
									href="/myshop/order/list.html?mode=cs&amp;history_start_date=2022-09-30&amp;history_end_date=2022-12-29&amp;past_year=2021">취소/반품/교환
										내역 <sup>(<span id="xans_myshop_total_orders_cs">0</span>)
									</sup>
								</a></li>
								<li class="only-pc tab_class_past"><a
									href="/myshop/order/list_past.html?history_start_date=2022-09-30&amp;history_end_date=2022-12-29&amp;past_year=2021">과거주문내역
										<sup>(<span id="xans_myshop_total_orders_past">0</span>)
									</sup>
								</a></li>
								<li class="only-pc tab_class_old displaynone"><a
									href="/myshop/order/list_old.html?mode=old&amp;history_start_date=2022-09-30&amp;history_end_date=2022-12-29&amp;past_year=2021">이전
										주문내역 <sup>(<span id="xans_myshop_total_orders_old">0</span>)
									</sup>
								</a></li>
							</ul>
						</div>

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
						<div
							class="xans-element- xans-myshop xans-myshop-orderhistorylistitem order-list">
							<!--
                        $login_url = /member/login.html
                        $count = 10
                    -->
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
													<li class="value only-pc">198,000</li>
												</ul>
											</li>
											<li class="last only-pc">
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
											</li>
										</ul>
									</div>

									<div class="item-prod">
										<div class="block">
											<div class="thumb">
												<a
													href="/product/detail.html?product_no=3363&amp;cate_no=26"><img
													src="//matinkim.com/web/product/medium/202210/cfffd3ceb36503e835b741758741e29d.jpg"
													onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';"
													alt=""></a>
											</div>
											<div class="item-desc">
												<div class="detail">
													<div class="name">
														<a
															href="/product/detail.html?product_no=3363&amp;cate_no=26">MATIN
															PADDING VEST JUMPER IN BLACK</a>
													</div>
													<div class="option ">[옵션: S]</div>
													<div class="quantity text-center">수량: 1</div>
													<div class="order-price text-right">198,000</div>
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

					</div>
					<!-- // contents-block -->
				</div>
				<!-- // myshop-layout -->
			</div>
		</div>
	</div>
</div>

<%@ include file="../include/footer.jsp"%>