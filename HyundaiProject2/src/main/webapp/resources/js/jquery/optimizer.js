/**
 * 움직이는 배너 Jquery Plug-in
 * @author  cafe24
 */

(function($){

  $.fn.floatBanner = function(options) {
      options = $.extend({}, $.fn.floatBanner.defaults , options);

      return this.each(function() {
          var aPosition = $(this).position();
          var jbOffset = $(this).offset();
          var node = this;

          $(window).on('scroll', function() {
              var _top = $(document).scrollTop();
              _top = (aPosition.top < _top) ? _top : aPosition.top;

              setTimeout(function () {
                  var newinit = $(document).scrollTop();

                  if ( newinit > jbOffset.top ) {
                      _top -= jbOffset.top;
                      var container_height = $("#wrap").height();
                      var quick_height = $(node).height();
                      var cul = container_height - quick_height;
                      if(_top > cul){
                          _top = cul;
                      }
                  } else {
                      _top = 0;
                  }

                  $(node).stop().animate({top: _top}, options.animate);
              }, options.delay);
          });
      });
  };

  $.fn.floatBanner.defaults = {
      'animate'  : 500,
      'delay'    : 500
  };

})(jQuery);

/**
* 문서 구동후 시작
*/
$(function(){
  $('#banner:visible, #quick:visible').floatBanner();

  //placeholder
  $(".ePlaceholder input, .ePlaceholder textarea").each(function(i){
      var placeholderName = $(this).parents().attr('title');
      $(this).attr("placeholder", placeholderName);
  });
  /* placeholder ie8, ie9 */
  $.fn.extend({
      placeholder : function() {
          //IE 8 버전에는 hasPlaceholderSupport() 값이 false를 리턴
         if (hasPlaceholderSupport() === true) {
              return this;
          }
          //hasPlaceholderSupport() 값이 false 일 경우 아래 코드를 실행
          return this.each(function(){
              var findThis = $(this);
              var sPlaceholder = findThis.attr('placeholder');
              if ( ! sPlaceholder) {
                 return;
              }
              findThis.wrap('<label class="ePlaceholder" />');
              var sDisplayPlaceHolder = $(this).val() ? ' style="display:none;"' : '';
              findThis.before('<span' + sDisplayPlaceHolder + '>' + sPlaceholder + '</span>');
              this.onpropertychange = function(e){
                  e = event || e;
                  if (e.propertyName == 'value') {
                      $(this).trigger('focusout');
                  }
              };
              //공통 class
              var agent = navigator.userAgent.toLowerCase();
              if (agent.indexOf("msie") != -1) {
                  $(".ePlaceholder").css({"position":"relative"});
                  $(".ePlaceholder span").css({"position":"absolute", "padding":"0 4px", "color":"#878787"});
                  $(".ePlaceholder label").css({"padding":"0"});
              }
          });
      }
  });

  $(':input[placeholder]').placeholder(); //placeholder() 함수를 호출

  //클릭하면 placeholder 숨김
  $('body').on('click', '.ePlaceholder span', function(){
      $(this).hide();
  });

  //input창 포커스 인 일때 placeholder 숨김
  $('body').on('focusin', '.ePlaceholder :input', function(){
      $(this).prev('span').hide();
  });

  //input창 포커스 아웃 일때 value 가 true 이면 숨김, false 이면 보여짐
  $('body').on('focusout', '.ePlaceholder :input', function(){
      if (this.value) {
          $(this).prev('span').hide();
      } else {
          $(this).prev('span').show();
      }
  });

  //input에 placeholder가 지원이 되면 true를 안되면 false를 리턴값으로 던져줌
  function hasPlaceholderSupport() {
      if ('placeholder' in document.createElement('input')) {
          return true;
      } else {
          return false;
      }
  }
});

/**
*  썸네일 이미지 엑박일경우 기본값 설정
*/
$(window).on('load', function() {
  $("img.thumb,img.ThumbImage,img.BigImage").each(function($i,$item){
      var $img = new Image();
      $img.onerror = function () {
          $item.src="//img.echosting.cafe24.com/thumb/img_product_big.gif";
      }
      $img.src = this.src;
  });
});

/**
*  tooltip
*/
$('.eTooltip').each(function(i){
  $(this).find('.btnClose').attr('tabIndex','-1');
});
//tooltip input focus
$('.eTooltip').find('input').on('focus', function() {
  var targetName = returnTagetName(this);
  targetName.siblings('.ec-base-tooltip').show();
});
$('.eTooltip').find('input').on('focusout', function() {
  var targetName = returnTagetName(this);
  targetName.siblings('.ec-base-tooltip').hide();
});
function returnTagetName(_this){
  var ePlacename = $(_this).parent().attr("class");
  var targetName;
  if(ePlacename == "ePlaceholder"){ //ePlaceholder 대응
      targetName = $(_this).parents();
  }else{
      targetName = $(_this);
  }
  return targetName;
}

