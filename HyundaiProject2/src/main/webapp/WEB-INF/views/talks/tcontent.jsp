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
	  var answer = confirm ('해당 글을 작성하시겠습니까?');
	  if(answer){
		  
	    $("#deleteForm").submit();
	
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
								<h2><a href="/talks/tlist">Fashion Talks</a></h2>
							</div>
							
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
											<form id="deleteForm" action="/talks/delete" method="post">
												<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
												<input type="hidden" name="talks_id" value="${talksContent.talks_id }" />
											</form>

											<a href="/talks/tlist" class="btn btn-sm btn-dark btn-pd32">
												<span>Back to List</span>
											</a>
										</div>
									</div>
								</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>
