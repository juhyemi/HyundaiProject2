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
				var proid ="130";
				var proname="MATIN SYMBOL RAGLAN SLEEVE MTM IN BLACK";
				var pro_opt_size="S";
				var data = {
				    pro_id : proid,
				    pro_name : proname,
				    pro_opt_size : pro_opt_size
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