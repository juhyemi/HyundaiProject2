<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>check 입니다.</h1>

	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
				<th>닉네임</th>
				<th>직업</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="board" items="${board}">
				<tr>
					<td><c:out value="${board.name}"></c:out></td>
					<td><c:out value="${board.job }"></c:out></td>

				</tr>
			</c:forEach>
		</tbody>
	</table>


</body>
</html>