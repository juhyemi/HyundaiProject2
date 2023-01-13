<%
// 파일명 : /memeber/findIdResult.jsp
// 작성자 : 신수진
// 작성일자 : 2022/12/28
// 아이디 찾기 결과 페이지
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main1.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main2.css">
<link rel="stylesheet" href="${contextPath}/resources/css/member/find_id.css" type="text/css">
</head>
<body class="magiedumatin">
	<%@ include file="../include/header2.jsp"%>

	<div id="wrap">
		<div id="container">
			<div id="contents">



				<div class="xans-element- xans-member xans-member-findidresult member-wrap">
					<div class="title-block">
						<h2>아이디 찾기</h2>
					</div>
					<div class="find-result-block">
						<c:if test="${empty member}">
							<h2>회원 정보가 존재하지 않습니다.</h2>
							<div class="btn-group-center mt40">
								<button type="button" onclick="location.href='/member/findId'" class="btn btn-md btn-white btn-pd32 ">
									<span>아이디 찾기</span>
								</button>
								<button type="button" onclick="location.href='/member/login'" class="btn btn-md btn-white btn-pd32 ">
									<span>로그인</span>
								</button>
							</div>
						</c:if>
						<c:if test="${not empty member}">
							<h2>고객님 아이디 찾기가 완료 되었습니다.</h2>
							<p>
								다음 정보로 가입된 아이디가 총 <span>1</span>개 있습니다.
							</p>
	
						
							<div class="radio-block mt20">
								<label class="result"> <span class="id">${member.mem_id}</span></label>
								<label class="result"><span class="gaip">( 개인회원, <fmt:formatDate value="${member.mem_joindate}" pattern="yyyy-MM-dd"/> 가입 )</span></label>
							</div>
	
	
							<div class="btn-group-center mt40">
								<button type="button" onclick="location.href='/member/login'" class="btn btn-md btn-white btn-pd32 ">
									<span>로그인</span>
								</button>
								<button type="button" onclick="location.href='/member/findPwd'" class="btn btn-md btn-dark btn-pd32 ">
									<span>비밀번호 찾기</span>
								</button>
							</div>
						
						</c:if>
					</div>
				</div>

			</div>
		</div>
	</div>

	<%@ include file="../include/footer.jsp"%>