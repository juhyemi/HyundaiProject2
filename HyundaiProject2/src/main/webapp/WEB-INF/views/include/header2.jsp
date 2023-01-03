<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- header -->
<header data-bordered="true">
	<div class="js-gnb-menu menu">
		<div class="menu-wrap">
			<div class="hamburger">
				<div class="haxkug"></div>
				<div class="haxkug"></div>
				<div class="haxkug"></div>
			</div>
		</div>
		<span>MENU</span>
	</div>
	<img src="${contextPath}/resources/img/common/logo-chysk5.png" />

	<a href="/" class="logo">
		<span>Matin Kim</span>
	</a>

	<ul class="util">
		<li><a href="javascript:languageOpen();" class="language">
				<span class="hidden">Language</span>
			</a></li>
		<li class="xans-element- xans-layout xans-layout-statelogoff inline-block "><a href="/mypage/index" class="myshop">
				<span class="hidden">Login</span>
			</a></li>
		<li class="xans-element- xans-layout xans-layout-statelogoff ">
			<!-- 로그인이 안되어 있을 때 -->
			<sec:authorize access="isAnonymous()">
				<a href="/member/login" class="basket">
					<span class="hidden">Bag</span><em><span class="EC-Layout-Basket-count">0</span></em>
				</a>
			</sec:authorize>
			<!-- 로그인이 되어있을 때 -->
			<sec:authorize access="isAuthenticated()">
				<a href="javascript:basketOpen();" class="basket">
					<span class="hidden">Bag</span><em><span class="EC-Layout-Basket-count">0</span></em>
				</a>
			</sec:authorize>
		</li>
	</ul>
</header>
<!-- 장바구니 -->
  <div class="basket-block">
      <div class="basket-wrap-iframe">
         <iframe class="basket-iframe" id="basketIframe" name="basketIframe"
            frameborder="0" scrolling="no" src='/cart/cartList'></iframe>
         <!-- <div class="basket-wrap-ajax">

            <div class="basket-wrap"></div>
        </div> -->
	</div>
</div>


   <!-- // header -->
   <!-- gnb -->
   <div id="gnb">
      <!-- <div class="dimmer"></div> -->
      <div class="menu-block depth1">
         <ul>
            <li><a href="/product/list.html?cate_no=45"><span>New
                     In</span></a></li>
            <!-- <li><a href="/product/list.html?cate_no=66"><span style="color: red;">Black Friday</span></a></li> -->
            <li class="is-sub" cate-no="Shop"><a href="javascript:void(0);"><span>Shop</span><i></i></a></li>
            <li class="is-sub" cate-no="Search"><a
               href="javascript:void(0);"><span>Search</span><i></i></a></li>
            <li class="space"></li>
            <li class=""><a href="/resell"><span>Resell</span></a></li>
            <li class=""><a href="/talks/tlist"><span>Fashion Talks</span></a></li>
            <li class=" only-mobile"><a href="javascript:languageOpen();"><span>Language</span></a></li>
           <li class="xans-element- xans-layout xans-layout-statelogoff ">
				<!-- 로그인이 안되어 있을 경우 --> 
				<sec:authorize access="isAnonymous()">
					<a href="/member/login">
						<span>Login</span>
					</a>
				</sec:authorize> 
				<!-- 로그인이 되어있을 경우 --> 
				<sec:authorize access="isAuthenticated()">
					<a href="#" onclick="logoutSubmit();">
						<span>Logout</span>
					</a>
					<form id="logoutFrm" action="/member/logout" method="post">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					</form>
				</sec:authorize>
			</li>
         </ul>


</div>
      <div class="menu-block depth2" cate-no="Shop">
         <div class="sub">
            <ul>

               <li><a href="/product/list/Outerwears"><span>Outerwears</span></a></li>
               <li><a href="/product/list/Tops"><span>Tops</span></a></li>
               <li><a href="/product/list/Bottoms"><span>Bottoms</span></a></li>
               <li><a href="/product/list/Accessories"><span>Accessories</span></a></li>
               <!-- <li><a href="/product/list.html?cate_no=66"><span>Sale</span></a></li> -->
            </ul>
            <div class="sub-cate-banner" pandassi-banner-group="disable"
               pandassi-banner-group-code="dd121b15d57874a6eef1">
               
            </div>
         </div>
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
				<!-- <li><a href="/product/list.html?cate_no=66"><span>Sale</span></a></li> -->
			</ul>
			<div class="sub-cate-banner" pandassi-banner-group="disable" pandassi-banner-group-code="dd121b15d57874a6eef1"></div>
		</div>
	</div>

	<div class="menu-block depth2 search" cate-no="Search">
		<div class="sub">
			<div class="block">
				<form id="searchForm" name="" action="/product/search.html" method="get" target="_self" enctype="multipart/form-data">
					<input id="view_type" name="view_type" value="" type="hidden">
					<input id="supplier_code" name="supplier_code" value="" type="hidden">
					<div class="xans-element- xans-search xans-search-form ">
						<!--
                      $product_page=/product/detail.html
                      $category_page=/product/list.html
                  -->
						<fieldset>
							<span class="displaynone"><select id="category_no" name="category_no" fw-filter="" fw-label="" fw-msg="">
									<option value="0" selected="selected">상품분류 선택</option>
									<option value="87" selected="selected">Shop</option>
									<option value="45">New In</option>
									<option value="26">Outerwears</option>
									<option value="27">Tops</option>
									<option value="28">Bottoms</option>
									<option value="44">Accessories</option>
									<option value="49">SALE (change,refund X)</option>
							</select></span>
							<div class="form-block">
								<label class="ePlaceholderEach required" title="Search">
									<p class="form-title">Search</p>
									<div class="flex">
										<input id="keyword" name="keyword" fw-filter="" fw-label="상품명/제조사" fw-msg="" class="inputTypeText" placeholder="Search" size="15" value="" type="text">
										<button type="button" onclick="">
											<span>ok</span>
										</button>
									</div>
								</label>
							</div>
						</fieldset>

					</div>
				</form>
			</div>
		</div>
	</div>

</div>
<div class="gnb-dimmer"></div>

<!-- // gnb -->