/**
*  eTab
*/
$("body").on("click", ".eTab a", function(e){
  // 클릭한 li 에 selected 클래스 추가, 기존 li에 있는 selected 클래스는 삭제.
  var _li = $(this).parent("li").addClass("selected").siblings().removeClass("selected"),
  _target = $(this).attr("href"),
  _siblings = $(_target).attr("class"),
  _arr = _siblings.split(" "),
  _classSiblings = "."+_arr[0];

  //클릭한 탭에 해당하는 요소는 활성화, 기존 요소는 비활성화 함.
  $(_target).show().siblings(_classSiblings).hide();


  //preventDefault 는 a 태그 처럼 클릭 이벤트 외에 별도의 브라우저 행동을 막기 위해 사용됨.
  e.preventDefault();
});



//window popup script
function winPop(url) {
  window.open(url, "popup", "width=300,height=300,left=10,top=10,resizable=no,scrollbars=no");
}
/**
* document.location.href split
* return array Param
*/
function getQueryString(sKey)
{
  var sQueryString = document.location.search.substring(1);
  var aParam       = {};

  if (sQueryString) {
      var aFields = sQueryString.split("&");
      var aField  = [];
      for (var i=0; i<aFields.length; i++) {
          aField = aFields[i].split('=');
          aParam[aField[0]] = aField[1];
      }
  }

  aParam.page = aParam.page ? aParam.page : 1;
  return sKey ? aParam[sKey] : aParam;
};

$(function(){
  // tab
  $.eTab = function(ul){
      $(ul).find('a').on('click', function(){
          var _li = $(this).parent('li').addClass('selected').siblings().removeClass('selected'),
              _target = $(this).attr('href'),
              _siblings = '.' + $(_target).attr('class');
          $(_target).show().siblings(_siblings).hide();
          return false
      });
  }
  if ( window.call_eTab ) {
      call_eTab();
  };
});
// header-banner-block 가 존재할 경우
function gnbTopCheck() {
if ($('body').width() <= 767) {
  if ($('.header-banner-block').length > 0) {
    var h = $('header').offset().top - $(document).scrollTop();

    if (h > 0) {
      $('#gnb .menu-block').css('top', h + 'px');
    } else {
      $('#gnb .menu-block').css('top', '0px');
    }

    // if ($(document).scrollTop() <= $('.header-banner-block').height()) {
    //   $('#gnb .menu-block').css('top', $('.header-banner-block').height() + 'px');
    // } else {
    //   $('#gnb .menu-block').css('top', '0px');
    // }
  }
}
}

// collection items 출력
function setCollectionItems(cateNo) {
$.ajax({
  url : '/_api/collection-items.html?cate_no='+cateNo,
  dataType: 'html',
  success: function(res) {

    // collection item html
    var items = $(res).find('#itemData').html();
    $('#gnb').append('<div class="menu-block depth3" id="mo_dept3_'+cateNo+'" cate-no="Collections_'+cateNo+'">'+items+'</div>');

    // dept2 mouseenter
    $('#gnb > .depth2 > .sub > ul > li').on('mouseenter', function() {
      // dimmer active
      $('#gnb .dimmer').removeClass('displaynone');
      var cateNo = $(this).attr('cate-no') || '';

      $('#gnb > .depth2 > .sub > ul > li').removeClass('active');
      $('.depth3').removeClass('active');
      $('#gnb > .depth2 > .sub > ul > li > a').addClass('off');
      $('#gnb > .depth3 > .sub > ul > li > a').removeClass('off');

      $(this).addClass('active');
      $(this).find('a').removeClass('off');

      if (cateNo) {
        $('.depth3[cate-no="'+cateNo+'"]').addClass('active');
      }
    });

    $('#gnb > .depth3 > .sub > ul > li > a').on('mouseover', function() {
      $('#gnb > .depth3 > .sub > ul > li > a').addClass('off');
      $(this).find('a').removeClass('off');
    });

    // 모바일 이면 gnb 재구성
    if ($('body').width() <= 767) {
      $('#mo_dept2_'+cateNo+'').append(items);

      // dept2 클릭 시
      $('#mo_dept2_'+cateNo+' > a').on('click', function() {
        console.log('cccc');
        var target = $(this).parent();

        // $('.js-collection-dept2 .is-sub').removeClass('open');

        if (target.hasClass('open')) {
          target.parent().find('.is-sub > a').removeClass('off');
          target.removeClass('open');
        } else {
          target.parent().find('.is-sub > a').addClass('off');
          target.addClass('open');
        }

      });

    }

  }
});
}


