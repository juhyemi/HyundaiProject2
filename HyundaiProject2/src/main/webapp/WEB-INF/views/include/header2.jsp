<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
$(document).ready(function(){
   
   
   
    $("#btn_keyword").click(function (){
     var keyword = $('#keyword').val();
     $('input[name=keyword]').attr('value',keyword);
     if(keyword == '' || keyword == null){
        alert("검색어를 입력해주세요");
        
     }else{
       
        $("#searchForm").submit();
     }
   
       
    });
   
});
 </script>
<form id="searchForm" action="/product/search" method="post">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	<input type="hidden" name="keyword" value=$(#keyword).val() />
</form>
<!-- header -->
<div class="header-wrap">
	<header data-bordered="false">
		<div class="menu">
			<div class="js-gnb-menu menu-wrap">
				<div class="hamburger">
					<div class="haxkug"></div>
					<div class="haxkug"></div>
					<div class="haxkug"></div>
				</div>
			</div>
			<!-- <span>MENU</span> -->
			<div class="link">
				<a href="/">MENU</a>
			</div>
		</div>

		<a href="/main" class="logo">
			<span>Magie du Matin</span>
		</a>

		<ul class="util">
			<li>
				<div class="util-search-block">
					<form id="searchBarForm" name="" action="/product/search.html" method="get" target="_self" enctype="multipart/form-data">
						<input id="banner_action" name="banner_action" value="" type="hidden">
						<div class="xans-element- xans-layout xans-layout-searchheader ">
							<!--
                            $product_page=/product/detail.html
                            $category_page=/product/list.html
                        -->
							<fieldset>
								<span class="displaynone"></span>
								<div class="form-block">
									<div class="flex">
										<input id="keyword" name="keyword" fw-filter="" fw-label="검색어" fw-msg="" class="inputTypeText" placeholder="" onmousedown="SEARCH_BANNER.clickSearchForm(this)" value="" type="text">
										<button type="button" onclick="SEARCH_BANNER.submitSearchBanner(this); return false;">
											<span>search</span>
										</button>
									</div>
								</div>
							</fieldset>
							<script>
                            // 검색 허용 카테고리
                            document.addEventListener("DOMContentLoaded", function () {
                                var $ = window.jQuery1_12_4;
                                $('.util-search-block select[name=category_no] option[value=87]').attr('selected', 'selected');
                            });
                        </script>
						</div>
					</form>
				</div>
			</li>
			<li><a href="javascript:languageOpen();" class="language">
					<span class="hidden">Language</span>
				</a></li>
			<li class="xans-element- xans-layout xans-layout-statelogoff inline-block "><a href="/mypage/index" class="myshop">
					<span class="hidden">Login</span>
				</a></li>
			<li class="xans-element- xans-layout xans-layout-statelogoff ">
				<!-- 로그인이 안되어 있을 때 --> <sec:authorize access="isAnonymous()">
					<a href="/member/login" class="basket">
						<span class="hidden">Bag</span><em><span class="EC-Layout-Basket-count">0</span></em>
					</a>
				</sec:authorize> <!-- 로그인이 되어있을 때 --> <sec:authorize access="isAuthenticated()">
					<a href="javascript:basketOpen();" class="basket">
						<span class="hidden">Bag</span><em><span class="EC-Layout-Basket-count">0</span></em>
					</a>
				</sec:authorize>
			</li>
		</ul>
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
			<li class=""><a href="/talks/tlist">
					<span>Fashion Talks</span>
				</a></li>
			<li class=" only-mobile"><a href="javascript:languageOpen();">
					<span>Language</span>
				</a></li>

			<li class="xans-element- xans-layout xans-layout-statelogoff ">
				<!-- 로그인이 안되어 있을 경우 --> <sec:authorize access="isAnonymous()">
					<a href="/member/login">
						<span>Login</span>
					</a>
				</sec:authorize> <!-- 로그인이 되어있을 경우 --> <sec:authorize access="isAuthenticated()">
					<a href="#" onclick="logoutSubmit();">
						<span>Logout</span>
					</a>
					<form id="logoutFrm" action="/member/logout" method="post">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					</form>
				</sec:authorize>
			</li>
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
			<div class="block gnb-search-block">
				<form id="searchBarForm" name="" action="/product/search.html" method="get" target="_self" enctype="multipart/form-data">
					<input id="banner_action" name="banner_action" value="" type="hidden">
					<div class="xans-element- xans-layout xans-layout-searchheader ">
						<fieldset>
							<span class="displaynone"></span>
							<div class="form-block">
								<label class="ePlaceholderEach required" title="Search">
									<p class="form-title">Search</p>
									<div class="flex">
										<input id="keyword" name="keyword" class="inputTypeText" placeholder="Search" size="15" value="" type="text">
										<button id="btn_keyword" type="button" onclick="/product/search">
											<span>ok</span>
						</fieldset>
						<script>
                        // 검색 허용 카테고리
                        document.addEventListener("DOMContentLoaded", function () {
                            var $ = window.jQuery1_12_4;
                            $('.gnb-search-block select[name=category_no] option[value=87]').attr('selected', 'selected');

                            // beauty_search
                            // $('#searchForm').attr('action','/product/beauty_search.html');
                        });
                    </script>
					</div>
				</form>
			</div>
		</div>
	</div>

</div>
<div class="gnb-dimmer"></div>
<!-- // gnb -->

<!-- 장바구니 -->
  <div class="basket-block">
      <div class="basket-wrap-iframe">
         <iframe class="basket-iframe" id="basketIframe" name="basketIframe"
            frameborder="0" scrolling="no" src='/cart/cartList'></iframe>
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