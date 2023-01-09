<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main1.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main2.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/talks/talksContent.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/talks/fashionTalks.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</head>
<body class="magiedumatin">
	<%@ include file="../include/header2.jsp"%>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {

							var writer = $('input[name=writer]').val();
							var loginUser = $('input[name=loginUser]').val();

							$("#btnDel").click(function() {
								var answer = confirm('해당 글을 삭제하시겠습니까?');
								if (answer) {

									$("#deleteForm").submit();

								}
							});

							/* 첨부파일 조회를 위한 script */
							(function() {
								var talks_id = '<c:out value="${talks.talks_id}"/>';
								$
										.getJSON(
												"/board/getAttachList",
												{
													bno : bno
												},
												function(arr) {

													console.log(arr);

													var str = "";

													$(arr)
															.each(
																	function(i,
																			attach) {

																		//image type
																		if (attach.fileType) {
																			var fileCallPath = encodeURIComponent(attach.uploadPath
																					+ "/s_"
																					+ attach.uuid
																					+ "_"
																					+ attach.fileName);

																			str += "<li data-path='"+attach.uploadPath+"' data-uuid='"+attach.uuid+"' data-filename='"+attach.fileName+"' data-type='"+attach.fileType+"' ><div>";
																			str += "<img src='/display?fileName="
																					+ fileCallPath
																					+ "'>";
																			str += "</div>";
																			str
																					+ "</li>";
																		} else {

																			str += "<li data-path='"+attach.uploadPath+"' data-uuid='"+attach.uuid+"' data-filename='"+attach.fileName+"' data-type='"+attach.fileType+"' ><div>";
																			str += "<span> "
																					+ attach.fileName
																					+ "</span><br/>";
																			str += "<img src='/resources/img/attach.png'></a>";
																			str += "</div>";
																			str
																					+ "</li>";
																		}
																	});

													$(".uploadResult ul").html(
															str);

												});//end getjson
							})(); // end function

						});
	</script>


	<div id="wrap">
		<div id="container">
			<div id="contents">
				<div class="cscenter-wrap">
					<div class="cscenter-layout">
						<div class="xans-element- xans-board xans-board-readpackage-1 xans-board-readpackage xans-board-1 contents-block ">
							<div class="title-block">
								<h2>
									<a href="/talks/tlist">Fashion Talks</a>
								</h2>
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


									<div class="row">
										<div class="col-lg-12">
											<div class="panel panel-default">

												<div class="panel-heading">Files</div>
												<!-- /.panel-heading -->
												<div class="panel-body">

													<div class='uploadResult'>
														<ul>
														</ul>
													</div>
												</div>
												<!--  end panel-body -->
											</div>
											<!--  end panel-body -->
										</div>
										<!-- end panel -->
									</div>
									<!-- /.row -->







									<div class="btn-group-center mt40">
										<c:if test="${loginUser eq talksContent.member_mem_id}">
											<a id="btnDel" href="#" class="btn btn-sm btn-white btn-pd32">
												<span>Delete</span>
											</a>
										</c:if>
										<form id="deleteForm" action="/talks/delete" method="post">
											<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
											<input type="hidden" name="talks_id" value="${talksContent.talks_id }" />
											<input type="hidden" name="writer" value="${talksContent.member_mem_id }" />
											<input type="hidden" name="loginUser" value="${loginUser}" />
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