$(function(){

// collection 2차 메뉴 출력
$.ajax({
  url : '/exec/front/Product/SubCategory',
  dataType: 'json',
  success: function(aData) {
    for (var i=0; i<aData.length; i++) {
      if (aData[i].parent_cate_no == 68) {
        var cateNo = aData[i].cate_no;
        $('.js-collection-dept2').append('<li class="is-sub" id="mo_dept2_'+cateNo+'" cate-no="Collections_'+cateNo+'"><a href="javascript:void(0);"><span>'+aData[i].name+'</span><i></i></a></li>')

        // collection items 출력
        setCollectionItems(cateNo);
      }
    }

    $('#gnb > .depth2 > .sub > ul > li > a').on('mouseover', function() {
      $('#gnb > .depth2 > .sub > ul > li > a').addClass('off');
      $(this).find('a').removeClass('off');
    });
  }
});

// 모바일 이면 gnb 재구성
if ($('body').width() <= 767) {
  $('#gnb > .depth1 > ul > li').each(function(i,elm){
    var cateNo = $(this).attr('cate-no') || '';
    if (cateNo) {
      $(this).append($('.depth2[cate-no="'+cateNo+'"]').html());
    }
  });
}

$('.js-gnb-menu').click(()=>{
  // header-transparent 제거
  $('body').removeClass('header-transparent');

  // header-banner-block 가 존재할 경우
  gnbTopCheck();

  var header = $('header');
  var hamburger = $(this).find('.hamburger');
  var gnb = $('#gnb');
  var gnbDimmer = $('.gnb-dimmer');

  if (hamburger.hasClass('active')) {

    // 모바일 이면
    if ($('body').width() <= 767) {
      if ($('#gnb > .depth2').hasClass('active')) {
        $('#gnb > .depth2').removeClass('active');
      } else {
        gnbClose();
      }
      return;
    }

    gnbClose();

  } else {
    header.attr('data-bordered',true);
    hamburger.addClass('active');
    gnb.addClass('active');
    gnbDimmer.addClass('active');

    gnbDimmer.click(()=>{
      gnbClose();
    });

    $('#search-result-block').addClass('open');

    // 모바일 이면
    if ($('body').width() <= 767) {
      $('body').addClass('fixed');
      $('.mobile-gnb-dimmer').addClass('active');
      $('.mobile-gnb-dimmer').click(function(){
        gnbClose();
      });
    }

  }
});


// 모바일 이면
if ($('body').width() <= 767) {
  $('#gnb > .depth1 > ul > li > a').on('click', function() {

    var target = $(this).parent();

    // dimmer active
    $('#gnb .dimmer').removeClass('displaynone');
    var cateNo = target.attr('cate-no') || '';

    console.log(cateNo);

    var h1 = 46;
    var h2 = target.find('.sub').height();
    var h = h1 + h2;

    console.log(target.hasClass('open'));

    if (target.hasClass('open')) {
      $('#gnb > .depth1 > ul > li > a').removeClass('off');
      target.animate({
          // height: h1+'px'
      }, 100, function() {
        target.removeClass('open');
      });
    } else {
      $('#gnb > .depth1 > ul > li > a').addClass('off');
      target.animate({
          // height: h+'px'
      }, 300, function() {
        target.addClass('open');
      });
    }
  });
} else {
  $('#gnb > .depth1 > ul > li').on('mouseenter', function() {

    $('#gnb').find('.depth3').removeClass('active');

    // dimmer active
    $('#gnb .dimmer').removeClass('displaynone');
    var cateNo = $(this).attr('cate-no') || '';

    $('#gnb > .depth1 > ul > li').removeClass('active');
    $('.depth2').removeClass('active');
    $('#gnb > .depth1 > ul > li > a').addClass('off');
    $('#gnb > .depth2 > .sub > ul > li > a').removeClass('off');

    $(this).addClass('active');
    $(this).find('a').removeClass('off');

    if (cateNo) {
      $('.depth2[cate-no="'+cateNo+'"]').addClass('active');
    }

  });

  $('#gnb > .depth2 > .sub > ul > li > a').on('mouseover', function() {
    $('#gnb > .depth2 > .sub > ul > li > a').addClass('off');
    $(this).find('a').removeClass('off');
  });

  // $('#gnb > .dimmer').click(()=>{
  //   gnbClose();
  // });
}

});

