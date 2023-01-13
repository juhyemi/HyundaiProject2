<%
// 파일명 : /memeber/login.jsp
// 작성자 : 신수진
// 작성일자 : 2022/12/28
// 로그인 페이지
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main1.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main2.css">
<link rel="stylesheet" type="text/css" href="/js/slick/slick.css" crossorigin="anonymous">
<script>
$(document).ready(function(){
    $('#member_passwd').keydown(function(e) {
	    if (e.keyCode == 13) {
	        $('#loginFrm').submit();
	    }
	});
	
});
</script>
</head>
<body class="magiedumatin">
	<%@ include file="../include/header2.jsp"%>

	<div id="wrap">
		<div id="container">
			<div id="contents">
				<div class="login-wrap page">

					<form id="loginFrm" action="/login" method="post">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						<div class="xans-element- xans-member xans-member-login">
							<div class="login">
								<div class="title">
									<h1>Log in</h1>
								</div>

								<fieldset>
									<div class="form-block">
										<label class="id ePlaceholderEach required" title="아이디*">
											<p class="form-title">아이디*</p> 
											<input id="member_id" name="username" class="inputTypeText" placeholder="아이디*" value="" type="text" />
											<div class="err-msg">아이디 항목은 필수 입력값입니다.</div>
										</label>
									</div>

									<div class="form-block">
										<label class="password ePlaceholderEach required" title="패스워드*">
											<p class="form-title">패스워드*</p> 
											<input id="member_passwd" name="password" autocomplete="off" value="" type="password" placeholder="패스워드*">
											<div class="err-msg">패스워드 항목은 필수 입력값입니다.</div>
										</label>
									</div>

									<p class="security">
										<input id="member_check_save_id0" name="remember-me" type="checkbox">
										<label for="member_check_save_id0">자동 로그인</label>
									</p>
									<a href="javascript:void(0)" class="btnLogin btn btn-lg btn-dark btn-full" onclick="loginSubmit();">
										<span>로그인</span>
									</a>
									
									<div class="find-block">
										<ul>
											<li><a href="/member/findId">아이디찾기</a></li>
											<li><a href="/member/findPwd">비밀번호찾기</a></li>
										</ul>
									</div>

									<div class="join-block ">
										<div class="util">
											<p>아직 회원이 아니신가요?</p>
											<p></p>
										</div>

										<a href="/member/join" class="btn btn-lg btn-white btn-full">
											<span>회원가입 후 혜택받기</span>
										</a>

									</div>
								</fieldset>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="../include/footer.jsp"%>