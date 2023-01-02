<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/talks/talksContent.css">
</head>
<body>
	<%@ include file="../include/header2.jsp"%>
	   <script type="text/javascript">
	   
	   let cancel = $(".pop_bt");
      
        jQuery(document).ready(function() {
                $('#deleteModal').show();
        });
        //팝업 Close 기능
        function close_pop(flag) {
             $('#deleteModal').hide();
        };
        
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
										<div id="deleteModal" class="modal">

											<div class="modal-content">
												<p style="text-align: center;">
													<span style="font-size: 14pt;"><b><span style="font-size: 24pt;">해당 글을 삭제하시겠습니까?</span></b></span>
												</p>
												<div style="cursor: pointer; background-color: #DDDDDD; text-align: center; padding-bottom: 10px; padding-top: 10px;" onClick="close_pop();">
													<span class="del_bt" style="font-size: 13pt;"> 삭제 </span>
												</div>
												<div style="cursor: pointer; background-color: #DDDDDD; text-align: center; padding-bottom: 10px; padding-top: 10px;" onClick="close_pop();">
													<span class="pop_bt" style="font-size: 13pt;"> 취소 </span>
												</div>
											</div>

										</div>
										<div class="btn-group-center mt40">
											<a href="/talks/tlist" onclick=class= "btn btn-sm btn-white btn-pd32displaynone">
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