function gnbClose() {

$('header').attr('data-bordered',false);
$('.js-gnb-menu .hamburger').removeClass('active');
$('#gnb').find('.depth1 > ul > li').removeClass('active');
$('#gnb').find('.depth2').removeClass('active');
$('#gnb').find('.depth3').removeClass('active');
$('#gnb').removeClass('active');
$('#gnb').find('ul > li > a').removeClass('off');
// $('#gnb').find('.is-sub').removeClass('open').css({height: '46px'});
$('#gnb').find('.is-sub').removeClass('open');
$('.gnb-dimmer').removeClass('active');
// $('.mobile-gnb-dimmer').removeClass('active');

// search retult block wide
$('#search-result-block').removeClass('open');

// 모바일
if ($('body').width() <= 767) {

  $('body').removeClass('fixed');

  setTimeout(() => {
    if (document.location.pathname == '/' || document.location.pathname == '/index.html') {
      $('body').addClass('header-transparent');
    }
  }, 300);
}
}

$(function(){
// 모바일 메인 스크롤 시 상단 헤더 설정
if (document.location.pathname == '/' || document.location.pathname == '/index.html') {
  $(document).scroll(function() {
    var h = $('.top-banner-block.only-mobile').height();
    if ($(document).scrollTop() > h) {
      $('body').addClass('not-transparent');
    } else {
      $('body').removeClass('not-transparent');
    }
  });
}
});
/**
* cookie
* 2022-06-29
* 이석훈
*/
function setCookie(name, value, exp) {
var doamin = (document.location.href.indexOf('kimdaniyaya.cafe24.com') > -1) ? 'kimdaniyaya.cafe24.com' : 'matinkim.com';
var date = new Date();
date.setTime(date.getTime() + exp*24*60*60*1000);
document.cookie = name + '=' + value + ';domain='+doamin+';expires=' + date.toUTCString() + ';path=/';
}
// setCookie('pop', 'event0405', 7);
function getCookie(name) {
var value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
return value? value[2] : null;
}
// getCookie('pop');
function deleteCookie(name) {
document.cookie = name + '=; expires=Thu, 01 Jan 1970 00:00:01 GMT;';
}
// deleteCookie('pop');

/**
* 공통 dimmer
* 2022-06-14
* 이석훈
*/
const dimmerOpen = (callback) => {
$('body').append('<div class="common-dimmer" style="opacity: 0;"></div>');
$('.common-dimmer').animate({opacity:1}, 300);
$('.common-dimmer').click(()=>{
  callback();
});
}
const dimmerClose = () => {
$('.common-dimmer').animate({opacity:0}, 300).remove();
}

/**
* 공통 dimmer (투명)
* 2022-06-14
* 이석훈
*/
const transparentDimmerOpen = (callback) => {
$('body').append('<div class="transparent-dimmer" style="opacity: 0;"></div>');
$('.transparent-dimmer').animate({opacity:1}, 300);
$('.transparent-dimmer').click(()=>{
  callback();
});
}
const transparentDimmerClose = () => {
$('.transparent-dimmer').animate({opacity:0}, 300).remove();
}

/**
* 언어설정
* 2022-06-29
* 이석훈
*/
function languageOpen() {
$('.language-block').addClass('active');
$('.language-block .language-select-block.kor').addClass('active');
$('.language-block .language-select-block.kor').find('input[value=KOR]').prop('checked',true);
dimmerOpen(languageClose);
}
function languageClose() {
dimmerClose();
$('.language-layer-block').removeClass('active');
$('.language-block, .language-select-block').removeClass('active');
}
function languageSelectGo() {
var lang = '';

if ($('.language-layer-block').hasClass('active')) {
  lang = $('.language-layer-block').find('input[name=language]:checked').val();
} else {
  lang = $('.language-block').find('input[name=language]:checked').val();
}

// 쿠키 저장
setCookie('language', lang, 7);

// 조건
if (lang == 'KOR') {
    if (document.location.href == 'https://matinkim.com/' || document.location.href == 'http://skin-skin11.kimdaniyaya.cafe24.com/' || document.location.href == 'http://skin-mobile6.kimdaniyaya.cafe24.com/') {
      languageClose();
    } else {
        document.location.href = 'https://matinkim.com/index.html?select_language=KOR';
    }
} else {
    if (document.location.href == 'https://usd.matinkim.com/' || document.location.href == 'http://skin-skin12--shop2.kimdaniyaya.cafe24.com/' || document.location.href == 'http://skin-mobile8--shop2.kimdaniyaya.cafe24.com/') {
      languageClose();
    } else {
        document.location.href = 'https://usd.matinkim.com/index.html?select_language=ENG';
    }
}
}
function languageSelect(lang) {
if ($('.language-layer-block').hasClass('active')) {
  return;
} else {
  languageSelectGo();
}
}




