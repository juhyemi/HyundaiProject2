<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main1.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main2.css">
<link rel="stylesheet" href="${contextPath}/resources/css/member/find_id.css" type="text/css">
</head>
<body class="magiedumatin">    
<%@ include file="../include/header2.jsp"%>

<script type="text/javascript">
$(document).ready(function(){
	
	$("#findBtn").on("click", function(){
		
		var csrfHeadName="${_csrf.headerName}";
	    var csrfTokenValue="${_csrf.token}";
		
	    var mem_id = $("#member_id").val();
		var mem_name = $("#name").val();
		var mem_email = $("#email").val();
		
		$.ajax({
			
			url : "/member/findPwd",
			type : "post",
			data : {
				mem_id : mem_id,
				mem_name : mem_name,
				mem_email : mem_email
			},
			beforeSend : function(xhr) {
		        xhr.setRequestHeader(csrfHeadName, csrfTokenValue);
		    },
		    success : function(result){
		    	if(result == null){
		    		alert("일치하는 회원 정보가 없습니다.");
		    	}else{
		    		window.location.href = "/member/pwModify"
		    	}
		    },
		    error : function(error){
		    	console.log(error);	
		    }
		});
		
		
		
	});
	
	
});
</script>

<div id="wrap">
	<div id="container">
		<div id="contents">
			
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
							<button type="button" class="btn btn-md btn-dark btn-pd32" id="findBtn">
								<span>확인</span>
							</button>
						</div>

					</div>
				</div>
		</div>
	</div>
</div>

<%@ include file="../include/footer.jsp"%>