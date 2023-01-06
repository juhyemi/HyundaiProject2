<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main1.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main2.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main2-before.css">
<link rel="stylesheet" type="text/css" href="/js/slick/black-slick.css" crossorigin="anonymous">
</head>
<body class="magiedumatin main header-transparent">
	<%@ include file="./include/header2.jsp"%>

	<div id="wrap">
		<div id="container">
			<div id="contents">
				<link rel="stylesheet" type="text/css" href="/js/slick/slick.css" crossorigin="anonymous">
				<!-- 상단 배너 -->
				<!-- PC -->
		
				<!-- // PC -->

				<script>
  document.addEventListener("DOMContentLoaded", function () {
    var $ = window.jQuery1_12_4;
    const mainSlideMobile = () => {
      if($('.top-banner-slider.only-pc').hasClass('slick-initialized')){
        $('.top-banner-slider.only-pc').slick('unslick');
      }
      if($('.top-banner-slider.only-mobile').hasClass('slick-initialized')){
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
      if($('.top-banner-slider.only-mobile').hasClass('slick-initialized')){
        $('.top-banner-slider.only-mobile').slick('unslick');
      }
      if($('.top-banner-slider.only-pc').hasClass('slick-initialized')){
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
      $(window).resize(function(){
        mainSlideCheck();
      });
    });
  });
</script>
				<!-- // 상단 배너 -->


				<!-- video-block -->
				<div class="only-pc">
					<div class="video-block" pandassi-banner-group="ready" pandassi-banner-group-code="5623a91124486589c95d">
						<div class="inner" pandassi-banner="ready" onclick="videoPlay();">
							<a href="https://player.vimeo.com/video/785641868"></a>
							<iframe id="js-video-pc222" style="z-index: 4;" data-src="https://player.vimeo.com/video/785641868" frameborder="0" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen="" allow="autoplay" src="https://player.vimeo.com/video/785641868?background=1&amp;autoplay=1&amp;loop=1&amp;byline=0&amp;title=0&amp;sidedock=0&amp;controls=0" mute="0" class="active" data-ready="true"></iframe>
							<div class="background" style="z-index: 3;">
								<img src="/images/banner/magiedumatin_video_pc.png">
							</div>
							<div class="desc hidden">
								<div class="desc-inner">
									<button type="button" class="btn-play">
										<span>play</span>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="only-mobile">
					<div class="video-block" pandassi-banner-group="ready" pandassi-banner-group-code="5623a91124486589c95d">
						<div class="inner" pandassi-banner="ready" onclick="videoPlay();">
							<a href="https://player.vimeo.com/video/785641868"></a>
							<iframe id="js-video-no" style="z-index: 4;" data-src="https://player.vimeo.com/video/785640988" frameborder="0" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen="" allow="autoplay" src="https://player.vimeo.com/video/785640988?background=1&amp;autoplay=1&amp;loop=1&amp;byline=0&amp;title=0&amp;sidedock=0&amp;controls=0" mute="0" class="active" data-ready="true"></iframe>
							<div class="background" style="z-index: 3;">
								<img src="/images/banner/magiedumatin_video_m.png">
							</div>
							<div class="desc hidden">
								<div class="desc-inner">
									<button type="button" class="btn-play">
										<span>play</span>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- // video-block -->
				<!-- PC -->
				<div class="section section1 gray only-pc">
					<ul pandassi-banner-group="ready" pandassi-banner-group-code="61fdebb0156b385cdee9">
						<li pandassi-banner="ready"=""=""><a href="/product/list.html?cate_no=45" target="_self">
								<div class="img">
									<img src="https://matinkim.com/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/ef1b01a598c5e9cfa9609422e28a4bee.jpg">
								</div>
								<div class="desc">
									<h2>New In Shop</h2>
									<p>Winter 2022</p>
								</div>
							</a></li>
						<li pandassi-banner="ready"=""=""><a href="/product/list/Tops" target="_self">
								<div class="img">
									<img src="https://matinkim.com/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/c2ad8bed8c1ee13c9927066787a8be52.jpg">
								</div>
								<div class="desc">
									<h2>Tops</h2>
								</div>
							</a></li>
						<li pandassi-banner="ready"=""=""><a href="/product/list.html?cate_no=86" target="_self">
								<div class="img">
									<img src="https://matinkim.com/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/df75ab2bf4e8aeb0621e4dc2a2c644c6.jpg">
								</div>
								<div class="desc">
									<h2>Must Have</h2>
									<p>Best Item</p>
								</div>
							</a></li>
					</ul>
				</div>
				<!-- // PC -->
				<div class="only-pc">
					<div class="video-block" pandassi-banner-group="ready" pandassi-banner-group-code="bc5a8209c8a2d234324d">
						<div class="inner" pandassi-banner="ready" =""="" onclick="videoPlay();">
							<a href="https://player.vimeo.com/video/758943701"></a>
							<div class="background">
								<img src="https://matinkim.com/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/e61a830e35ba9a262ada4b6662d2146e.jpg">
							</div>
							<iframe id="js-video-pc" data-src="https://player.vimeo.com/video/758943701" frameborder="0" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen="" allow="autoplay" src="https://player.vimeo.com/video/758943701?background=1&amp;autoplay=0&amp;loop=1&amp;byline=0&amp;title=0&amp;sidedock=0&amp;controls=0" data-ready="true"></iframe>
							<div class="desc">
								<div class="desc-inner">
									<button type="button" class="btn-play">
										<span>play</span>
									</button>
									<h2>Matin Kim 22 Winter Collection 'M''</h2>
									<p>Inspired by the unrefined moments of Berlin, this collection combines daring ideas without hesitation and is perfectly reinterpreted in the simple mood that is unique to Matin Kim.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="./include/black-footer.jsp"%>