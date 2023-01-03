<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" href="${contextPath}/resources/css/main1.css" type="text/css">
<link rel="stylesheet" href="${contextPath}/resources/css/member/find_id.css" type="text/css">
</head>
<body>    
<%@ include file="../include/header2.jsp"%>

<div id="wrap">
	<div id="container">
		<div id="contents">
			<form id="findPasswdForm" action="/member/findPwd method="post" >
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				<input id="nextUrl" name="nextUrl"
					value="/member/passwd/find_passwd_question.html" type="hidden">
				<input id="resultURL" name="resultURL" value="" type="hidden">
				<div
					class="xans-element- xans-member xans-member-findpasswd member-wrap ">
					<div class="title-block">
						<h2>비밀번호 찾기</h2>
					</div>
					<div class="find-block">
						<fieldset>
							<div class="form-block mt20">
								<label class="ePlaceholderEach required" title="아이디">
									<p class="form-title">아이디</p> 
									<input id="member_id" name="mem_id" class="lostInput" placeholder="아이디" value="" type="text">
								</label>
							</div>

							<div class="form-block name mt20">
								<label class="ePlaceholderEach required" title="이름">
									<p class="form-title">이름</p> 
									<input id="name" name="mem_name" class="lostInput ec-member-name" placeholder="이름" value=""
									type="text">
								</label>
							</div>

							<div class="form-block email mt20" id="email_view" style="">
								<label class="ePlaceholderEach required" title="이메일">
									<p class="form-title">이메일</p> 
									<input id="email" name="mem_email" class="lostInput" placeholder="이메일" value="" type="text">
								</label>
							</div>

						</fieldset>
						<div class="btn-group-center mt40">
							<button type="button" class="btn btn-md btn-dark btn-pd32" onclick="frmSubmit();">
								<span>확인</span>
							</button>
						</div>

					</div>
				</div>
			</form>
		</div>
	</div>
</div>


<%@ include file="../include/footer.jsp"%>