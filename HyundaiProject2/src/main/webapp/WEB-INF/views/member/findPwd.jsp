<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main1.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main2.css">
<link rel="stylesheet" href="${contextPath}/resources/css/member/find_id.css" type="text/css">
<script type="text/javascript">
$(document).ready(function(){
	$("#findBtn").on("click", function(){
		$("#findPwdFrm").submit();
	});
});
</script>
</head>
<body class="magiedumatin">    
<%@ include file="../include/header2.jsp"%>

<div id="wrap">
	<div id="container">
		<div id="contents">
				<div class="xans-element- xans-member xans-member-findpasswd member-wrap ">
					<div class="title-block">
						<h2>비밀번호 찾기</h2>
					</div>
					<form action="/member/findPwd" method="post" id="findPwdFrm">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
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
								<button type="button" class="btn btn-md btn-dark btn-pd32" id="findBtn">
									<span>확인</span>
								</button>
							</div>
	
						</div>
					</form>
				</div>
		</div>
	</div>
</div>

<%@ include file="../include/footer.jsp"%>