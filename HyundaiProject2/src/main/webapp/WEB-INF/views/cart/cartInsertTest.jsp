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
		     var csrfHeadName="${_csrf.headerName}";
		     var csrfTokenValue="${_csrf.token}";
			$('.addCart_btn').click(function() {
				var proid ="577";
				var proname="DRESS UP CROP JACKET IN BROWN";
				var pro_opt_size="S";
				var name = $("#userName").val();
				var data = {
				    pro_id : proid,
				    pro_name : proname,
				    pro_opt_size : pro_opt_size
				};			
				
				$.ajax({
					url : "/cartAjax/addCart",
					type : "post",
					data : data,
					beforeSend : function(xhr) {
				        xhr.setRequestHeader(csrfHeadName, csrfTokenValue);
				    },
					success : function(result) {
						if(result=="update"){
							console.log("수량증가");
							alert("카트존재 수량 증가");
						}else{
							console.log("카트담기 성공");
							alert("카트 담기 성공");
						}						
					},
					error : function() {
						alert("카트 담기 실패");
					}
					
					
				 });
				
			    

			});
		</script>
</body>
</html>