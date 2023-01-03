<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/talks/talksContent.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</head>
<body>
	<%@ include file="../include/header2.jsp"%>
<script type="text/javascript">
$(document).ready(function(){
	
	
	
	 $("#btnDel").click(function (){
	  var answer = confirm ('해당 글을 삭제하시겠습니까? 삭제 후 되돌리기는 불가능합니다.');
	  if(answer){
	
	    location.replace("delete");
	    alert("삭제되었습니다.");
	
	  }
	 });
	
});
 </script>

 
	<div id="wrap">
		<div id="container">
			<div id="contents">
				<div class="cscenter-wrap">
					<div class="cscenter-layout">
						<div class="xans-element- xans-board xans-board-readpackage-1 xans-board-readpackage xans-board-1 contents-block ">
							<div class="title-block">
								<h2>Talks</h2>
							</div>
							<form id="BoardDelForm" name="" action="/exec/front/Board/del/1" method="post" target="_self" enctype="multipart/form-data">
								<div class="xans-element- xans-board xans-board-read-1 xans-board-read xans-board-1 ">
									<div class="board-read-block">
										<ul class="title">
											<li><a href="">${talksContent.talks_title}</a> <span><fmt:formatDate value="${talksContent.talks_regdate}" pattern="yyyy-MM-dd" /></span></li>
										</ul>
										<div class="detail">
											<div class="fr-view fr-view-article">

												<p>
													<strong><span style="font-size: 14px;">${talksContent.talks_content}</span></strong>
												</p>

											</div>
										</div>
										<div class="btn-group-center mt40">
											<a id="btnDel" href="#" class= "btn btn-sm btn-white btn-pd32 displaynone">
												<span>Delete</span>
											</a>

											<a href="/talks/tlist" class="btn btn-sm btn-dark btn-pd32">
												<span>Back to List</span>
											</a>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>
