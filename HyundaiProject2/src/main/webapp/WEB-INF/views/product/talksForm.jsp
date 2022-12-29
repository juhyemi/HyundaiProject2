<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet"  type="text/css"  href="./talksForm.css">
  <link rel="stylesheet"  type="text/css"  href="./c1.css">
</head>
<body>
<%-- <%@ include file="/layout/header.jsp"%> --%>
  <div id="wrap">
      <div id="container">
          <div id="contents">
  <div class="xans-element- xans-board xans-board-writepackage-9 xans-board-writepackage xans-board-9 cscenter-wrap "><div class="header">
          <h2>Help</h2>
      </div> 
  <form id="boardWriteForm" name="" action="/exec/front/Board/write/9" method="post" target="_self" enctype="multipart/form-data">
  <input id="board_no" name="board_no" value="9" type="hidden">
  <input id="product_no" name="product_no" value="0" type="hidden">
  <input id="move_write_after" name="move_write_after" value="/board/consult/list.html?board_no=9" type="hidden">
  <input id="cate_no" name="cate_no" value="" type="hidden">
  <input id="bUsePassword" name="bUsePassword" value="" type="hidden">
  <input id="order_id" name="order_id" value="" type="hidden">
  <input id="is_post_checked" name="is_post_checked" value="" type="hidden">
  <input id="isExceptBoardUseFroalaImg" name="isExceptBoardUseFroalaImg" value="" type="hidden">
  <input id="isGalleryBoard" name="isGalleryBoard" value="" type="hidden">
  <input id="b640a05b4a90b" name="b640a05b4a90b" value="113f556eb3b5fc707e90d7d17b9f4b6d" type="hidden">
  <input id="fix_title_form_0" name="fix_title_form_0" value="문의" type="hidden">
  <input id="bulletin_type" name="bulletin_type" value="title" type="hidden"><div class="xans-element- xans-board xans-board-write-9 xans-board-write xans-board-9 cscenter-layout ">
  <div class="contents-block">            
              <div class="cscenter-base-block">                 
                  <div class="base-block">
                      <div class="title-block">
                          <h2>1:1 Q&amp;A</h2>
                      </div>
                      <fieldset>
  <div class="select-gruop">
                              <select id="board_category" name="board_category" fw-filter="" fw-label="" fw-msg="">
  <option value="1">상품문의</option>
  <option value="2">취소문의</option>
  <option value="3">반품문의</option>
  <option value="4">배송문의</option>
  <option value="5">교환문의</option>
  <option value="6">수선접수 문의</option>
  <option value="7">기타</option>
  </select>                            <select id="subject" name="subject" fw-filter="isFill" fw-label="제목" fw-msg="">
  <option value="문의">문의</option>
  </select>                        </div>
                          <div class="displaynone">
                              <input id="email1" name="email1" fw-filter="" fw-label="이메일" fw-alone="N" fw-msg="" class="mailId" disabled="1" value="rlawngp124" type="text">@<input id="email2" name="email2" fw-filter="" fw-label="이메일" fw-alone="N" fw-msg="" class="mailAddress" readonly="readonly" disabled="1" value="naver.com" type="text"><select id="email3" fw-filter="" fw-label="이메일" fw-alone="N" fw-msg="" disabled="1">
  <option value="">- 이메일 선택 -</option>
  <option value="naver.com" selected="selected">naver.com</option>
  <option value="daum.net">daum.net</option>
  <option value="nate.com">nate.com</option>
  <option value="hotmail.com">hotmail.com</option>
  <option value="yahoo.com">yahoo.com</option>
  <option value="empas.com">empas.com</option>
  <option value="korea.com">korea.com</option>
  <option value="dreamwiz.com">dreamwiz.com</option>
  <option value="gmail.com">gmail.com</option>
  <option value="etc">직접입력</option>
  </select> <span class="gBlank5">답변여부를 메일로 받으시겠습니까? <input id="cons_re0" name="cons_re" fw-filter="" fw-label="답변여부" fw-msg="" value="Y" type="radio" checked="checked"><label for="cons_re0">예</label>
  <input id="cons_re1" name="cons_re" fw-filter="" fw-label="답변여부" fw-msg="" value="N" type="radio"><label for="cons_re1">아니오</label></span>
                          </div>
                          <div class="textarea">             
              <div class="fr-box fr-ltr ec-froala-theme fr-basic fr-top" role="application"><div class="fr-wrapper" dir="ltr"><iframe src="about:blank" frameborder="0" id="content_IFRAME" class="fr-iframe" style="height: 440px;"></iframe></div><div class="second-toolbar"><span class="fr-counter" style="bottom: 1px; margin-right: 2px;">문자 : 0</span></div></div><textarea style="width: 100%; display: none;" name="content" id="content" class="ec-fr-never-be-duplicated"></textarea>           
              </div>
                          <div class="attach-block ">
                              <ul>
  <li class="title">파일첨부</li>
                                  <li>
                                      <input name="attach_file[]" type="file">                                    <input name="attach_file[]" type="file">                                </li>
                              </ul>
  </div>
                          <div class="ul-desc">
                              <ul>
  <li>
                                      게시글 작성시 개인정보(전화번호, 이메일, 이름 등)가 포함되지 않도록 주의해 주세요.<br>
                                      개인정보가 포함된 경우 관리자에 의해 통보 없이 삭제될 수 있습니다.<br>
  </li>
                                  <li>제품 불량 및 오배송의 경우, 해당 제품 사진을 등록해주시면 보다 빠르고 정확한 안내가 가능합니다.</li>
                                  <li>첨부파일의 용량은 최대 10MB입니다.</li>
                                  <li>가로 사이즈가 587픽셀을 초과하는 경우 자동으로 리사이징 됩니다.</li>
                              </ul>
  </div>
                      </fieldset>
  </div>             
                  <div class="side-block">
                      
                      <div class="xans-element- xans-board xans-board-listpackage-3 xans-board-listpackage xans-board-3 faq-block "><div class="title-block">
                              <h2>FAQ TOP5</h2>
                              <span><a href="/cscenter/faq.html">전체보기</a></span>
                          </div>
  <div class="faq-item-block">
                              <dl class="item-member item-top5 active">
  <dt><h2>회원가입 적립금은 바로 사용 가능한가요?</h2></dt>
      <dd>
          <p>회원가입 시 가입 적립금 4,000원을 지급해 드리며 구매 시 바로 사용 가능합니다.</p>
      </dd>
  </dl>
  <dl class="item-member item-top5 active open">
  <dt><h2>마뗑킴 회원가입 혜택에 대해 궁금해요.</h2></dt>
      <dd>
          <p>
              마뗑킴의 회원이 되시면 다양한 혜택을 받아 보실 수 있습니다.<br><br>
              ① 회원가입 시 바로 사용할 수 있는 4,000원 신규 적립금지급<br>
              ② 구매금액에 대한 1% 적립금지금<br>
              -1만원 이상 상품 구매후 배송이 완료 되면 1% 적립금 지급<br>
  
              ③ 매월 회원등급별 혜택제공<br>
              ‣ VVIP<br>
              적립 10%,구매 할인 7%,생일쿠폰 30%<br>
  
              ‣ VIP<br>
              적립 7%,구매 할인 5%,생일쿠폰 20%<br>
  
              ‣ GOLD<br>
              적립 4%,구매 할인 3%,생일쿠폰 15%<br>
              ‣ SILVER<br>
              적립 2%,구매 할인 2%,생일쿠폰 10%<br>
              ‣ NEW MEMBER<br>
              WELCOME 쿠폰 5%<br><br>
              + SALE 상품을 제외한 모든 상품, 상시 적용<br>
              + 비회원은 멤버십 혜택이 적용되지 않습니다.<br>
              + 6개월마다 선정하여 등급 조정이 됩니다.<br>
              + 6개월 기준으로 매월 1일 변경될 예정입니다.<br>
              + 이번 회원 등급은 지난 6개월간 구매 고객님들을 대상으로 선정될 예정이며, 회원 로그인 후 구매 건에 대해서만 산정되는 점 참고부탁 드립니다.<br>
              ④ 상시무료배송
          </p>
      </dd>
  </dl>
  <dl class="item-member item-top5 active open">
  <dt><h2>생일쿠폰 및 할인 쿠폰에 대해 알려주세요.</h2></dt>
      <dd>
          <p>
              -생일쿠폰은 회원가입시 등록한 생일에 한아이디당 1년에 한번 발급됩니다.(사용기간-발급일로부터 30일 이내)<br>
              ‣ VVIP 30% 생일쿠폰 발송.<br>
              ‣ VIP 20%생일쿠폰 발송.<br>
              ‣ GOLD 15%생일쿠폰 발송.<br>
              ‣ SILVER 10%생일쿠폰 발송<br>
              - 매달 지금되는 쿠폰은 당월에 사용하지않을 경우 소멸됩니다.<br>
              - 회원 탈퇴시 모든 적립금/할인 혜택은 자동 소멸되며,이전 등급으로 재조정은 불가하니 꼭 신중히 처리 부탁드립니다.<br>
              - 마똉킴의 회원이 되시면 이 외 더 많은 혜택을 받으실 수 있습니다. [회원혜택보기 / MATINKIM MEMBERSHIP BENEFITS]
          </p>
      </dd>
  </dl>
  <dl class="item-member item-top5 active open">
  <dt><h2>비밀번호를 분실했는데 어떻게 해야하나요?</h2></dt>
      <dd>
          <p>
              로그인 페이지에서 아이디/비밀번호 찾기 버튼을 눌러주세요.<br>
              휴대폰인증을 받으시거나 이메일로 비밀번호 받아보신후 로그인을 해주시면 됩니다.<br><a href="/member/id/find_id.html">아이디 찾기</a> &nbsp;&nbsp; <a href="/member/passwd/find_passwd_info.html">비밀번호 찾기</a>
          </p>
      </dd>
  </dl>
  <dl class="item-offline item-top5 active open">
  <dt><h2>매장에서 구매한 상품을 온라인으로 반품할 수 있나요?</h2></dt>
      <dd>
          <p>
              오프라인매장과 온라인은 개별시스템으로 운영되고 있어 온라인으로 반품은 불가합니다.<br>
              매장에서 구매하신 상품은 영수증을 지참하시어 찾아주시면 처리해드리도록 하겠습니다.
          </p>
      </dd>
  </dl>
  </div>
  </div>
                  </div> 
              </div>
              <div class="btn-group-center submit-block">
                  
                  <button type="button" class="btn btn-md btn-white btn-pd32" onclick="document.location.href='/board/11-문의/9/';"><span>취소</span></button>
                  <button type="button" class="btn btn-md btn-dark btn-pd32" onclick="BOARD_WRITE.form_submit('boardWriteForm');"><span>확인</span></button>
              </div>
          </div>
  </div>
  </form>
  </div>
  
          </div>
      </div>
  </div>
  </div>
  <div class="fr-tooltip ec-froala-theme" style="left: -3000px; top: 321px; margin-left: 0px; margin-top: 0px; position: fixed;">기타 더보기</div>
</body>
<%-- <%@ include file="/layout/footer.jsp"%> --%>
</body>
</html>