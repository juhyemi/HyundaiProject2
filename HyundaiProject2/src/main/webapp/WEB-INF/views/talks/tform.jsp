<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main1.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main2.css">
<link rel="stylesheet" type="text/css" href="../resources/css/talks/talksForm.css">
<link rel="stylesheet" type="text/css" href="../resources/css/product/c1.css">
<link rel="stylesheet" type="text/css" href="../resources/css/talks/fashionTalks.css">
<script type="text/javascript">
	$(document)
			.ready(
					function(e) {

						// tforms 글자수 세어주는 함수
						$('#talks_content').on(
								'keyup',
								function() {
									$('#content_cnt').html(
											"(" + $(this).val().length
													+ " / 500)");

									if ($(this).val().length > 500) {
										$(this)
												.val(
														$(this).val()
																.substring(0,
																		100));
										$('#content_cnt').html("(500 / 500)");
									}

								});

						//첨부파일
						var formObj = $("#registerForm");

						// 등록하기 버튼을 누르면,
						$("#registerbtn")
								.on(
										"click",
										function() {
											/* e.preventDefault(); */

											// 메세지 확인
											var answer = confirm('해당 글을 작성하시겠습니까?');

											var talks_title = $('#talks_title').val();
											var talks_content = $('#talks_content').val();
											if(talks_title == null || talks_title == ""){
												alert("제목을 입력해주세요.");
												locate.href("talks/tform");
											}else if(talks_content == null || talks_content == ""){
												alert("내용을 입력해주세요.");
												locate.href("talks/tform");
											}

											$('input[name=talks_title]').attr('value', talks_title);
											$('input[name=talks_content]').attr('value', talks_content);
											

											var str = "";

											$(".uploadResult ul li")
													.each(
															function(i, obj) {

																var jobj = $(obj);

																console
																		.log(jobj);
																console
																		.log("------------------");
																console
																		.log(jobj
																				.data("filename"));

																str += "<input type='hidden' name='attachList["
																		+ i
																		+ "].talks_loc' value='"
																		+ jobj
																				.data("path")
																		+ "'>";
																str += "<input type='hidden' name='attachList["
																		+ i
																		+ "].uuid' value='"
																		+ jobj
																				.data("uuid")
																		+ "'>";
																str += "<input type='hidden' name='attachList["
																		+ i
																		+ "].filename' value='"
																		+ jobj
																				.data("filename")
																		+ "'>";
																var fileCallPathName = jobj
																		.data("path")
																		+ jobj
																				.data("uuid")
																		+ jobj
																				.data("filename");

															});

											formObj.append(str).submit();

										});

						// 파일 용량 확인하는 함수
						var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
						var maxSize = 5242880; // 5MB

						function checkExtension(fileName, fileSize) {

							if (fileSize >= maxSize) {
								alert("파일 사이즈 초과");
								return false;
							}

							if (regex.test(fileName)) {
								alert("해당 종류의 파일은 업로드 할 수 없습니다.");
								return false;
							}
							return true;
						}

						// 파일 선택할 시 이미지 섬네일 뿌려주는 함수
						$("input[type='file']")
								.change(
										function(e) {

											var csrfHeaderName = "${_csrf.headerName}";
											var csrfTokenValue = "${_csrf.token}"; //시큐리티
											var formData = new FormData();
											var inputFile = $("input[name='uploadFile']");
											var files = inputFile[0].files;

											console.log("file change");
											console.log(files);

											for (var i = 0; i < files.length; i++) {
												if (!checkExtension(
														files[i].name,
														files[i].size)) {
													return false;
												}
												formData.append("uploadFile",
														files[i]);
											}

											console.log("form data");
											console.log(formData);

											$
													.ajax({
														url : '/uploadAjaxAction',
														processData : false,
														contentType : false,
														data : formData,
														type : 'POST',
														dataType : 'json',
														beforeSend : function(
																xhr) {
															if (csrfHeaderName
																	&& csrfTokenValue) {
																xhr
																		.setRequestHeader(
																				csrfHeaderName,
																				csrfTokenValue);
															}
														},
														success : function(
																result) {
															console.log(result);
															showUploadResult(result); // 업로드 결과 처리 함수
														},
														error : function(result) {
														}
													}); //ajax
										});

					}); // document.ready

	function showUploadResult(uploadResultArr) {
		if (!uploadResultArr || uploadResultArr.length == 0) {
			return;
		}

		var uploadUL = $(".uploadResult ul");

		var str = "";

		$(uploadResultArr)
				.each(
						function(i, obj) {

							if (obj.image) {
								var fileCallPath = encodeURIComponent(obj.talks_loc
										+ "/s_" + obj.uuid + "_" + obj.fileName);
								console.log(fileCallPath);
								str += "<li data-path='"+obj.talks_loc+"'";
								str +=" data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'"
								str +" ><div>";
								str += "<button type='button' data-file=\'"+fileCallPath+"\' "
								str += "data-type='image' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
								str += "<img src='/display?fileName="
										+ fileCallPath + "'>";
								str += "</div>";
								str + "</li>";
							} else {
								var fileCallPath = encodeURIComponent(obj.talks_loc
										+ "/" + obj.uuid + "_" + obj.fileName);
								var fileLink = fileCallPath.replace(new RegExp(
										/\\/g), "/");

								str += "<li "
								str += "data-path='"+obj.talks_loc+"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"' ><div>";
								str += "<span> " + obj.fileName + "</span>";
								str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='file' " 
								str += "class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
								str += "<img src='/resources/img/attach.png'></a>";
								str += "</div>";
								str + "</li>";
							}

						});
		uploadUL.append(str);
	}

	$(".uploadResult")
			.on(
					"click",
					"button",
					function(e) {
						console.log("delete file");

						var targetFile = $(this).data("file");
						var type = $(this).data("type");

						var targetLi = $(this).closest("li");

						if (obj.image) {
							var fileCallPath = encodeURIComponent(obj.uploadPath
									+ "/s_" + obj.uuid + "_" + obj.fileName);
							str += "<li><div>";
							str += "<span>" + obj.fileName + "</span>";
							str += "<button type='button' data-file=\'"+fileCallPath+"\'data-type='image' class='btn btn-warning btn-circle'><i calss='fa fa-times'></i></button><br>";
							str += "<img src='/display?fileName="
									+ fileCallPath + "'>";
							str += "</div>";
							str + "</li>";
						} else {
							var fileCallPath = encodeURIComponent(obj.talks_loc
									+ "/" + obj.uuid + "_" + obj.fileName);
							var fileLink = fileCallPath.replace(new RegExp(
									/\\/g), "/");

							str += "<li><div>";
							str += "<span>" + obj.fileName + "</span>";
							str += "<button type='button' data-file=\'"+fileCallPath+"\'data-type='file' class= 'btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
							str += "<img src='/resources/img/attach.png'></a>";
							str += "</div>";
							str + "</li>";

						}
					});

	function showUploadedFile(uploadResultarr) {
		var str = "";
		$(uploadResultArr)
				.each(
						function(i, obj) {
							if (!obj.image) {
								var fileCallPath = encodeURIComponent(obj.talks_loc
										+ "/" + obj.uuid + "_" + obj.fileName);
								var fileLink = fileCallPath.replace(new RegExp(
										/\\/g), "/");

								str += "<li><div><a href='/download?fileName="
										+ fileCallPath
										+ "'>"
										+ "<img src='/resources/img/attach.png'>"
										+ obj.fileName
										+ "</a>"
										+ "<span data-file=\'"+fileCallPath+"\' data-type='file'> x </span>"
										+ "<div></li>";
							} else {
								var fileCallPath = encodeURIComponent(obj.talks_loc
										+ "/s_" + obj.uuid + "_" + obj.fileName);
								var originPath = obj.talks_loc + "\\"
										+ obj.uuid + "_" + obj.fileName;
								originPath = originPath.replace(new RegExp(
										/\\/g), "/");

								//str += "<li><a href=/"javascript:showImage(\'"+originPath+"\')\">" + "<img src='display?fileName="+fileCallPath+"'></a>" + "<span data-file=\'"+fileCallPath+"\' data-type='image'> x </span>"+ "<li>";

							}
						});
		uploadResult.append(str);
	}
