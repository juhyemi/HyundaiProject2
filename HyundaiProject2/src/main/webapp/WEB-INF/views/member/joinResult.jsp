<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main1.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main2.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/member/joinResult1.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/member/joinResult2.css">
</head>
<body class="magiedumatin">
<%@ include file="../include/header2.jsp"%>

	<div id="wrap">
		<div id="container">
			<div id="contents">
				<div class="join-complete-wrap">

					<div class="xans-element- xans-member xans-member-joincomplete ">
						<div class="header-block">
							<h2>Welcome at CHYSK 5</h2>
							<p>CHYSK 5에 오신 것을 환영합니다.</p>
						</div>
						<div class="title-block">
							<h2>회원가입이 완료되었습니다.</h2>
						</div>
						<div class="detail-block">
							<table class="table-simple">
								<colgroup>
									<col style="width: 100px;">
									<col style="width: auto;">
								</colgroup>
								<tbody>
									<tr>
										<th>아이디</th>
										<td><span><c:out value="${member.mem_id}"/></span></td>
									</tr>
									<tr>
										<th>이름</th>
										<td><span><c:out value="${member.mem_name}"/></span></td>
									</tr>
									<tr>
										<th>이메일</th>
										<td><span><c:out value="${member.mem_email}"/></span></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="btn-group mt40">
							<!-- <a href="/member/login.html" class="btn btn-lg btn-dark"><span>로그인</span></a> -->
							<a href="/" class="btn btn-lg btn-white">
								<span>완료</span>
							</a>
						</div>
					</div>





				</div>
			</div>
		</div>
	</div>


	<%@ include file="../include/footer.jsp"%>