/**
* 로그인
* 2022-06-14
* 이석훈
*/
function login() {
// 로그인 페이지에서는 비활성화
var url = document.location.pathname;
if (url.indexOf('/member/login.html') >= 0) return;

$('.login-wrap').addClass('active');
dimmerOpen(loginClose);
}
function loginClose() {
dimmerClose();
$('.login-wrap').removeClass('active');
$('.login-wrap .required').removeClass('active').removeClass('empty');
$('.login-wrap input[type=text], .login-wrap input[type=password]').val('');
$('.login-wrap input[type=checkbox]').prop('checked', false);
}


var basketData = null;
/**
* 장바구니
* 2022-06-21
* 이석훈
*/
function basketOpen() {

// 장바구니 카운트 갱신
basketCountSync();
dimmerOpen(basketClose);
//  replace 링크 변경
window.top.document.getElementById('basketIframe').contentWindow.location.replace('./cartdetail.html');
$('.basket-wrap-iframe').addClass('active');
$('html').addClass('fixed');
$('body').addClass('fixed');


$('.basket-iframe').on('load', function () {
  // bodyLoadingClose();
  // basketIframeLoaded();
  $('.basket-iframe').unbind('load');
});
}
function basketIframeLoaded() {
$('.basket-iframe').unbind('load');
// $('.basket-wrap-iframe').addClass('active');
// $('body').addClass('fixed');
// dimmerOpen(basketClose);

// // 아이프레임 내 페이지 이동의 경우 브라우져 뒤로가기 시 부모창의 뒤로가기 경로로 변경
// // history.pushState(null, document.title, document.referrer);
// history.pushState(null, null, null);
// $(window).on('popstate', function(event) {
//   window.location = document.referrer;
// });

}
function basketClose() {
// 장바구니 카운트 갱신
basketCountSync();

dimmerClose();
$('.basket-wrap-iframe').removeClass('active');
window.top.document.getElementById('basketIframe').contentWindow.location.replace('/blank.html');
// $('.basket-iframe').attr('/blank.html');
// $('.basket-wrap-ajax').html('');
// $('.basket-wrap-ajax .basket-wrap').html('');
$('html').removeClass('fixed');
$('body').removeClass('fixed');
}
// 장바구니 카운트 갱신

function basketCountSync() {
// CAPP_ASYNC_METHODS.Basketcnt.restoreCache();
// var aBasketcnt = CAPP_ASYNC_METHODS.Basketcnt.getData();
// $('.EC-Layout-Basket-count').html(aBasketcnt.count);
}

// 장바구니 열기 쿠키 체크
$(function () {
var openBasket = getCookie('openBasket');
if (openBasket == 'Y') {

  setCookie('openBasket','',0);

  setTimeout(() => {
    basketOpen();
  }, 0);


}
});



/**
* 상품리스트 아이템 재정렬
* 2022-06-17
* 이석훈
*/
$(function () {

// 상품목록 진열 갯수 쿠키
var prdListGrid = getCookie('prdListGrid');

// 모바일이 아니면 쿠키체크
if ($('body').width() > 767) {
  if (prdListGrid) {
    // collection, project 제외
    if (location.href.indexOf("collection.html") <= 0 && location.href.indexOf("project.html") <= 0) {
      $('.product-list-wrap .listType button').removeClass('active');
      $('.product-list-wrap .listType button[data-list-num='+prdListGrid+']').addClass('active');
      $('.js-prdList').removeClass('grid1 grid2 grid3 grid4');
      $('.js-prdList').addClass('grid'+prdListGrid);
    }
  }
}

$('.product-list-wrap .listType button').click(function () {
  $('.product-list-wrap .listType button').removeClass('active');
  $(this).addClass('active');

  var n = $(this).attr('data-list-num');
  $('.js-prdList').removeClass('grid1 grid2 grid3 grid4');
  $('.js-prdList').addClass('grid'+n);

  // 쿠키저장
  setCookie('prdListGrid',n);
});

// 모바일 이면
if ($('body').width() <= 767) {
  $('.js-prdList').removeClass('grid1 grid2 grid3 grid4');
  if (prdListGrid) {
    if (prdListGrid > 3) prdListGrid = 3;
    $('.js-prdList').addClass('grid'+prdListGrid);
    $('.product-list-wrap .listType button[data-list-num='+prdListGrid+']').addClass('active');
  } else {
    $('.js-prdList').addClass('grid2');
    $('.product-list-wrap .listType button[data-list-num=2]').addClass('active');
  }
}


// $('.prdList li').each(function(i,elm) {
//     // 상품명 대문자를 소문자로 변환
//     $(elm).find('.description .name').text($(elm).find('.description .name').text().toLowerCase());
// });

});





