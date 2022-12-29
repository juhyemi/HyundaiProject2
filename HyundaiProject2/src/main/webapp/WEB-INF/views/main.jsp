<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@ include file="./include/header.jsp"%>

  <div id="gnb">
    <!-- <div class="dimmer"></div> -->
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
        <li class="xans-element- xans-layout xans-layout-statelogoff  only-mobile "><a
            href="javascript:login();"><span>Login</span></a>
        </li>
      </ul><!--
          판다씨 배너 매니저
          그룹명 : 모바일 GNB 배너
      -->
      <div class="banner-block only-mobile" pandassi-banner-group="ready"
        pandassi-banner-group-code="54b363be92b596be859c">

        <div pandassi-banner="ready"=""=""><!-- 배너 반복시작 // -->
          <a href="/collection-view.html?product_no=3360&amp;cate_no=68&amp;display_group=1" target="_self"><img
              src="https://matinkim.com/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/c8e6c86d8dfb95c61f831eeefc9ad3cd.jpg"></a>
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
          <div pandassi-banner="ready"=""=""><a
              href="/collection-view.html?product_no=3360&amp;cate_no=68&amp;display_group=1" target="_self"><img
                src="https://matinkim.com/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/e2e972ba48ad7e420c3565d206247387.png"></a>
          </div>

        </div>
      </div>
    </div>

    <div class="menu-block depth2 search" cate-no="Search">
      <div class="sub">
        <div class="block">
          <form id="searchForm" name="" action="/product/search.html" method="get" target="_self"
            enctype="multipart/form-data">
            <input id="view_type" name="view_type" value="" type="hidden">
            <input id="supplier_code" name="supplier_code" value="" type="hidden">
            <div class="xans-element- xans-search xans-search-form "><!--
                      $product_page=/product/detail.html
                      $category_page=/product/list.html
                  -->
              <fieldset>
                <span class="displaynone"><select id="category_no" name="category_no" fw-filter="" fw-label=""
                    fw-msg="">
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
                      <input id="keyword" name="keyword" fw-filter="" fw-label="상품명/제조사" fw-msg="" class="inputTypeText"
                        placeholder="Search" size="15" value="" type="text"> <button type="button"
                        onclick=""><span>ok</span></button>
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
          <li class="xans-record-"><a
              href="/collection-view.html?product_no=2917&amp;cate_no=89&amp;display_group=1"><span><span
                  style="font-size:12px;color:#555555;">2022 Hot Summer</span></span></a></li>
          <li class="xans-record-"><a
              href="/collection-view.html?product_no=2916&amp;cate_no=89&amp;display_group=1"><span><span
                  style="font-size:12px;color:#555555;">2022 S/S 3rd</span></span></a></li>
          <li class="xans-record-"><a
              href="/collection-view.html?product_no=2759&amp;cate_no=89&amp;display_group=1"><span><span
                  style="font-size:12px;color:#555555;">2022 S/S 2nd</span></span></a></li>
          <li class="xans-record-"><a
              href="/collection-view.html?product_no=3011&amp;cate_no=89&amp;display_group=1"><span><span
                  style="font-size:12px;color:#555555;">2022 S/S Essential</span></span></a></li>
          <li class="xans-record-"><a
              href="/collection-view.html?product_no=2564&amp;cate_no=89&amp;display_group=1"><span><span
                  style="font-size:12px;color:#555555;">2022 S/S 1st</span></span></a></li>
        </ul>
      </div>
    </div>
    <div class="menu-block depth3" id="mo_dept3_88" cate-no="Collections_88">
      <div class="sub">
        <ul>
          <li class="xans-record-"><a
              href="/collection-view.html?product_no=2465&amp;cate_no=88&amp;display_group=1"><span><span
                  style="font-size:12px;color:#555555;">2021 F/W 3rd</span></span></a></li>
          <li class="xans-record-"><a
              href="/collection-view.html?product_no=2466&amp;cate_no=88&amp;display_group=1"><span><span
                  style="font-size:12px;color:#555555;">MATIN KIM X ASICS</span></span></a></li>
          <li class="xans-record-"><a
              href="/collection-view.html?product_no=2488&amp;cate_no=88&amp;display_group=1"><span><span
                  style="font-size:12px;color:#555555;">2021 F/W 2nd</span></span></a></li>
          <li class="xans-record-"><a
              href="/collection-view.html?product_no=2489&amp;cate_no=88&amp;display_group=1"><span><span
                  style="font-size:12px;color:#555555;">2021 F/W 1st</span></span></a></li>
        </ul>
      </div>
    </div>
    <div class="menu-block depth3" id="mo_dept3_90" cate-no="Collections_90">
      <div class="sub">
        <ul>
          <li class="xans-record-"><a
              href="/collection-view.html?product_no=3360&amp;cate_no=90&amp;display_group=1"><span><span
                  style="font-size:12px;color:#555555;">2022 Winter</span></span></a></li>
          <li class="xans-record-"><a
              href="/collection-view.html?product_no=3235&amp;cate_no=90&amp;display_group=1"><span><span
                  style="font-size:12px;color:#555555;">2022 Pre Fall</span></span></a></li>
        </ul>
      </div>
    </div>
  </div>
  <div class="gnb-dimmer"></div>

  <!-- // gnb -->





  <div id="wrap">
    <div id="container">
      <div id="contents">



        <link rel="stylesheet" type="text/css" href="/js/slick/slick.css" crossorigin="anonymous">
        <!-- 상단 배너 --><!-- PC -->
        <div class="top-banner-block only-pc">
          <div class="top-banner-slider only-pc slick-initialized slick-slider slick-dotted"
            pandassi-banner-group="ready" pandassi-banner-group-code="a691c77a77668ca85cfb">
            <div class="slick-list draggable">
              <div class="slick-track" style="opacity: 1; width: 1691px; transform: translate3d(0px, 0px, 0px);">
                <div class="item slick-slide slick-current slick-active" pandassi-banner="ready"=""=""
                  data-slick-index="0" aria-hidden="false" tabindex="0" role="tabpanel" id="slick-slide00"
                  aria-describedby="slick-slide-control00" style="width: 1691px;">
                  <a href="#!" target="_self" tabindex="0">
                    <div class="img" style="color: #fff;"><img
                        src="https://matinkim.com/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/ea99b23863540e0b42de09c98b9758f8.jpg">
                    </div>
                    <div class="desc" style="color: #fff;"></div>
                  </a>
                </div>
              </div>
            </div>

            <ul class="slick-dots displaynone" role="tablist">
              <li class="slick-active" role="presentation"><button type="button" role="tab" id="slick-slide-control00"
                  aria-controls="slick-slide00" aria-label="1 of 1" tabindex="0" aria-selected="true">1</button></li>
            </ul>
          </div>
        </div>
        <!-- // PC -->

        <!-- MOBILE -->
        <div class="top-banner-block only-mobile">
          <div class="top-banner-slider only-mobile" pandassi-banner-group="ready"
            pandassi-banner-group-code="a736a88576465035514c">
            <div class="item" pandassi-banner="ready"=""="">
              <a href="#!" target="_self">
                <div class="img" style="color: #fff;"><img
                    src="https://matinkim.com/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/e31ea100684e9b2b62fd918d1375888a.jpg">
                </div>
                <div class="desc" style="color: #fff;"></div>
              </a>
            </div>

          </div>
        </div>
        <!-- // MOBILE -->

        <script>
          document.addEventListener("DOMContentLoaded", function () {
            var $ = window.jQuery1_12_4;
            const mainSlideMobile = () => {
              if ($('.top-banner-slider.only-pc').hasClass('slick-initialized')) {
                $('.top-banner-slider.only-pc').slick('unslick');
              }
              if ($('.top-banner-slider.only-mobile').hasClass('slick-initialized')) {
                return;
              }

              $('.top-banner-slider.only-mobile').slick({
                autoplay: true,
                dots: true,
                pauseOnHover: false,
                arrows: false,
              });

              // 아이템 하나면 dot 숨김
              if ($('.top-banner-slider.only-mobile').find('.slick-slide').length == 1) {
                $('.top-banner-slider.only-mobile').find('.slick-dots').addClass('displaynone');
              }
            }

            const mainSlidePC = () => {
              if ($('.top-banner-slider.only-mobile').hasClass('slick-initialized')) {
                $('.top-banner-slider.only-mobile').slick('unslick');
              }
              if ($('.top-banner-slider.only-pc').hasClass('slick-initialized')) {
                return;
              }
              $('.top-banner-slider.only-pc').slick({
                autoplay: true,
                dots: true,
                pauseOnHover: false,
              });

              // 아이템 하나면 dot 숨김
              if ($('.top-banner-slider.only-pc').find('.slick-slide').length == 1) {
                $('.top-banner-slider.only-pc').find('.slick-dots').addClass('displaynone');
              }
            }

            const mainSlideCheck = () => {
              if ($('body').width() <= 767) {
                mainSlideMobile();
              } else {
                mainSlidePC();
              }
            }



            // 페이지 로딩 시 자동 실행
            mainSlideCheck();

            // 리사이즈 시
            $(function () {
              $(window).resize(function () {
                mainSlideCheck();
              });
            });
          });
        </script>
        <!-- // 상단 배너 -->

        <!-- flow-banner -->
        <div class="flow-banner-block">
          <div class="flow">
            <ul>
              <li>
              </li>
            </ul>
          </div>
        </div>
        <!-- //flow-banner -->


        <div class="only-mobile">
          <div class="video-block" style="padding: 40px var(--wrap-padding-mobile) 0 var(--wrap-padding-mobile)"
            pandassi-banner-group="ready" pandassi-banner-group-code="612efa9003bba8623348">
            <div pandassi-banner="ready"=""="">
              <div class="inner" onclick="videoPlay();" style="height: calc(100vw * 360 / 640);">
                <a href="https://player.vimeo.com/video/758939820"></a>
                <div class="background"></div>
                <iframe id="js-video-mo" data-src="https://player.vimeo.com/video/758939820" frameborder="0"
                  webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen="" allow="autoplay"></iframe>
                <div class="desc">
                  <div class="desc-inner">
                    <button type="button" class="btn-play"><span>play</span></button>
                  </div>
                </div>
              </div>
              <div class="title-block" style="margin-top: 16px; padding-bottom: 0px;">
                <h2>Matin Kim 22 Winter Collection 'M'</h2>
              </div>
            </div>
          </div>
        </div>

        <!-- section1 -->
        <!-- PC -->
        <div class="section section1 gray only-pc">
          <ul pandassi-banner-group="ready" pandassi-banner-group-code="61fdebb0156b385cdee9">
            <li pandassi-banner="ready"=""="">
              <a href="/product/list.html?cate_no=45" target="_self">
                <div class="img"><img
                    src="https://matinkim.com/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/ef1b01a598c5e9cfa9609422e28a4bee.jpg">
                </div>
                <div class="desc">
                  <h2>New In Shop</h2>
                  <p>Winter 2022</p>
                </div>
              </a>
            </li>
            <li pandassi-banner="ready"=""="">
              <a href="/product/list.html?cate_no=92" target="_self">
                <div class="img"><img
                    src="https://matinkim.com/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/c2ad8bed8c1ee13c9927066787a8be52.jpg">
                </div>
                <div class="desc">
                  <h2>Underwear</h2>
                </div>
              </a>
            </li>
            <li pandassi-banner="ready"=""="">
              <a href="/product/list.html?cate_no=86" target="_self">
                <div class="img"><img
                    src="https://matinkim.com/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/df75ab2bf4e8aeb0621e4dc2a2c644c6.jpg">
                </div>
                <div class="desc">
                  <h2>Must Have</h2>
                  <p>Best Item</p>
                </div>
              </a>
            </li>
          </ul>
        </div>
        <!-- // PC -->

        <!-- MOBILE -->
        <div class="section section1 only-mobile">
          <ul pandassi-banner-group="ready" pandassi-banner-group-code="4bb4f59e15e1a8a342e7">
            <li pandassi-banner="ready"=""="">
              <a href="/product/list.html?cate_no=92" target="_self">
                <div class="img"><img
                    src="https://matinkim.com/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/bd9bee62e23a5eaa0b028d06f9d15400.jpg">
                </div>
                <div class="desc">
                  <h2>Underwear</h2>
                </div>
              </a>
            </li>
            <li pandassi-banner="ready"=""="">
              <a href="/product/list.html?cate_no=86" target="_self">
                <div class="img"><img
                    src="https://matinkim.com/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/588e0f6feb5007204a0ffc0be004f1c7.jpg">
                </div>
                <div class="desc">
                  <h2>Must Have</h2>
                  <p>Best Item</p>
                </div>
              </a>
            </li>
          </ul>
        </div>
        <!-- // MOBILE -->



        <!-- // section1 -->


        <!-- video-block -->
        <div class="only-pc">
          <div class="video-block" pandassi-banner-group="ready" pandassi-banner-group-code="bc5a8209c8a2d234324d">
            <div class="inner" pandassi-banner="ready"=""="" onclick="videoPlay();">
              <a href="https://player.vimeo.com/video/758943701"></a>
              <div class="background"><img
                  src="https://matinkim.com/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/e61a830e35ba9a262ada4b6662d2146e.jpg">
              </div>
              <iframe id="js-video-pc" data-src="https://player.vimeo.com/video/758943701" frameborder="0"
                webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen="" allow="autoplay"
                src="https://player.vimeo.com/video/758943701?background=1&amp;autoplay=0&amp;loop=1&amp;byline=0&amp;title=0&amp;sidedock=0&amp;controls=0"
                data-ready="true"></iframe>
              <div class="desc">
                <div class="desc-inner">
                  <button type="button" class="btn-play"><span>play</span></button>
                  <h2>Matin Kim 22 Winter Collection 'M''</h2>
                  <p>Inspired by the unrefined moments of Berlin, this collection combines daring ideas without
                    hesitation and is perfectly reinterpreted in the simple mood that is unique to Matin Kim.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <script src="https://player.vimeo.com/api/player.js"></script>

        <script>
          var player = null;
          var isPlay = false;
          document.addEventListener("DOMContentLoaded", function () {
            // 모바일 여부에따라 다름
            if ($('body').width() > 767) {
              // PC
              $('#js-video-pc').attr('src', $('#js-video-pc').attr('data-src') + '?background=1&autoplay=0&loop=1&byline=0&title=0&sidedock=0&controls=0');
              var iframe = document.getElementById('js-video-pc');
            } else {
              // MOBILE
              $('#js-video-mo').attr('src', $('#js-video-mo').attr('data-src') + '?background=1&autoplay=0&loop=1&byline=0&title=0&sidedock=0&controls=0');
              var iframe = document.getElementById('js-video-mo');
            }
            player = new Vimeo.Player(iframe);
          });

          function videoPlay() {
            console.log('videoPlay');
            if (!isPlay) {
              $('.video-block .background').addClass('hidden');
              $('.video-block .desc').addClass('hidden');

              if ($('body').width() > 767) {
                $('#js-video-pc').addClass('active');
              } else {
                $('#js-video-mo').addClass('active');
              }
              isPlay = true;
              player.play();
            } else {
              $('.video-block .desc').removeClass('hidden');
              isPlay = false;
              player.pause();
            }
          }
        </script>
        <!-- // video-block -->




      </div>
    </div>
  </div>



  <!-- language-block -->
  <div class="language-block">

    <div class="language-select-block kor">
      <div class="header">
        <h2>Shop in</h2>
        <a href="javascript:languageClose();" class="btn-close"><span>close</span></a>
      </div>
      <div class="select-block">
        <p>언어를 선택하십시오.</p>

        <div class="radio-block">
          <label>
            <input type="radio" name="language" value="KOR" onclick="languageSelect(this.value);" checked=""><span>한국어 |
              KRW</span>
          </label>
          <label>
            <input type="radio" name="language" value="ENG" onclick="languageSelect(this.value);"><span>English |
              USD</span>
          </label>
        </div>
      </div>
      <div class="desc">
        <p>
          한국 사이트에서 KRW로 쇼핑을 하고 있습니다.<br>
          위의 상점을 확인하거나 변경하십시오.<br></p>
        <p class="delivery-desc">
          * 배송지를 변경할 경우 카트의 내용물은 보관되지 않습니다.<br></p>
      </div>

      <div class="continue-block">
        <a href="javascript:languageSelectGo();" class="close">
          <p>Continue to website</p>
          <span>close</span>
        </a>
      </div>
    </div>
  </div>
  <!-- // 로그인 -->


  <!-- 로그인 -->
  <div class="xans-element- xans-layout xans-layout-statelogoff ">
    <div class="login-wrap">
      <form id="member_form_2733625801" name="" action="/exec/front/Member/login/" method="post" target="_self"
        enctype="multipart/form-data">
        <input id="returnUrl" name="returnUrl" value="/" type="hidden">
        <input id="forbidIpUrl" name="forbidIpUrl" value="/index.html" type="hidden">
        <input id="certificationUrl" name="certificationUrl" value="/intro/adult_certification.html" type="hidden">
        <input id="sIsSnsCheckid" name="sIsSnsCheckid" value="" type="hidden">
        <input id="sProvider" name="sProvider" value="" type="hidden">
        <div class="xans-element- xans-member xans-member-login"><!--
    $defaultReturnUrl = /index.html
    $forbidIpUrl = member/adminFail.html
