<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@ include file="./include/header.jsp"%>

<link rel="stylesheet" type="text/css" href="../resources/css/main1.css">
<link rel="stylesheet" type="text/css" href="../resources/css/main2.css">
<link rel="stylesheet" type="text/css" href="/js/slick/slick.css" crossorigin="anonymous">
</head>
<body class="main header-transparent">

<%@ include file="./include/header2.jsp"%>


  <div id="wrap">
    <div id="container">
      <div id="contents">

        <!-- 상단 배너 --><!-- PC -->
        <div class="top-banner-block only-pc">
          <div class="top-banner-slider only-pc slick-initialized slick-slider slick-dotted"
            pandassi-banner-group="ready" pandassi-banner-group-code="a691c77a77668ca85cfb">
            <div class="slick-list draggable">
              <div class="slick-track" style="opacity: 1; width: 1691px; transform: translate3d(0px, 0px, 0px);">
                <div class="item slick-slide slick-current slick-active" pandassi-banner="ready"=""=""
                  data-slick-index="0" aria-hidden="false" tabindex="0" role="tabpanel" id="slick-slide00"
                  aria-describedby="slick-slide-control00" style="width: 1691px;">
                  <a href="#" target="_self" tabindex="0">
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
              <a href="/product/list/Tops" target="_self">
                <div class="img"><img
                    src="https://matinkim.com/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/c2ad8bed8c1ee13c9927066787a8be52.jpg">
                </div>
                <div class="desc">
                  <h2>Tops</h2>
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


   <%@ include file="./include/footer.jsp"%>