/**
* LazyLoading
* 2022-06-17
* 이석훈
*/
const useLazyLoading = () => {
const imgs = document.querySelectorAll('.lazy');

const observerCallback = (entries, observer) => {
  entries.forEach(({ isIntersecting, intersectionRatio, target }) => {
    if (isIntersecting && intersectionRatio > 0) {
      target.src = target.dataset.src;
      target.classList.remove("lazy");
      observer.unobserve(target);
    }
  });
};

const io = new IntersectionObserver(observerCallback);
imgs.forEach((img) => io.observe(img));
};
useLazyLoading();


/**
* 버튼 로딩 효과
* 2022-06-21
* 이석훈
*/
$(function () {
$('.btn-loading').click(function () {
  console.log('btn-loading');
  $(this).find('span').addClass('displaynone');
  $(this).append('<div class="loading-block"><div></div><div></div><div></div><div></div></div>');
  // console.log($(this));
});
});

function btnLoadingReset() {
if ($('.btn-loading').find('.loading-block').length > 0) {
  $('.btn-loading').find('span').removeClass('displaynone');
  $('.btn-loading').find('.loading-block').remove();
}
}

/**
* 전체화면 로딩 효과
* 2022-06-22
* 이석훈
*/
function bodyLoading(callback) {
dimmerOpen(callback);
$('body').append('<div class="loading-block fixed"><div></div><div></div><div></div><div></div></div>');
}
function bodyLoadingClose() {
  dimmerClose();
  $('body').find('.loading-block').remove();
}
// bodyLoading();


/* 커스텀 alert */
/* 주문서 작성 페이지는 제외 */
// if (document.location.pathname != '/order/orderform.html') {
//   window.alert = function(msg) {
//     customAlertFunc(msg);
//   }
// }
function customAlertFunc(msg) {

msg = msg.replace(/\n/g, '<br/>');

// iframe 이면 부모창에 추가
var target = document;
if ($('body').attr('class') == 'iframe-layout') {
  target = parent.document;
}

$('body', target).append(`<div class="custom-alert"><div class="alert-block"><div class="header">알림</div><div class="content"><div class="message">${msg}</div><div class="btn-block"><button type="button" class="btn btn-sm btn-white btn-full" onclick="customAlertClose()"><span>확인</span></button></div></div></div></div>`);
$('.custom-alert', target).addClass('active');
setTimeout(() => {
  $('.custom-alert', target).find('button').focus();
}, 500);

}
function customAlertClose() {
$('.custom-alert').remove();
};
/* // 커스텀 alert */



/**
* 로그인
* 2022-06-14
* 이석훈
*/
$(function(){

$('.ePlaceholderGroup').each(function(i){
  var placeholderName = $(this).attr('title');
  var required = $(this).attr('data-required') || '';

  // form 스캔하여 required 및 label 설정
  if (required == 'displaynone') {
      placeholderName = (typeof placeholderName != 'undefined') ? placeholderName.replace('*','') : '';
      $(this).find('label').removeClass('required');
  }
  $(this).find('p.form-title').html(placeholderName);
});

$('.ePlaceholderEach').each(function(i){
  var placeholderName = $(this).attr('title');
  var required = $(this).attr('data-required') || '';

  // form 스캔하여 required 및 label 설정
  if (required == 'displaynone') {
      placeholderName = (typeof placeholderName != 'undefined') ? placeholderName.replace('*','') : '';
      $(this).removeClass('required');
  }
  $(this).find('p.form-title').html(placeholderName);
  $(this).find('input').attr("placeholder", placeholderName);
});



// input 입력 시 label 효과
$('.ePlaceholderEach input, .ePlaceholder input[type=text], .ePlaceholder input[type=password]').keyup(function() {
  if ($(this).val() != '') {
    $(this).parent().find('p.form-title').addClass('active');
    $(this).parent().removeClass('empty');
  } else {
    $(this).parent().find('p.form-title').removeClass('active');
  }
});

// 필수 입력 오류 체크
$('.required input').focusout(function() {
  var msgFor = $(this).parent().attr('msg-for') || null;

  if (msgFor) {
    if ($(this).val() != '') {
      $('.'+msgFor).removeClass('empty');
    } else {
      $('.'+msgFor).addClass('empty');
    }
    return;
  }

  if ($(this).val() != '') {
    $(this).parent().removeClass('empty');
  } else {
    $(this).parent().addClass('empty');
    $(this).parent().find('.err-msg-system').html('');
  }
});

});

