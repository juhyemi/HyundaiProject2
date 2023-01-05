<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main1.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/mypage/modify.css">
<link rel="stylesheet" type="text/css" href="/js/slick/slick.css" crossorigin="anonymous">
</head>
<body>    
<%@ include file="../include/header2.jsp"%>
<script type="text/javascript">
$(document).ready(function(){
	$("#delMemberBtn").on("click", function(){
		var result = confirm("정말 탈퇴하시겠습니까?");
		if(result){
			$("#delFrm").submit();
		}else{
			return;
		}
	});
});


</script>

<div id="wrap">
	<div id="container">
		<div id="contents">
			<div class="xans-element- xans-layout xans-layout-logincheck ">
			</div>

			<div class="myshop-wrap">

				<div
					class="xans-element- xans-myshop xans-myshop-asyncbenefit header ">
					<h2>
						Hello, <a href="/mypage/index"><span class="xans-member-var-name"><sec:authentication property="principal.member.mem_name"/></span></a>
					</h2>
				</div>

				<!-- myshop-layout -->
				<div class="myshop-layout">
					<!-- menu-block -->
					<div class="menu-block">
						<ul>
							<li class="js-order"><a href="/mypage/myorder">주문내역</a></li>
							<li class="js-board"><a
								href="/board/consult/list.html?board_no=9">1:1 문의</a></li>
							<li class="js-recent"><a
								href="/product/recent_view_product.html">최근 본 상품</a></li>
							<li><a href="#">나의 판매 목록</a></li>
							<li class="js-modify active"><a href="/mypage/modify">내 계정</a></li>
							<li onclick="logoutSubmit();"><a href="#">로그아웃</a></li>
						</ul>
						
						<form id="logoutFrm" action="/member/logout" method="post">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						</form>
					</div>
					<div class="contents-block">

						<div class="title-block">
							<h2>내 계정</h2>
						</div>

						<form id="editForm" name="editForm"
							action="/exec/front/Member/edit/" method="post" target="_self"
							enctype="multipart/form-data">
							<div
								class="xans-element- xans-member xans-member-edit modify-form-wrap">
								<div class="layout-block">
									<fieldset>
										<div
											class="xans-element- xans-myshop xans-myshop-asyncbenefit header-info ">
											<h2>
												<span><span class="xans-member-var-name"><sec:authentication property="principal.member.mem_name"/></span></span>
											</h2>
											<span>회원님은 <span class="xans-member-var-group_name">일반회원</span><span
												class="myshop_benefit_ship_free_message"></span>입니다.
											</span>
										</div>

										<div class="">
											<div class="form-block">
												<label class="ePlaceholderEach">
													<p class="form-title active">아이디*</p> 
													<input id="member_id" name="mem_id" value='<sec:authentication property="principal.member.mem_id"/>' class="inputTypeText"
													placeholder="" readonly="readonly" value="" type="text">
												</label>
											</div>
										</div>

										<div class="form-block">
											<label class="ePlaceholderEach required" title="비밀번호*">
												<p class="form-title">비밀번호*</p> 
												<input id="passwd" name="passwd" autocomplete="off" maxlength="16" value="" type="password" placeholder="비밀번호*">
												<div class="info-msg">(영문 대소문자/숫자/특수문자 중 2가지 이상 조합,
													10자~16자)</div>
												<div class="err-msg">비밀번호 항목은 필수 입력값입니다.</div>
											</label>
										</div>

										<div class="form-block">
											<label class="ePlaceholderEach required" title="비밀번호 확인*">
												<p class="form-title">비밀번호 확인*</p> 
												<input id="user_passwd_confirm" name="user_passwd_confirm" value="" type="password" placeholder="비밀번호 확인*">
												<div class="err-msg">비밀번호 확인 항목은 필수 입력값입니다.</div>
											</label>
										</div>

										<div>
											<div class="form-block">
												<label class="ePlaceholderEach required">
													<p class="form-title active">이름*</p> 
													<input id="name" name="mem_name" class="ec-member-name" placeholder="" maxlength="30" value='<sec:authentication property="principal.member.mem_name"/>' type="text">
												</label>
											</div>
										</div>

										<div class="form-block flex-column-2 post-block">
											<label class="ePlaceholderEach required">
												<p class="form-title active">우편번호</p> 
												<input id="postcode1" name="mem_postno" readonly="readonly" maxlength="14" 
												value="" type="text">
											</label>
											<button type="button"
												class="btn btn-sm btn-gray-border btn-120"
												onclick="sample6_execDaumPostcode();">
												<span>우편번호 찾기</span>
											</button>
										</div>

										<div class="form-block form-submit-address mt0">
											<label class="ePlaceholderEach required">
												<p class="form-title active">주소</p> 
												<input id="addr1" name="addr1" class="inputTypeText" readonly="readonly" value="" type="text"> 
												<input id="addr2" name="mem_address" class="inputTypeText" value="" type="text">
											</label>
										</div>

										<div class=" ePlaceholderGroup mt40" title="휴대전화*"
											data-required="">
											<div class="form-block phone-block flex-column-2">
												<label class="ePlaceholder required">
													<p class="form-title active">휴대전화*</p>
													<div class="phone">
														<input id="mobile1" name="mobile1" maxlength="4"
															value="<sec:authentication property="principal.member.mobile1"/>" type="text">
														-
														<input id="mobile2" name="mobile2" maxlength="4"
															value="<sec:authentication property="principal.member.mobile2"/>" type="text">
														-
														<input id="mobile3" name="mobile3" maxlength="4"
															value="<sec:authentication property="principal.member.mobile3"/>" type="text">
													</div>
												</label>

											</div>

										</div>

										<div class="mt50">
											<div class="form-block email-block">
												<label class="ePlaceholderEach required">
													<p class="form-title active">이메일*</p> 
													<input id="email1" name="mem_email1" value="<sec:authentication property="principal.member.mem_email"/>" type="text">
													<div class="err-msg-system" id="emailMsg"></div>
													<div class="err-msg">이메일 항목은 필수 입력값입니다.</div>
												</label>
											</div>
										</div>
									
										<div class="">
											<div class="form-block birthday-block">
												<div class="birthday">
													<div class="day">
														<label data-required="displaynone" title="생년*" class="ePlaceholderEach">
															<p class="form-title">생년</p> 
															<input id="birth_year" name="mem_year" class="inputTypeText" placeholder="생년" maxlength="4" 
															value="<sec:authentication property="principal.member.birth_year"/>" type="text">
													
														</label> 
														<label data-required="displaynone" title="월*" class="ePlaceholderEach">
															<p class="form-title">월</p> 
															<input id="birth_month" name="birth_month" class="inputTypeText" placeholder="월" maxlength="2" value="<sec:authentication property="principal.member.birth_month"/>" type="text">
														</label> 
														<label data-required="displaynone" title="일*" class="ePlaceholderEach">
															<p class="form-title">일</p> 
															<input id="birth_day" name="birth_day" class="inputTypeText" placeholder="일" maxlength="2" value="<sec:authentication property="principal.member.birth_day"/>" type="text">
														</label>
													</div>
												</div>
												<div class="form-err-msg birthday-msg">생년월일 항목은 필수
													입력값입니다.</div>
											</div>
										</div>

									</fieldset>
								</div>
								<div class="btn-group-between">
									<div class="btn-group-center">
										<a href="javascript:void(0);"
											class="btn btn-md btn-dark btn-150"
											onclick="memberEditAction()"><span>회원정보수정</span></a> 
										<a href="/mypage/index" class="btn btn-md btn-white btn-150"><span>취소</span></a>
									</div>

									<div class="btn-away-block">
										<a href="javascript:void(0);" class="btn btn-md btn-gray btn-150" id="delMemberBtn"><span>탈퇴</span></a>
									</div>
								</div>
							</div>
						</form>
						<form id="delFrm" action="/member/del" method="post">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
							<input type="hidden" name="mem_id" value='<sec:authentication property="principal.member.mem_name"/>'/>
						</form>
						<!-- // contents-block -->
					</div>
					<!-- // myshop-layout -->
				</div>
			</div>
		</div>
	</div>
</div>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수
                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }
                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>

<%@ include file="../include/footer.jsp"%>