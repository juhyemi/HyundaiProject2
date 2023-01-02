<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>

	<p class="addCart">
		<button type="button" class="addCart_btn">카트 담기</button>
		<script>
			$('.addCart_btn').click(function() {
				var opt_id = "3";
				var data = {
					product_option_pro_opt_id : opt_id
				};
				$.ajax({
					url : "/cartAjax/addCart",
					type : "post",
					data : data,
					success : function() {
						alert("카트 담기 성공");
					},
					error : function() {
						alert("카트 담기 실패");
					}
				});

			});
		</script>
</body>
</html>