function _callBasketAjaxReset() {
  console.log('_callBasketAjaxReset');

  // 장바구니 함수 재설정
  basket_result_action = function (sType, sGroup, aData, sBasketType, sParam, defer) {

      console.log('basket_result_action');

      // 오류 시
      if (aData.result < 0) {
          var msg = aData.alertMSG.replace('\\n', '\n');

          // 디코딩 하기전에 이미 인코딩 된 '\n' 문자를 실제 개행문자로 변환
          // 목록에서 호출될 경우에는 인코딩 되지 않은 '\n' 문자 그대로 넘어오므로 추가 처리
          msg = msg.replace(/%5Cn|\\n/g, '%0A');

          try {
              msg = decodeURIComponent(msg);
          } catch (err) {
              msg = unescape(msg);
          }

          return alert(msg);
      }

      var sUrl = '';

      // 배송유형
      var sDelvType = '';
      if (typeof (delvtype) !== 'undefined') {
          if (typeof (delvtype) === 'object') {
              sDelvType = EC$(delvtype).val();
          } else {
              sDelvType = delvtype;
          }
      } else if (aData.sDelvType != null) {
          sDelvType = aData.sDelvType;
      }

      if (sType === 1) {
          var sSimplePayType = '';
          if (sType === 'simple_pay' && aData.sPaymethod.length > 0) {
              sSimplePayType = '&paymethod=' + aData.sPaymethod;
          }

          if (aData.isLogin == 'T') { // 회원
              window.top.location.href = "/order/orderform.html?basket_type=" + sBasketType + "&delvtype=" + sDelvType + sSimplePayType;
          } else { // 비회원
              sUrl = '/member/login.html?noMember=1&returnUrl=' + encodeURIComponent('/order/orderform.html?basket_type=' + sBasketType + "&delvtype=" + sDelvType + sSimplePayType);
              sUrl += '&delvtype=' + sDelvType;

              window.top.location.href = sUrl;
          }
      } else if (sType === 2) {
          window.top.basketOpen();
          if (window.top.document.getElementById('capp-shop-new-product-optionselect-backlayer')) {
              window.top.document.getElementById('capp-shop-new-product-optionselect-backlayer').remove();
          }
          if (window.top.document.getElementById('capp-shop-new-product-optionselect-layer')) {
              window.top.document.getElementById('capp-shop-new-product-optionselect-layer').remove();
          }
      }
  }

};
$(function(){
  if (typeof(EC_SHOP_MULTISHOP_SHIPPING) != "undefined") {
      var sShippingCountryCode4Cookie = 'shippingCountryCode';
      var bShippingCountryProc = false;

      // 배송국가 선택 설정이 사용안함이면 숨김
      if (EC_SHOP_MULTISHOP_SHIPPING.bMultishopShippingCountrySelection === false) {
          $('.xans-layout-multishopshipping .xans-layout-multishopshippingcountrylist').hide();
          $('.xans-layout-multishoplist .xans-layout-multishoplistmultioption .xans-layout-multishoplistmultioptioncountry').hide();
      } else {
          $('.thumb .xans-layout-multishoplistitem').hide();
          var aShippingCountryCode = document.cookie.match('(^|;) ?'+sShippingCountryCode4Cookie+'=([^;]*)(;|$)');
          if (typeof(aShippingCountryCode) != 'undefined' && aShippingCountryCode != null && aShippingCountryCode.length > 2) {
              var sShippingCountryValue = aShippingCountryCode[2];
          }

          // query string으로 넘어 온 배송국가 값이 있다면, 그 값을 적용함
          var aHrefCountryValue = decodeURIComponent(location.href).split("/?country=");

          if (aHrefCountryValue.length == 2) {
              var sShippingCountryValue = aHrefCountryValue[1];
          }

          // 메인 페이지에서 국가선택을 안한 경우, 그 외의 페이지에서 셋팅된 값이 안 나오는 현상 처리
          if (location.href.split("/").length != 4 && $(".xans-layout-multishopshipping .xans-layout-multishopshippingcountrylist").val()) {
              $(".xans-layout-multishoplist .xans-layout-multishoplistmultioption a .ship span").text(" : "+$(".xans-layout-multishopshipping .xans-layout-multishopshippingcountrylist option:selected").text().split("SHIPPING TO : ").join(""));

              if ($("#f_country").length > 0 && location.href.indexOf("orderform.html") > -1) {
                  $("#f_country").val($(".xans-layout-multishopshipping .xans-layout-multishopshippingcountrylist").val());
              }
          }
          if (typeof(sShippingCountryValue) != "undefined" && sShippingCountryValue != "" && sShippingCountryValue != null) {
              sShippingCountryValue = sShippingCountryValue.split("#")[0];
              var bShippingCountryProc = true;

              $(".xans-layout-multishopshipping .xans-layout-multishopshippingcountrylist").val(sShippingCountryValue);
              $(".xans-layout-multishoplist .xans-layout-multishoplistmultioption a .ship span").text(" : "+$(".xans-layout-multishopshipping .xans-layout-multishopshippingcountrylist option:selected").text().split("SHIPPING TO : ").join(""));
              var expires = new Date();
              expires.setTime(expires.getTime() + (30 * 24 * 60 * 60 * 1000)); // 30일간 쿠키 유지
              document.cookie = sShippingCountryCode4Cookie+'=' + $(".xans-layout-multishopshipping .xans-layout-multishopshippingcountrylist").val() +';path=/'+ ';expires=' + expires.toUTCString();
              if ($("#f_country").length > 0 && location.href.indexOf("orderform.html") > -1) {
                  $("#f_country").val(sShippingCountryValue).change();
              }
          }
      }
      // 언어선택 설정이 사용안함이면 숨김
      if (EC_SHOP_MULTISHOP_SHIPPING.bMultishopShippingLanguageSelection === false) {
          $('.xans-layout-multishopshipping .xans-layout-multishopshippinglanguagelist').hide();
          $('.xans-layout-multishoplist .xans-layout-multishoplistmultioption .xans-layout-multishoplistmultioptionlanguage').hide();
      } else {
          $('.thumb .xans-layout-multishoplistitem').hide();
      }

      // 배송국가 및 언어 설정이 둘 다 사용안함이면 숨김
      if (EC_SHOP_MULTISHOP_SHIPPING.bMultishopShipping === false) {
          $(".xans-layout-multishopshipping").hide();
          $('.xans-layout-multishoplist .xans-layout-multishoplistmultioption').hide();
      } else if (bShippingCountryProc === false && location.href.split("/").length == 4) { // 배송국가 값을 처리한 적이 없고, 메인화면일 때만 선택 레이어를 띄움
          var sShippingCountryValue = $(".xans-layout-multishopshipping .xans-layout-multishopshippingcountrylist").val();
          $(".xans-layout-multishopshipping .xans-layout-multishopshippingcountrylist").val(sShippingCountryValue);
          $(".xans-layout-multishoplist .xans-layout-multishoplistmultioption a .ship span").text(" : "+$(".xans-layout-multishopshipping .xans-layout-multishopshippingcountrylist option:selected").text().split("SHIPPING TO : ").join(""));
          // 배송국가 선택을 사용해야 레이어를 보이게 함
          if (EC_SHOP_MULTISHOP_SHIPPING.bMultishopShippingCountrySelection === true) {
              $(".xans-layout-multishopshipping").show();
          }
      }

      $(".xans-layout-multishopshipping .close").on("click", function() {
          $(".xans-layout-multishopshipping").hide();
      });

      $(".xans-layout-multishopshipping .ec-base-button a").on("click", function() {
          var expires = new Date();
          expires.setTime(expires.getTime() + (30 * 24 * 60 * 60 * 1000)); // 30일간 쿠키 유지
          document.cookie = sShippingCountryCode4Cookie+'=' + $(".xans-layout-multishopshipping .xans-layout-multishopshippingcountrylist").val() +';path=/'+ ';expires=' + expires.toUTCString();

          // 도메인 문제로 쿠키로 배송국가 설정이 안 되는 경우를 위해 query string으로 배송국가 값을 넘김
          var sQuerySting = (EC_SHOP_MULTISHOP_SHIPPING.bMultishopShippingCountrySelection === false) ? "" : "/?country="+encodeURIComponent($(".xans-layout-multishopshipping .xans-layout-multishopshippingcountrylist").val());

          location.href = '//'+$(".xans-layout-multishopshipping .xans-layout-multishopshippinglanguagelist").val()+sQuerySting;
      });
      $(".xans-layout-multishoplist .xans-layout-multishoplistmultioption a").on("click", function() {
          $(".xans-layout-multishopshipping").show();
      });
  }
});