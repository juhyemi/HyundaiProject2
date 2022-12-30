<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

<link rel="stylesheet" type="text/css" href="/js/slick/slick.css" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="../resources/css/main1.css">
<link rel="stylesheet" type="text/css" href="../resources/css/main2.css">

</head>

<body> 

<%@ include file="../include/header2.jsp"%>
<div id="wrap">
	<div id="container">
		<div id="contents">

			<div class="login-wrap page">
				<form id="member_form_2722436421" name=""
					action="/exec/front/Member/login/" method="post" target="_self"
					enctype="multipart/form-data">
					<input id="returnUrl" name="returnUrl"
						value="/order/orderform.html?basket_type=all_buy&amp;delvtype=A"
						type="hidden"> <input id="forbidIpUrl" name="forbidIpUrl"
						value="/index.html" type="hidden"> <input
						id="certificationUrl" name="certificationUrl"
						value="/intro/adult_certification.html?returnUrl=%2Forder%2Forderform.html%3Fbasket_type%3Dall_buy%26delvtype%3DA"
						type="hidden"> <input id="sIsSnsCheckid"
						name="sIsSnsCheckid" value="" type="hidden"> <input
						id="sProvider" name="sProvider" value="" type="hidden">
					<div class="xans-element- xans-member xans-member-login">
						<!--
      $defaultReturnUrl = /index.html
      $forbidIpUrl = member/adminFail.html
  -->
						<div class="login">
							<div class="title">
								<h1>Log in</h1>
								<button type="button" class="btn-close" onclick="loginClose();">
									<span>close</span>
								</button>
							</div>


							<fieldset>
								<div class="form-block">
									<label class="id ePlaceholderEach required" title="아이디*">
										<p class="form-title">아이디*</p> <input id="member_id"
										name="member_id" fw-filter="isFill" fw-label="아이디" fw-msg=""
										class="inputTypeText" placeholder="아이디*" value="" type="text">
										<div class="err-msg">아이디 항목은 필수 입력값입니다.</div>
									</label>
								</div>

								<div class="form-block">
									<label class="password ePlaceholderEach required" title="패스워드*">
										<p class="form-title">패스워드*</p> <input id="member_passwd"
										name="member_passwd"
										fw-filter="isFill&amp;isMin[4]&amp;isMax[16]" fw-label="패스워드"
										fw-msg="" autocomplete="off" value="" type="password"
										placeholder="패스워드*">
										<div class="err-msg">패스워드 항목은 필수 입력값입니다.</div>
									</label>
								</div>

								<p class="security">
									<input id="member_check_save_id0" name="check_save_id"
										fw-filter="" fw-label="아이디저장" fw-msg="" value="T"
										type="checkbox"><label for="member_check_save_id0">아이디
										저장</label>
								</p>


								<div class="find-block">
									<ul>
										<li><a href="/member/id/find_id.html">아이디찾기</a></li>
										<li><a href="/member/passwd/find_passwd_info.html">비밀번호찾기</a></li>
									</ul>
								</div>

								<ul class="snsArea">
									<li class=""></li>
									<li class=""></li>
									<li class="displaynone"><a href="#none" onclick=""
										class="sns-login facebook"><i></i><span>페이스북으로 시작하기</span></a>
									</li>
									<li class="displaynone"><a href="#none" onclick=""
										class="sns-login google"><i></i><span>구글로 시작하기</span></a></li>
									<li class="displaynone"><a href="#none" onclick=""
										class="sns-login line"><i></i><span>LINE으로 시작하기</span></a></li>
									<li class=""></li>
									<li class="displaynone"><a href="#none" onclick=""
										class="sns-login yahoo"><i></i><span>Yahoo!로 시작하기</span></a></li>
								</ul>
								<div class="guest-order-block  "></div>

								<div class="join-block ">
									<div class="util">
										<p>아직 회원이 아니신가요?</p>
										<p></p>
									</div>

									<a href="/member/join.html"
										class="btn btn-lg btn-white btn-full"><span>회원가입 후
											혜택받기</span></a>

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