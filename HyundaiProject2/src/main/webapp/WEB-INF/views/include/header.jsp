<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
   content="width=device-width,initial-scale=1,user-scalable=no">
<meta name="_csrf" th:content="${_csrf.token}"/>
<meta name="_csrf_header" th:content="${_csrf.headerName}"/>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" 
	integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" 
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript" src="${contextPath}/resources/js/jquery/optimizer.js"></script>
<script type="text/javascript" src="${contextPath}/resources/js/jquery/security.js"></script>
<title>CHYSK 5</title>
<link rel="stylesheet" href="${contextPath}/resources/css/font.css" type="text/css">
<link rel="icon" href="${contextPath}/resources/img/common/favicon2.png">