-->
          <div class="login">
            <div class="title">
              <h1>Log in</h1>
              <button type="button" class="btn-close" onclick="loginClose();"><span>close</span></button>
            </div>


            <fieldset>
              <div class="form-block">
                <label class="id ePlaceholderEach required" title="아이디*">
                  <p class="form-title">아이디*</p>
                  <input id="member_id" name="member_id" fw-filter="isFill" fw-label="아이디" fw-msg=""
                    class="inputTypeText" placeholder="아이디*" value="" type="text">
                  <div class="err-msg">아이디 항목은 필수 입력값입니다.</div>
                </label>
              </div>

              <div class="form-block">
                <label class="password ePlaceholderEach required" title="패스워드*">
                  <p class="form-title">패스워드*</p>
                  <input id="member_passwd" name="member_passwd" fw-filter="isFill&amp;isMin[4]&amp;isMax[16]"
                    fw-label="패스워드" fw-msg="" autocomplete="off" value="" type="password" placeholder="패스워드*">
                  <div class="err-msg">패스워드 항목은 필수 입력값입니다.</div>
                </label>
              </div>

              <p class="security">
                <input id="member_check_save_id0" name="check_save_id" fw-filter="" fw-label="아이디저장" fw-msg="" value="T"
                  type="checkbox"><label for="member_check_save_id0">아이디 저장</label>
              </p>
              <a href="#none" class="btnLogin btn btn-lg btn-dark btn-full"
                onclick="MemberAction.login('member_form_2733625801'); return false;"><span>로그인</span></a>

              <div class="find-block">
                <ul>
                  <li><a href="/member/id/find_id.html">아이디찾기</a></li>
                  <li><a href="/member/passwd/find_passwd_info.html">비밀번호찾기</a></li>
                </ul>
              </div>

              <ul class="snsArea">
                <li class="">
                  <a href="#none" onclick="MemberAction.kakaosyncLogin('e90f639de6ef5d5a57073dd8c981c742')"
                    class="sns-login kakao"><i></i><span>카카오로 시작하기</span></a>
                </li>
                <li class="">
                  <a href="#none" onclick="MemberAction.snsLogin('naver', '%2F')"
                    class="sns-login naver"><i></i><span>네이버로 시작하기</span></a>
                </li>
                <li class="displaynone">
                  <a href="#none" onclick="" class="sns-login facebook"><i></i><span>페이스북으로
                      시작하기</span></a>
                </li>
                <li class="displaynone">
                  <a href="#none" onclick="" class="sns-login google"><i></i><span>구글로 시작하기</span></a>
                </li>
                <li class="displaynone">
                  <a href="#none" onclick="" class="sns-login line"><i></i><span>LINE으로 시작하기</span></a>
                </li>
                <li class="">
                  <a href="#none" onclick="MemberAction.snsLogin('apple', '%2F')"
                    class="sns-login apple"><i></i><span>APPLE로 로그인</span></a>
                </li>
                <li class="displaynone">
                  <a href="#none" onclick="" class="sns-login yahoo"><i></i><span>Yahoo!로 시작하기</span></a>
                </li>
              </ul>
              <div class="guest-order-block displaynone ">
                <a href="" onclick="" class="btn btn-lg btn-white btn-full"><span>비회원으로
                    주문하기</span></a>
              </div>

              <div class="join-block ">
                <div class="util">
                  <p>아직 회원이 아니신가요?</p>
                  <p>
                    <a href="/member/nonmembers_order.html?noMemberOrder&amp;returnUrl=/myshop/index.html"
                      onclick="">비회원 주문조회</a>
                  </p>
                </div>

                <a href="/member/join.html" class="btn btn-lg btn-white btn-full"><span>회원가입 후 혜택받기</span></a>

              </div>
            </fieldset>
          </div>
        </div>
      </form>
    </div>
  </div>
  <!-- // 로그인 -->

  <!-- 장바구니 -->
  <div class="basket-block">
    <div class="basket-wrap-iframe">
      <iframe class="basket-iframe" id="basketIframe" name="basketIframe" frameborder="0" scrolling="no"
        src="/blank.html"></iframe>
      <!-- <div class="basket-wrap-ajax">
          <div class="basket-wrap"></div>
      </div> -->
    </div>
  </div>
  <!-- // 장바구니 -->

   <%@ include file="./include/footer.jsp"%>