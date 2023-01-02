<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/header.jsp"%>

</head>

<body>    



<h1>Security Test</h1>

<p>principal : <sec:authentication property="principal"/></p>
<p>MemberDTO : <sec:authentication property="principal.member"/></p>
<p>사용자이름 : <sec:authentication property="principal.member.mem_name"/></p>
<p>사용자아이디 : <sec:authentication property="principal.member.mem_id"/></p>
<p>사용자 권한 리스트 : <sec:authentication property="principal.member.authList"/></p>
<p>사용자 이메일 : <sec:authentication property="principal.member.mem_email"/></p>
<p>사용자 전화번호 : <sec:authentication property="principal.member.mem_phone"/></p>


<%@ include file="./include/footer.jsp"%>