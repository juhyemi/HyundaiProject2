<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main1.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main2.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/mypage/modify.css">
<link rel="stylesheet" type="text/css" href="/js/slick/slick.css" crossorigin="anonymous">
</head>
<body class="magiedumatin">    
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
	
	var msg = ${msg};
	
	if(msg != null){
		alert(msg);
	}
	
});

</script>

<script type="text/javascript">
function memberEditAction(){
	
	var csrfHeadName="${_csrf.headerName}";
    var csrfTokenValue="${_csrf.token}";
	var input_pwd = $("#passwd").val();
	
	if(input_pwd == ''){
		alert("비밀번호를 입력해주세요.");
		$("#passwd").focus();
	}
	
	$.ajax({
		url : '/member/pwCheck',
		type : 'post',
		data : {
			input_pwd : input_pwd
		},
		beforeSend : function(xhr) {	
	        xhr.setRequestHeader(csrfHeadName, csrfTokenValue);
	    },
	    success : function(result){
	    	if(result == '1'){
	    		$("#editForm").submit();
	    	}else{
	    		alert("비밀번호를 다시 확인해주세요.");
	    		$("#passwd").val('');
	    		$("#passwd").focus();
	    	}
	    },
	    error : function(error){
	    	console.log(error);
	    }
		
	});
	
}
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
							<li><a href="/mypage/myResell">나의 판매 목록</a></li>
							<li class="js-board"><a
								href="/mypage/myarticle">내가 쓴 글</a></li>
							<li class="js-modify active"><a href="/mypage/modify">내 계정</a></li>
							<li onclick="logoutSubmit();"><a href="javascript:void(0)">로그아웃</a></li>
						</ul>
						
						<form id="logoutFrm" action="/member/logout" method="post">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						</form>
					</div>
					<div class="contents-block">

						<div class="title-block">
							<h2>내 계정</h2>
						</div>

						<form id="editForm" name="editForm" action="/member/modify" method="post">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
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
												<input id="passwd" name="password" autocomplete="off" maxlength="16" value="" type="password" placeholder="비밀번호*">
												<div class="err-msg">비밀번호 항목은 필수 입력값입니다.</div>
											</label>
										</div> 

										<div>
											<div class="form-block">
												<label class="ePlaceholderEach required">
													<p class="form-title active">이름*</p> 
													<input id="name" name="mem_name" class="ec-member-name" placeholder="" maxlength="30" value="${member.mem_name}" type="text">
												</label>
											</div>
										</div>

										<div class=" ePlaceholderGroup mt40" title="휴대전화*"
											data-required="">
											<div class="form-block phone-block flex-column-2">
												<label class="ePlaceholder required">
													<p class="form-title active">휴대전화*</p>
													<div class="phone">
														<input id="mobile1" name="mobile1" maxlength="4"
															value="${member.mobile1}" type="text">
														-
														<input id="mobile2" name="mobile2" maxlength="4"
															value="${member.mobile2}" type="text">
														-
														<input id="mobile3" name="mobile3" maxlength="4"
															value="${member.mobile3}" type="text">
													</div>
												</label>

											</div>

										</div>

										<div class="mt50">
											<div class="form-block email-block">
												<label class="ePlaceholderEach required">
													<p class="form-title active">이메일*</p> 
													<input id="email1" name="mem_email" value="${member.mem_email}" type="text">
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
															<input id="birth_year" name="birth_year" class="inputTypeText" placeholder="생년" maxlength="4" 
															value="${member.birth_year}" type="text">
													
														</label> 
														<label data-required="displaynone" title="월*" class="ePlaceholderEach">
															<p class="form-title">월</p> 
															<input id="birth_month" name="birth_month" class="inputTypeText" placeholder="월" maxlength="2" value="${member.birth_month}" type="text">
														</label> 
														<label data-required="displaynone" title="일*" class="ePlaceholderEach">
															<p class="form-title">일</p> 
															<input id="birth_day" name="birth_day" class="inputTypeText" placeholder="일" maxlength="2" value="${member.birth_day}" type="text">
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

<%@ include file="../include/footer.jsp"%>