</script>

</head>
<body class="magiedumatin">
	<%@ include file="../include/header2.jsp"%>

	<div id="wrap">

		<div id="container">
			<div id="contents">
				<div class="xans-element- xans-board xans-board-writepackage-9 xans-board-writepackage xans-board-9 cscenter-wrap ">
					<div class="header">
						<h2>Fashion Talks</h2>
					</div>

					<div class="xans-element- xans-board xans-board-write-9 xans-board-write xans-board-9 cscenter-layout ">
						<div class="contents-block">
							<div class="cscenter-base-block">
								<div class="base-block">
									<div class="title-block">
										<h2>Write Form</h2>
									</div>
									<fieldset>
										<div id="subject">

											<label>Title</label>
											<input id="talks_title" name="talks_title">
											<label>Context</label>
											<textarea id="talks_content" name="talks_content" cols="30" rows="10"></textarea>
											<div id="content_cnt">(0 / 500)</div>

										</div>

										
									</fieldset>
								</div>

								<div class="side-block">
									<!-- attach image-block -->
									<div class="xans-element- xans-board xans-board-listpackage-3 xans-board-listpackage xans-board-3 faq-block ">
										<div class="title-block">
											<h2>Attach Images</h2>
										</div>
										<div>
											<input name='uploadFile' type="file" multiple>
										</div>
										<div class="imgBox" style="height: 450px;">
											<div class='uploadResult'>
												<ul>

												</ul>
											</div>
										</div>

										<!-- row -->


									</fieldset>
								</div>

								<div class="side-block">
									<!-- attach image-block -->
									<div class="xans-element- xans-board xans-board-listpackage-3 xans-board-listpackage xans-board-3 faq-block ">
										<div class="title-block">
											<h2>Attach Images</h2>
										</div>
										<div><input name='uploadFile' type="file" multiple></div>
										<div class="imgBox" style="height: 450px;"></div>
										<div class="ul-desc">
											<ul>
												<li>게시글 작성시 개인정보(전화번호, 이메일, 이름 등)가 포함되지 않도록 주의해 주세요.<br> 개인정보가 포함된 경우 관리자에 의해 통보 없이 삭제될 수 있습니다.<br>
												</li>
												<li>첨부파일의 용량은 최대 5MB입니다.</li>
											</ul>
										</div>
									</div>
								</div>
</div>
<div class="btn-group-center submit-block">

									<button type="button" class="btn btn-md btn-white btn-pd32" onclick="location.href='/talks/tlist'">
										<span>취소</span>
									</button>
									<button type="button" id="registerbtn" class="btn btn-md btn-dark btn-pd32">
										<span>확인</span>
									</button>
								</div>


							</div>

						</div>





						<form id="registerForm" action="/talks/register" method="post">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
							<input type="hidden" name="talks_title" value="" />
							<input type="hidden" name="talks_content" value="" />
						</form>



					</div>


				</div>
			</div>
		</div>
		<%@ include file="../include/footer.jsp"%>
</body>
</html>