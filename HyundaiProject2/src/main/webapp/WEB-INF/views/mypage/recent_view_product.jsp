<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

<div id="wrap">
	<div id="container">
		<div id="contents">


			<div class="xans-element- xans-layout xans-layout-logincheck ">
				<!--
      $url = /member/login.html
  -->
			</div>

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
							<li class="js-order"><a href="/myshop/order/list.html">주문내역</a></li>


							<li class="js-board"><a
								href="/board/consult/list.html?board_no=9">1:1 문의</a></li>
							<li class="js-recent active"><a
								href="/product/recent_view_product.html">최근 본 상품</a></li>
							<li class="js-modify"><a href="/member/modify.html">내 계정</a></li>
							<li><a href="/exec/front/Member/logout/">로그아웃</a></li>
						</ul>
					</div>

					<!-- contents-block -->
					<div class="contents-block">

						<div class="title-block">
							<h2>최근 본 상품</h2>
						</div>

						<div
							class="xans-element- xans-product xans-product-recentlist recent-prod-wrap xans-record-">
							<!--
                    $count = 10
                -->
							<div
								class="xans-element- xans-product xans-product-listitem items-block">
								<div class="item-prod xans-record-">
									<div class="block">
										<div class="thumb">
											<a
												href="/product/matin-kim-logo-coating-jumper-in-navy/3340/category/86/display/1/"><img
												src="//matinkim.com/web/product/medium/202210/466edfbbba61fc0e85a3c7f265a9b7a5.jpg"
												alt=""></a>
										</div>
										<div class="item-desc">
											<div class="detail">
												<div class="name">
													<a
														href="/product/matin-kim-logo-coating-jumper-in-navy/3340/category/86/display/1/">MATIN
														KIM LOGO COATING JUMPER IN NAVY</a>
												</div>
												<div class="price">
													143,000 <s class="displaynone"></s>
												</div>
											</div>
											<div class="only-pc js-btn-pc">
												<div class="btn-group-start mt24">
													<a href="javascript:void(0);"
														onclick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(3340,  86, '', '')"
														class="btn btn-sm btn-dark btn-pd16 "><span>Buy
															It Now</span></a> <a href="javascript:void(0);"
														onclick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(3340,  86, '', '')"
														class="btn btn-sm btn-gray btn-pd16 "><span>Add
															to Bag</span></a> <a href="javascript:void(0);"
														class="btn btn-sm btn-gray btn-pd16 btn_recent_del"
														rel="3340"><span>remove</span></a>
												</div>
											</div>
										</div>
									</div>
									<div class="only-mobile js-btn-mobile">
										<div class="btn-block mt16"></div>
									</div>
								</div>
								<div class="item-prod xans-record-">
									<div class="block">
										<div class="thumb">
											<a
												href="/product/matin-kim-logo-coating-jumper-in-beige/3341/category/86/display/1/"><img
												src="//matinkim.com/web/product/medium/202210/d6bbc37ef627c47f742064142bdf9d4c.jpg"
												alt=""></a>
										</div>
										<div class="item-desc">
											<div class="detail">
												<div class="name">
													<a
														href="/product/matin-kim-logo-coating-jumper-in-beige/3341/category/86/display/1/">MATIN
														KIM LOGO COATING JUMPER IN BEIGE</a>
												</div>
												<div class="price">
													143,000 <s class="displaynone"></s>
												</div>
											</div>
											<div class="only-pc js-btn-pc">
												<div class="btn-group-start mt24">
													<a href="javascript:void(0);"
														onclick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(3341,  86, '', '')"
														class="btn btn-sm btn-dark btn-pd16 "><span>Buy
															It Now</span></a> <a href="javascript:void(0);"
														onclick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(3341,  86, '', '')"
														class="btn btn-sm btn-gray btn-pd16 "><span>Add
															to Bag</span></a> <a href="javascript:void(0);"
														class="btn btn-sm btn-gray btn-pd16 btn_recent_del"
														rel="3341"><span>remove</span></a>
												</div>
											</div>
										</div>
									</div>
									<div class="only-mobile js-btn-mobile">
										<div class="btn-block mt16"></div>
									</div>
								</div>
							</div>
							<div class="empty-icon-block line-bottom displaynone">
								<div class="inner">
									<p>최근본 상품 내역이 없습니다.</p>
								</div>
							</div>
							<div
								class="xans-element- xans-product xans-product-recentlistpaging paginate">
								<a href="#none">&lt;&lt;</a> <a href="#none">&lt;</a> <a
									href="?page=1" class="this xans-record-">1</a> <a href="#none">&gt;</a>
								<a href="#none">&gt;&gt;</a>
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