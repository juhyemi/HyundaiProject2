<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main1.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main2.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/talks/talksContent.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/talks/fashionTalks.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script type="text/javascript">

/*  해당 글의 내용과 해당 글의 댓글을 보여주는 jsp
 	작성자 : 김주혜, 신수진
 */
		$(document).ready(function() {
			replyList();
			
			$('.comment_inbox_text').keydown(function(e) {
			    if (e.keyCode == 13) {
			    	replyAdd();
			    }
			});

			var writer = $('input[name=writer]').val();
			var loginUser = $('input[name=loginUser]').val();
		});
	
// 댓글 목록을 불러오는 함수
function replyList(){
	var csrfHeadName="${_csrf.headerName}";
    var csrfTokenValue="${_csrf.token}";
	var talks_id = ${talksContent.talks_id};
	var loginUser = '<sec:authentication property="principal.member.mem_id"/>';
	$.ajax({
		url : '/reply/replyList',
		type : 'post',
		data : {
			talks_id : talks_id
		},
		dataType : 'json',
		beforeSend : function(xhr) {
	        xhr.setRequestHeader(csrfHeadName, csrfTokenValue);
	    },
	    success : function(result){
	    	var $result = $(result);
	    	var len = $result.length;
	    	
	    	var tag = "";
	    	$("#replyLen").text(len);
	    	$result.each(function(idx, vo){
	    		var date = vo.com_regdate;
	    		date = moment(date).format('YYYY-MM-DD');
	    		tag += `
	    			<li class="CommentItem"><div class="comment_area">
							<div class="comment_box">
								<div class="comment_nick_box">
									<div class="comment_nick_info">
										<a id="cih89419437" href="#" role="button" aria-haspopup="true" aria-expanded="false" class="comment_nickname"> \${vo.member_mem_id} </a>
									</div>
								</div>
								<div class="comment_text_box">
									<p class="comment_text_view">
										<span class="text_comment"> \${vo.com_content} </span>
									</p>
								</div>
								<div class="comment_info_box">
									<span class="comment_info_date">\${date}</span>`;
							
				if(vo.member_mem_id === loginUser){
					tag += `<span style="padding-left: 5px;" class="removeBtn" onclick="replyDel('\${vo.com_id}');">Remove</span>`;
				}	
				tag += `</div>
						</div>
						</div>
						</li>`;
	    	});
	    	
	    	$(".comment_list").html(tag);
	    },
	    error : function(error){
	    	console.log(error);
	    }
	});
	
}

// 댓글 등록 함수
function replyAdd(){
	var com_content = $(".comment_inbox_text").val();
	var talks_id = ${talksContent.talks_id};
	var csrfHeadName="${_csrf.headerName}";
    var csrfTokenValue="${_csrf.token}";
    
	$.ajax({
		url : '/reply/replyAdd',
		type : 'post',
		data : {
			com_content : com_content,
			talks_talks_id : talks_id
		},
		beforeSend : function(xhr) {
	        xhr.setRequestHeader(csrfHeadName, csrfTokenValue);
	    },
		success : function(result){
			$(".comment_inbox_text").val('');
			replyList();
		},
		error : function(error){
			console.log(error);
		}
	});
}

// 댓글 삭제 함수
function replyDel(rno){
	var csrfHeadName="${_csrf.headerName}";
    var csrfTokenValue="${_csrf.token}";
    
    var result = confirm("댓글을 삭제하시겠습니까?");
    
    if(result){
    	$.ajax({
    		url : '/reply/replyDel',
    		type : 'post',
    		data : {
    			com_id : rno
    		},
    		beforeSend : function(xhr) {
    	        xhr.setRequestHeader(csrfHeadName, csrfTokenValue);
    	    },
    	    success : function(result){
    	    	alert("댓글이 삭제되었습니다.");
    	    	replyList();
    	    },
    	    error : function(error){
    	    	console.log(error);
    	    }
    	});
    }else{
    	return;
    }
	
}

	</script>
</head>
<body class="magiedumatin">
	<%@ include file="../include/header2.jsp"%>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {

							var writer = $('input[name=writer]').val();
							var loginUser = $('input[name=loginUser]').val();
							/* 글 삭제를 위한 script 
							   작성자 : 김주혜*/
							$("#btnDel").click(function() {
								var answer = confirm('해당 글을 삭제하시겠습니까? 삭제한 글은 다시 돌릴 수 없습니다.');
								if (answer) {
									$("#deleteForm").submit();
								}
							});

							/* 첨부파일 조회를 위한 script
							    작성자 : 김주혜 */
							(function() {
								var talks_id = '<c:out value="${talks.talks_id}"/>';
								$
										.getJSON(
												"/talks/getAttachList",
												{
													talks_talks_id : talks_talks_id
												},
												function(arr) {

													console.log(arr);

													var str = "";

													$(arr)
															.each(
																	function(i,
																			talks) {

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
																					+ attach.talks_loc
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
										<li><a href="javascript:void(0)">${talksContent.talks_title}</a> <span>${talksContent.member_mem_id }</span> <span style="width: 50%; float: left;"><fmt:formatDate value="${talksContent.talks_regdate}" pattern="yyyy-MM-dd" /></span> <span style="text-align: right;">Views <c:out value="${talksContent.views}" /></span></li>
									</ul>
									<div class="detail">
										<div class="fr-view fr-view-article">
											<div class="imgbox">

												<c:forEach var="list" items="${list }">
													<img src="C:\dev64\workspace-sts\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\HyundaiProject2\resources\images\talksImgs\${list.uuid }_${list.filename}"/>
												</c:forEach>
											</div>

											<p style="text-align: center; margin-top: 20px;">
												<strong><span style="font-size: 14px;">${talksContent.talks_content}</span></strong>
											</p>
											

										</div>
									</div>

									<div class="CommentBox">
										<div class="comment_option">
											<h3 class="comment_title">
												댓글 (<span id="replyLen"></span>)
											</h3>
										</div>

										<ul class="comment_list">

										</ul>


										<div class="CommentWriter">
											<div class="comment_inbox">
												<textarea placeholder="댓글을 남겨보세요" rows="1" class="comment_inbox_text" style="overflow: hidden; overflow-wrap: break-word; height: 20px;" spellcheck="false"></textarea>
											</div>
											<div class="comment_attach">
												<div class="attach_box"></div>
												<div class="register_box">
													<a href="javascript:void(0);" role="button" class="button btn_register" id="replyBtn" onclick="replyAdd();">등록</a>
												</div>
											</div>
										</div>
									</div>
									<div class="btn-group-center mt40">
										<c:if test="${loginUser eq talksContent.member_mem_id}">
											<a id="btnDel" href="#" class="btn btn-sm btn-white btn-pd32">
												<span>Delete</span>
											</a>
										</c:if>
										<!-- 삭제할 값 보내기 위한 form 생성 
											 작성자 : 김주혜 -->
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