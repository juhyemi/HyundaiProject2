<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

<link rel="stylesheet" type="text/css" href="../resources/css/main1.css">
<link rel="stylesheet" type="text/css" href="../resources/css/main2.css">
<link rel="stylesheet" type="text/css" href="../resources/css/order/ordercomplete.css">
<link rel="stylesheet" type="text/css" href="/js/slick/slick.css" crossorigin="anonymous">

</head>
 <%@ include file="../include/header2.jsp"%>

<body>
  <div id="gnb">
     <div class="dimmer"></div>
    <div class="menu-block depth1">
      <ul>
        <li><a href="/product/list.html?cate_no=45"><span>New In</span></a></li>
        <!-- <li><a href="/product/list.html?cate_no=66"><span style="color: red;">Black Friday</span></a></li> -->
        <li class="is-sub" cate-no="Shop"><a href="javascript:void(0);"><span>Shop</span><i></i></a></li>
        <li><a href="/project.html?cate_no=81"><span>Project</span></a></li>
        <li class="is-sub" cate-no="Collections"><a href="javascript:void(0);"><span>Collections</span><i></i></a></li>
        <li class="is-sub" cate-no="Search"><a href="javascript:void(0);"><span>Search</span><i></i></a></li>
        <li class="space">
        </li>
        <li class=""><a href="/about/index.html"><span>About</span></a></li>
        <li class=""><a href="/cscenter/index.html"><span>Help</span></a></li>
        <li class=" only-mobile"><a href="javascript:languageOpen();"><span>Language</span></a></li>
        <li class=""><a href="/myshop/index.html"><span>My page</span></a>
        </li>
        <li class=""><a href="/exec/front/Member/logout/"><span>Logout</span></a>
        </li>
      </ul><!--
              판다씨 배너 매니저
              그룹명 : 모바일 GNB 배너
          -->
      <div class="banner-block only-mobile" pandassi-banner-group="ready" pandassi-banner-group-code="54b363be92b596be859c">

        <div pandassi-banner="ready" =""=""><!-- 배너 반복시작 // -->
          <a href="/collection-view.html?product_no=3360&amp;cate_no=68&amp;display_group=1" target="_self"><img src="https://matinkim.com/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/c8e6c86d8dfb95c61f831eeefc9ad3cd.jpg"></a>
        </div><!-- // 반복종료 -->

        <!-- // 반복종료 -->

      </div><!-- // 그룹종료 -->
    </div>

    <div class="menu-block depth2" cate-no="Shop">
      <div class="sub">
        <ul>
          <li><a href="/product/list.html?cate_no=86"><span>Must Have</span></a></li>
          <li><a href="/product/list.html?cate_no=66"><span style="color: red;">Season Off</span></a></li>
          <!-- <li><a href="/product/list.html?cate_no=102"><span style="color: red;">Sale</span></a></li> -->
          <!-- <li><a href="/product/list.html?cate_no=85"><span>Essential</span></a></li> -->
          <li><a href="/product/list.html?cate_no=92"><span style="color: #03C95B;">Underwear</span></a></li>
          <li><a href="/product/list.html?cate_no=26"><span>Outerwears</span></a></li>
          <li><a href="/product/list.html?cate_no=27"><span>Tops</span></a></li>
          <li><a href="/product/list.html?cate_no=28"><span>Bottoms</span></a></li>
          <li><a href="/product/list.html?cate_no=42"><span>Dresses</span></a></li>
          <li><a href="/product/list.html?cate_no=70"><span>Bags</span></a></li>
          <li><a href="/product/list.html?cate_no=64"><span>Shoes</span></a></li>
          <li><a href="/product/list.html?cate_no=44"><span>Accessories</span></a></li>
          <!-- <li><a href="/product/list.html?cate_no=66"><span>Sale</span></a></li> -->
        </ul>
        <div class="sub-cate-banner" pandassi-banner-group="disable" pandassi-banner-group-code="dd121b15d57874a6eef1">
          <div pandassi-banner=""><a href="_link_" target="_target_">_imgTag_</a></div>
          <div pandassi-banner=""><a href="_link_" target="_target_">_imgTag_</a></div>
        </div>
      </div>
    </div>

    <div class="menu-block depth2" cate-no="Collections">
      <div class="sub">
        <ul class="js-collection-dept2">
          <li class="is-sub" id="mo_dept2_90" cate-no="Collections_90"><a href="javascript:void(0);"><span>22’ Fall
                Winter</span><i></i></a></li>
          <li class="is-sub" id="mo_dept2_89" cate-no="Collections_89"><a href="javascript:void(0);"><span>22’ Spring
                Summer</span><i></i></a></li>
          <li class="is-sub" id="mo_dept2_88" cate-no="Collections_88"><a href="javascript:void(0);"><span>21’ Fall
                Winter</span><i></i></a></li>
        </ul>
        <div class="sub-cate-banner" pandassi-banner-group="ready" pandassi-banner-group-code="bae699bc046331b5b96c">
          <div pandassi-banner="ready" =""=""><a href="/collection-view.html?product_no=3360&amp;cate_no=68&amp;display_group=1" target="_self"><img src="https://matinkim.com/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/e2e972ba48ad7e420c3565d206247387.png"></a>
          </div>

        </div>
      </div>
    </div>

    <div class="menu-block depth2 search" cate-no="Search">
      <div class="sub">
        <div class="block">
          <form id="searchForm" name="" action="/product/search.html" method="get" target="_self" enctype="multipart/form-data">
            <input id="view_type" name="view_type" value="" type="hidden">
            <input id="supplier_code" name="supplier_code" value="" type="hidden">
            <div class="xans-element- xans-search xans-search-form "><!--
                          $product_page=/product/detail.html
                          $category_page=/product/list.html
                      -->
              <fieldset>
                <span class="displaynone"><select id="category_no" name="category_no" fw-filter="" fw-label="" fw-msg="">
                    <option value="0" selected="selected">상품분류 선택</option>
                    <option value="87" selected="selected">Shop</option>
                    <option value="45">New In</option>
                    <option value="66">Season Off</option>
                    <option value="26">Outerwears</option>
                    <option value="27">Tops</option>
                    <option value="28">Bottoms</option>
                    <option value="42">Dresses</option>
                    <option value="70">Bags</option>
                    <option value="44">Accessories</option>
                    <option value="91">Beauty</option>
                    <option value="49">SALE (change,refund X)</option>
                  </select></span>
                <div class="form-block">
                  <label class="ePlaceholderEach required" title="Search">
                    <p class="form-title">Search</p>
                    <div class="flex">
                      <input id="keyword" name="keyword" fw-filter="" fw-label="상품명/제조사" fw-msg="" class="inputTypeText" placeholder="Search" size="15" value="" type="text"> <button type="button" onclick=""><span>ok</span></button>
                    </div>
                  </label>
                </div>
              </fieldset>
              <script>
                // 검색 허용 카테고리
                document.addEventListener("DOMContentLoaded", function () {
                  var $ = window.jQuery1_12_4;
                  $('#category_no option[value=87]').attr('selected', 'selected');
                });
              </script>
            </div>
          </form>
        </div>
      </div>
    </div>

    <div class="menu-block depth3" id="mo_dept3_89" cate-no="Collections_89">
      <div class="sub">
        <ul>
          <li class="xans-record-"><a href="/collection-view.html?product_no=2917&amp;cate_no=89&amp;display_group=1"><span><span style="font-size:12px;color:#555555;">2022 Hot Summer</span></span></a></li>
          <li class="xans-record-"><a href="/collection-view.html?product_no=2916&amp;cate_no=89&amp;display_group=1"><span><span style="font-size:12px;color:#555555;">2022 S/S 3rd</span></span></a></li>
          <li class="xans-record-"><a href="/collection-view.html?product_no=2759&amp;cate_no=89&amp;display_group=1"><span><span style="font-size:12px;color:#555555;">2022 S/S 2nd</span></span></a></li>
          <li class="xans-record-"><a href="/collection-view.html?product_no=3011&amp;cate_no=89&amp;display_group=1"><span><span style="font-size:12px;color:#555555;">2022 S/S Essential</span></span></a></li>
          <li class="xans-record-"><a href="/collection-view.html?product_no=2564&amp;cate_no=89&amp;display_group=1"><span><span style="font-size:12px;color:#555555;">2022 S/S 1st</span></span></a></li>
        </ul>
      </div>
    </div>
    <div class="menu-block depth3" id="mo_dept3_90" cate-no="Collections_90">
      <div class="sub">
        <ul>
          <li class="xans-record-"><a href="/collection-view.html?product_no=3360&amp;cate_no=90&amp;display_group=1"><span><span style="font-size:12px;color:#555555;">2022 Winter</span></span></a></li>
          <li class="xans-record-"><a href="/collection-view.html?product_no=3235&amp;cate_no=90&amp;display_group=1"><span><span style="font-size:12px;color:#555555;">2022 Pre Fall</span></span></a></li>
        </ul>
      </div>
    </div>
    <div class="menu-block depth3" id="mo_dept3_88" cate-no="Collections_88">
      <div class="sub">
        <ul>
          <li class="xans-record-"><a href="/collection-view.html?product_no=2465&amp;cate_no=88&amp;display_group=1"><span><span style="font-size:12px;color:#555555;">2021 F/W 3rd</span></span></a></li>
          <li class="xans-record-"><a href="/collection-view.html?product_no=2466&amp;cate_no=88&amp;display_group=1"><span><span style="font-size:12px;color:#555555;">MATIN KIM X ASICS</span></span></a></li>
          <li class="xans-record-"><a href="/collection-view.html?product_no=2488&amp;cate_no=88&amp;display_group=1"><span><span style="font-size:12px;color:#555555;">2021 F/W 2nd</span></span></a></li>
          <li class="xans-record-"><a href="/collection-view.html?product_no=2489&amp;cate_no=88&amp;display_group=1"><span><span style="font-size:12px;color:#555555;">2021 F/W 1st</span></span></a></li>
        </ul>
      </div>
    </div>
  </div>
  <div class="gnb-dimmer"></div>

  <!-- // gnb -->





  <div id="wrap">
    <div id="container">
      <div id="contents">



        <form id="frm_order_result" name="frm_order_result" action="" method="post" target="_self" enctype="multipart/form-data">
          <input id="order_id" name="order_id" value="20221228-0012822" type="hidden">
          <input id="bank_url_hidden" name="bank_url_hidden" value="www.ibk.co.kr" type="hidden">
          <div class="xans-element- xans-order xans-order-result order-result-block xans-record-">
            <div class="header">
              <h2>Thank you</h2>
              <p>주문해 주셔서 고맙습니다.</p>
            </div>
            <div class="msg-block">
              <div class="title-block">
                <h2>고객님의 주문이 완료되었습니다.</h2>
              </div>
              <p class="desc-block">주문내역 및 배송에 관한 안내는 <a href="/myshop/order/list.html" class="line">주문내역</a>을 통하여
                가능합니다.</p>
            </div>
            <div class="detail-block">
              <ul>
                <li>
                  <label>주문번호</label>
                  <span>20221228-0012822</span>
                </li>
                <li>
                  <label>결제금액</label>
                  <span>143,000</span>
                </li>
              </ul>
            </div>
            <div class="btn-group">
              <a href="/myshop/order/list.html" class="btn btn-lg btn-dark"><span>주문내역 조회</span></a>
              <a href="/" class="btn btn-lg btn-white"><span>쇼핑계속하기</span></a>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</body></html>
<%@ include file="../include/footer.jsp"%>