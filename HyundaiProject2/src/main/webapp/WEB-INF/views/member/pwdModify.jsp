<%
// 파일명 : /memeber/pwdModify.jsp
// 작성자 : 신수진
// 작성일자 : 2022/12/28
// 비밀번호 수정 페이지
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main1.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main2.css">
<link rel="stylesheet" href="${contextPath}/resources/css/member/find_id.css" type="text/css">
</head>
<body class="magiedumatin">    
<%@ include file="../include/header2.jsp"%>
<script type="text/javascript">

function frmSubmit(){
	if($("#passwd").val() != $("#user_passwd_confirm").val()){
		alert("비밀번호가 일치하지 않습니다.");
		$("#passwd").focus();
		return;
	}
	$("#findPasswdForm").submit();
}

</script>

<div id="wrap">
	<div id="container">
		<div id="contents">
			<form id="findPasswdForm" action="/member/pwdModify" method="post" >
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				<input type="hidden" name="mem_id" value="${mem_id}"/>
				<div
					class="xans-element- xans-member xans-member-findpasswd member-wrap ">
					<div class="title-block">
						<h2>비밀번호 변경하기</h2>
					</div>
					<div class="find-block">
						<fieldset>
							<div class="form-block mt20">
								<label class="ePlaceholderEach required" title="새로운 비밀번호">
									<p class="form-title">새로운 비밀번호</p> 
									<input id="passwd" name="mem_pwd" autocomplete="off" maxlength="16" value="" type="password" placeholder="새로운 비밀번호*">
								</label>
							</div>

							<div class="form-block email mt20" id="email_view" style="">
								<label class="ePlaceholderEach required" title="새로운 비밀번호 확인">
									<p class="form-title">새로운 비밀번호 확인</p> 
									<input id="user_passwd_confirm" name="user_passwd_confirm" autocomplete="off" maxlength="16" value="" type="password" placeholder="새로운 비밀번호 확인*">
								</label>
							</div>

						</fieldset>
						<div class="btn-group-center mt40">
							<button type="button" class="btn btn-md btn-dark btn-pd32" onclick="frmSubmit();">
								<span>변경하기</span>
							</button>
						</div>

					</div>
				</div>
			</form>
		</div>
	</div>
</div>


<%@ include file="../include/footer.jsp"%>