<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main1.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main2.css">
<link rel="stylesheet" type="text/css" href="../resources/css/talks/talksForm.css">
<link rel="stylesheet" type="text/css" href="../resources/css/product/c1.css">
<link rel="stylesheet" type="text/css" href="../resources/css/talks/fashionTalks.css">
<script type="text/javascript">
	$(document).ready(function(e) {

		//첨부파일
		var formObj = $("form[role='form']");

		$("#registerbtn").on("click", function(e) {
			e.preventDefault();

			console.log("submit clicked");
			
			
			var str="";
			
			$(".uploadResult ul li").each(function(i, obj){
			      
			      var jobj = $(obj);
			      
			      console.dir(jobj);
			      console.log("-------------------------");
			      console.log(jobj.data("filename"));
			      
			      
			      str += "<input type='hidden' name='attachList["+i+"].fileName' value='"+jobj.data("filename")+"'>";
			      str += "<input type='hidden' name='attachList["+i+"].uuid' value='"+jobj.data("uuid")+"'>";
			      str += "<input type='hidden' name='attachList["+i+"].talks_loc' value='"+jobj.data("path")+"'>";
			      str += "<input type='hidden' name='attachList["+i+"].fileType' value='"+ jobj.data("type")+"'>";
			      
			    });
		    console.log(str);
		    
		    formObj.append(str).submit();
			
		});

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
		$("input[type='file']").change(function(e) {
			

			var csrfHeaderName = "${_csrf.headerName}";
			var csrfTokenValue = "${_csrf.token}"; //시큐리티
			var formData = new FormData();
			var inputFile = $("input[name='uploadFile']");
			var files = inputFile[0].files;
			console.log(files);
			for (var i = 0; i < files.length; i++) {
				if (!checkExtension(files[i].name, files[i].size)) {
					return false;
				}
				formData.append("uploadFile", files[i]);
			}
			$.ajax({
				url : '/uploadAjaxAction',
				processData : false,
				contentType : false,
				data : formData,
				type : 'POST',
				dataType : 'json',
				beforeSend : function(xhr) {
					if (csrfHeaderName && csrfTokenValue) {
						xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);

					}
				},
				success : function(result) {
					console.log(result);
					showUploadResult(result); // 업로드 결과 처리 함수
				},
				error:function(result){
				}
			}); //ajax
		});

	});
	function showUploadResult(uploadResultArr) {
		if (!uploadResultArr || uploadResultArr.length == 0) {
			return;
		}

		var uploadUL = $(".uploadResult ul");

		var str = "";

		$(uploadResultArr)
				.each(
						function(i, obj) {
							

							if(obj.image){
								var fileCallPath =  encodeURIComponent( obj.talks_loc+ "/s_"+obj.uuid +"_"+obj.fileName);
								 console.log(fileCallPath);
								str += "<li data-path='"+obj.talks_loc+"'";
								str +=" data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'"
								str +" ><div>";
								str += "<span> "+ obj.fileName+"</span>";
								str += "<button type='button' data-file=\'"+fileCallPath+"\' "
								str += "data-type='image' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
								str += "<img src='/display?fileName="+fileCallPath+"'>";
								str += "</div>";
								str +"</li>";
							}else{
								var fileCallPath =  encodeURIComponent( obj.talks_loc+"/"+ obj.uuid +"_"+obj.fileName);			      
							    var fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");
							      
								str += "<li "
								str += "data-path='"+obj.talks_loc+"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"' ><div>";
								str += "<span> "+ obj.fileName+"</span>";
								str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='file' " 
								str += "class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
								str += "<img src='/resources/img/attach.png'></a>";
								str += "</div>";
								str +"</li>";
							}

						});
		uploadUL.append(str);
	}
$(".uploadResult").on("click", "span", function(e){
    
    var targetFile = $(this).data("file");
    var type = $(this).data("type");
    console.log(targetFile);
    
    
    $.ajax({
      url: '/deleteFile',
      data: {fileName: targetFile, type:type},
      dataType:'text',
      type: 'POST',
      beforeSend : function(xhr) {
			if (csrfHeaderName && csrfTokenValue) {
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);

			}
		},
        success: function(result){
           alert(result);
           
           targetLi.remove();
         }
    }); //$.ajax
});
function showUploadedFile(uploadResultarr){
	var str = "";
	$(uploadResultArr).each(function(i, obj){
		if(!obj.image){
			var fileCallPath = encodeURIComponent(obj.talks_loc+"/"+obj.uuid+"_"+obj.fileName);
			var fileLink = fileCallPath.replace(new RegExp(/\\/g), "/");
			
			str+= "<li><div><a href='/download?fileName="+fileCallPath+"'>"+"<img src='/resources/img/attach.png'>" + obj.fileName+"</a>"+
					"<span data-file=\'"+fileCallPath+"\' data-type='file'> x </span>" + "<div></li>" }
		}else{
			var fileCallPath = encodeURIComponent(obj.talks_loc + "/s_" + obj.uuid + "_" + obj.fileName);
			var originPath = obj.talks_loc + "\\" + obj.uuid + "_" + obj.fileName;
			originPath = originPath.replace(new RegExp(/\\/g), "/");
			
			str += "<li><a href=/"javascript:showImage(\'"+originPath+"\')\">" + "<img src='display?fileName="+fileCallPath+"'></a>" + "<span data-file=\'"+fileCallPath+"\' data-type='image'> x </span>"+ "<li>";
		
			
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
						<h2>Talks</h2>
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

										<div class="row">
											<div class="col-lg-12">
												<div class="panel panel-default">

													<div class="panel-heading">File Attach</div>
													<div class="panel-body">
														<div class="form-group uploadDiv ">
															<input name='uploadFile' type="file" multiple>
														</div>
														<div class='uploadResult'>
															<ul>

															</ul>
														</div>
													</div>

												</div>
												<!-- panel body -->
											</div>
											<!-- end panel -->
										</div>
										<!-- row -->





										<div class="ul-desc">
											<ul>
												<li>게시글 작성시 개인정보(전화번호, 이메일, 이름 등)가 포함되지 않도록 주의해 주세요.<br> 개인정보가 포함된 경우 관리자에 의해 통보 없이 삭제될 수 있습니다.<br>
												</li>
												<li>첨부파일의 용량은 최대 5MB입니다.</li>
											</ul>
										</div>
									</fieldset>
								</div>



								<div class="side-block">
									<!-- faq-block -->
									<div class="xans-element- xans-board xans-board-listpackage-3 xans-board-listpackage xans-board-3 faq-block ">
										<div class="title-block">
											<h2>FAQ TOP5</h2>
											<span><a href="/cscenter/faq.html">전체보기</a></span>
										</div>
										<div class="faq-item-block">
											<dl class="item-member item-top5 active">
												<dt>
													<h2>회원가입 적립금은 바로 사용 가능한가요?</h2>
												</dt>
												<dd>
													<p>회원가입 시 가입 적립금 4,000원을 지급해 드리며 구매 시 바로 사용 가능합니다.</p>
												</dd>
											</dl>
											<dl class="item-member item-top5 active">
												<dt>
													<h2>마뗑킴 회원가입 혜택에 대해 궁금해요.</h2>
												</dt>
												<dd>
													<p>
														마뗑킴의 회원이 되시면 다양한 혜택을 받아 보실 수 있습니다.<br> <br> ① 회원가입 시 바로 사용할 수 있는 4,000원 신규 적립금지급<br> ② 구매금액에 대한 1% 적립금지금<br> -1만원 이상 상품 구매후 배송이 완료 되면 1% 적립금 지급<br> ③ 매월 회원등급별 혜택제공<br> ‣ VVIP<br> 적립 10%,구매 할인 7%,생일쿠폰 30%<br> ‣ VIP<br> 적립 7%,구매 할인 5%,생일쿠폰 20%<br> ‣ GOLD<br> 적립 4%,구매 할인 3%,생일쿠폰 15%<br> ‣ SILVER<br> 적립 2%,구매 할인 2%,생일쿠폰 10%<br> ‣ NEW MEMBER<br> WELCOME 쿠폰 5%<br> <br> + SALE 상품을 제외한 모든 상품, 상시 적용<br> + 비회원은 멤버십 혜택이 적용되지 않습니다.<br> + 6개월마다 선정하여 등급 조정이 됩니다.<br> + 6개월 기준으로 매월 1일 변경될 예정입니다.<br> + 이번 회원 등급은 지난 6개월간 구매 고객님들을 대상으로 선정될 예정이며, 회원 로그인 후 구매 건에 대해서만 산정되는 점 참고부탁 드립니다.<br> ④ 상시무료배송
													</p>
												</dd>
											</dl>
											<dl class="item-member item-top5 active">
												<dt>
													<h2>생일쿠폰 및 할인 쿠폰에 대해 알려주세요.</h2>
												</dt>
												<dd>
													<p>
														-생일쿠폰은 회원가입시 등록한 생일에 한아이디당 1년에 한번 발급됩니다.(사용기간-발급일로부터 30일 이내)<br> ‣ VVIP 30% 생일쿠폰 발송.<br> ‣ VIP 20%생일쿠폰 발송.<br> ‣ GOLD 15%생일쿠폰 발송.<br> ‣ SILVER 10%생일쿠폰 발송<br> - 매달 지금되는 쿠폰은 당월에 사용하지않을 경우 소멸됩니다.<br> - 회원 탈퇴시 모든 적립금/할인 혜택은 자동 소멸되며,이전 등급으로 재조정은 불가하니 꼭 신중히 처리 부탁드립니다.<br> - 마똉킴의 회원이 되시면 이 외 더 많은 혜택을 받으실 수 있습니다. [회원혜택보기 / MATINKIM MEMBERSHIP BENEFITS]
													</p>
												</dd>
											</dl>
											<dl class="item-member item-top5 active">
												<dt>
													<h2>비밀번호를 분실했는데 어떻게 해야하나요?</h2>
												</dt>
												<dd>
													<p>
														로그인 페이지에서 아이디/비밀번호 찾기 버튼을 눌러주세요.<br> 휴대폰인증을 받으시거나 이메일로 비밀번호 받아보신후 로그인을 해주시면 됩니다.<br>
														<a href="/member/id/find_id.html">아이디 찾기</a>
														&nbsp;&nbsp;
														<a href="/member/passwd/find_passwd_info.html">비밀번호 찾기</a>
													</p>
												</dd>
											</dl>
											<dl class="item-order">
												<dt>
													<h2>주문 먼저 하고 무통장입금을 나중에 하면 배송 순서가 밀리나요?</h2>
												</dt>
												<dd>
													<p>마뗑킴의 모든 주문은 결제 완료자 순으로 순차 배송이 되며 무통장 구매 후 리오더 오픈 이전에 입금이 되지 않을 경우 해당 주문 건은 입금된 시간 기준 재오픈 차수 배송일에 해당이 되는 점 참고 부탁드립니다. (무통장 주문 후 무분별한 수량 확보를 방지하기 위함 이오니 많은 양해 바랍니다.)</p>
												</dd>
											</dl>
											<dl class="item-order">
												<dt>
													<h2>비회원으로도 구매할 수 있나요?</h2>
												</dt>
												<dd>
													<p>
														회원/비회원으로 구매가 가능합니다.<br> 비회원인 경우에는 고객님께서 주문번호로만 주문 확인이 가능하며, 주문번호를 잊어 버리셨다면 고객센터로 문의주시면 자세한 안내 도와드리겠습니다.<br> 회원가입을 하시면 마뗑킴을 보다 편리하게 이용하실수 있습니다.<br> ① 마이페이지에서 주문취소 및 교환, 반품을 직접 요청하실 수 있습니다.<br> ② 주문시마다 배송지를 입력하지 않아도 됩니다.<br> ③ 그동안의 주문내역을 한눈에 보실 수 있습니다.
													</p>
												</dd>
											</dl>
											<dl class="item-order">
												<dt>
													<h2>이미 주문을 했는데, 추가주문 하고 싶어요.</h2>
												</dt>
												<dd>
													<p>
														주문 이후 상품 추가는 불가합니다.<br> 상품 추가,변경(교환)을 원하신다면 취소/반품후 신규 주문 부탁드립니다.
													</p>
												</dd>
											</dl>
											<dl class="item-order">
												<dt>
													<h2>무통장 결제 입금 기한은 언제까지인가요?</h2>
												</dt>
												<dd>
													<p>
														주문후 입금기한은 12시간이며,기간내 미입금시 주문서는 자동취소됩니다.<br> 입금기한 만료로 주문서가 취소된경우 신규 주문서 작성을 부탁드립니다.<br> (자동취소된 주문서는 원복이 어렵습니다)
													</p>
												</dd>
											</dl>
											<dl class="item-order">
												<dt>
													<h2>적립금을 사용하여 결제할 수 있나요?</h2>
												</dt>
												<dd>
													<p>
														적립금 사용 가능합니다. 적립금사용 제외한 나머지 주문 금액은 적립 되지 않습니다.<br> 또한 주문후에 받아보신 상품을 반품 하셨을때에 적립금이 원복 되지 않습니다.
													</p>
												</dd>
											</dl>
											<dl class="item-order">
												<dt>
													<h2>상품구매시 적립금이 적립되는 방법에 대해 알려주세요.</h2>
												</dt>
												<dd>
													<p>상품금액의 1%가 배송종료 기점으로 7일뒤 자동적립 됩니다.</p>
												</dd>
											</dl>
											<dl class="item-order">
												<dt>
													<h2>현금영수증 발급은 어떻게 받나요?</h2>
												</dt>
												<dd>
													<p>
														가상계좌(무통장입금), 실시간 계좌이체로 결제 시, 마이페이지 주문내역에서 현금영수증 발급을 받아보실 수 있습니다.<br> 현금영수증 신청은 현금결제/실시간계좌이체 시에만 가능하며 결제일로 90일 이내로 신청해주시면 됩니다.<br> 고객센터로 요청해 주시면 발급이 가능합니다. 고객센터 ☎︎ 1877-8170<br>
													</p>
												</dd>
											</dl>
											<dl class="item-delivery">
												<dt>
													<h2>국내배송비는 얼마인가요?</h2>
												</dt>
												<dd>
													<p>
														구매금액에 상관없이 상시무료배송 됩니다.:)<br> 마뗑킴에서 구매하시고 편하게 무료배송서비스를 받아보세요.
													</p>
												</dd>
											</dl>
											<dl class="item-delivery">
												<dt>
													<h2>배송기간은 얼마나 걸리나요?</h2>
												</dt>
												<dd>
													<p>
														배송기간 :각 상품에 따라 1일 ~ 10일 (영업일 기준),프리오더 진행상품은 각 상품에 고지.<br> 제작사의 사정으로 인하여 지연 및 품절이 발생될 수 있습니다.<br> 추가 입고가 필요한 상품이거나, 품절된 상품은 개별 연락 드리겠습니다.
													</p>
												</dd>
											</dl>
											<dl class="item-delivery">
												<dt>
													<h2>묶음배송을 어떻게 하나요?</h2>
												</dt>
												<dd>
													<p>
														고객센터나 1:1 게시판에 묶음배송으로 요청해 주시면 빠른처리 도와드리겠습니다.<br> 상품이 모두 입고 될때까지 시일이 소요되는 점 참고 부탁드립니다.
													</p>
												</dd>
											</dl>
											<dl class="item-delivery">
												<dt>
													<h2>배송전 주소지 변경</h2>
												</dt>
												<dd>
													<p>
														배송전 주소지 변경은 사전에 1:1게시판 또는 고객센터로 연락 주셔야 합니다.<br> 게시판에 남겨주실 경우 정확한 지번,도로명 주소로 남겨 주셔야 하며<br> 배송일은 사전에 안내 된 기간 보다 빠르게 출고 될 수 있는 점 참고 하셔서 꼭 사전에 접수 부탁드립니다.
													</p>
												</dd>
											</dl>
											<dl class="item-delivery">
												<dt>
													<h2>배송 출고 문자를 받았는데 조회가 되질 않아요.</h2>
												</dt>
												<dd>
													<p>
														배송조회는 문자 수신 다음날부터 조회가 가능합니다.<br> 택배사 사정에 따라 배송상태 확인이 지연될 수 있습니다.<br> 3일이상 배송 상태가 진행되지 않는다면 고객센터로 문의 부탁드립니다.
													</p>
												</dd>
											</dl>
											<dl class="item-claim">
												<dt>
													<h2>배송전 주문취소, 주소지 변경은 어떻게 하나요?</h2>
												</dt>
												<dd>
													<p>
														1:1 게시판에 요청해 주시거나 고객센터로 취소요청 전화를 주시면 취소처리를 도와드리겠습니다.<br> 결제금액 취소는 결제하신 수단으로만 취소처리 가능합니다.<br> 환급시에는 결제하신 고객님 성함과 동일한 계좌로만 처리 가능합니다.<br> 최초 카드결제이후 할부 개월수 변경/결제카드변경/결제수단 변경은 불가합니다.<br> 취소된 금액을 타 주문서로 금액대체는 불가합니다.<br> 배송전 주소지 변경은 1:1게시판 이나 고객센터로 연락 주셔야 변경 가능합니다.<br> <br> [무통장입금 취소]<br> 환급 받아보실 계좌번호를 고객센터 혹은 게시판으로 남겨주시면 최대 2-3일후 환급 계좌로 환불 됩니다.<br> <br> [카드 취소]<br> 카드사를 통해 취소되는 금액만큼 카드취소처리가 됩니다.<br> 부분 취소시 취소 금액만큼 카드 부분 결제 취소로 접수되며,가맹점 승인 취소로 취소처리 최대 5-7일 소요됩니다.<br> <br> [휴대폰 취소]<br> 휴대폰은 당월 취소만 가능하며,부분취소 불가합니다.<br> 부분취소시 주문서 전체 취소후 신규 주문서를 작성해 주시길 바랍니다.<br> 휴대폰 결제 시점으로부터 한달 이후가 되면 (당월취소 불가) 주문해주신 고객님 성함과 동일한 환불 계좌를 통해 환불처리 됩니다.<br>
													</p>
												</dd>
											</dl>
											<dl class="item-claim">
												<dt>
													<h2>반품교환 접수는 어떻게 하나요?</h2>
												</dt>
												<dd>
													<p>
														1:1 게시판이나 고객센터로 반품하실 상품을 말씀해 주세요:)<br> 반품할 상품은 소포를 받은 날로부터 30일(배송 완료 일~반품 접수 일) 이내에 동봉된 반품 양식을 작성하여 '마뗑킴 물류센터'로 보내주셔야 합니다.<br> 상품은 손상되거나 더럽혀지거나 세탁되거나 수선되거나 해져서는 안되며(상품 시착 외), 라벨이나 상품택, 위생 테이프가 부착된 상태여야 합니다.<br> 자사에서 직접 반품 접수를 해드리며 기사님께서 방문 접수가 완료되면 영업일 기준 2~3일 내로 방문하실 예정이오니 상품을 잘 전달 부탁드립니다.<br> <br> [교환 및 반품 안내]<br> *주문 이후 배송 전/후 상품추가, 동일 상품 컬러 변경, 타상품 교환은 불가합니다.<br> *상품 추가, 변경(교환)을 원하신다면 취소/반품 후 신규 주문 부탁드립니다.<br> 단순 변심의 경우 택 제거 되지 않은 새 상품만 수령일로부터 7일 이내까지 교환·반품이 가능합니다. (교환/반품 비는 고객님 부담)<br> 상품 하자(제품 자체에 결함으로 확인된 경우), 오배송의 경우 수령일로부터 30일 이내, 그 사실을 알 수 있었던 30일 이내까지 교환·반품이 가능합니다.<br> (교환, 반품 비 무료, 마뗑킴에서 부담)<br> <br> 아래의 경우에는 교환·반품 가능 기간에도 불구하고 거절될 수 있습니다.<br> - 고객님의 책임있는사유로 제품이 멸실 또는 훼손된 경우<br> - 고객님의 사용 또는 일부 소비에 의하여 제품의 가치가 현저히 감소한 경우<br> - 시간의 경과에 의하여 재판매가 곤란한 정도로 제품의 가치가 하락한 경우<br> - 고객님이 주문에 따라 개별적으로 생산되는 제품의 경우<br> - 향수, 세제 등 향이 배어 있는 제품의 경우<br> - 착용 흔적, 주름 발생이 있는 상품의 경우<br>
														<br> [교환·반품 방법]<br> *배송 시 동봉되었던 교환·반품 카드를 참조해 주세요:)<br> 교환·반품 가능 기간 이내에 마 뗑 킴 1:1 게시판 또는 고객센터로 접수 후 교환 반품 서를 동봉하여 제품 패킹을 부탁드립니다.<br> 기사님께서 2~3일 내로 방문하실 예정이오니 상품을 잘 전달 부탁드립니다.<br> (미접수, 교환. 반품 신청서 미 동봉 시 확인 시간이 소요될 수 있습니다)직접 택배 접수 후 보내주실 땐 착불로 보내주셔야 합니다.<br> 반품 택배 접수는 로젠택배(T.1588-9988)를 통해 직접 접수하실 수 있습니다.<br> 교환·반품 비를 계좌로 입금 후 혹은 구매 금액에서 차감 신청 후 가능.<br> <br> - 반품 배송비/교환배송비 구매 금액에 상관없이 4,600원/9,600원(제주도 및 산간 지역)<br> - 입금 계좌 : 기업은행 033-505930-01-045 (주)마뗑킴<br> * 택배비를 동봉하여 분실된 경우 추가로 지불해주셔야 하며 MATINKIM의 책임은 없습니다.<br>
													</p>
												</dd>
											</dl>
											<dl class="item-claim">
												<dt>
													<h2>반품 교환 배송비는 얼마인가요?</h2>
												</dt>
												<dd>
													<p>
														- 반품배송비/교환배송비 구매금액에 상관없이 4,600원/ 제주도 및 산간지역 9,600원<br> - 입금 계좌 : 기업은행 033-505930-01-045 (주)마뗑킴
													</p>
												</dd>
											</dl>
											<dl class="item-claim">
												<dt>
													<h2>방문접수를 요청했지만 며칠째 회수되지 않고 있는데 어떻게 해야 할까요?</h2>
												</dt>
												<dd>
													<p>간혹 택배사의 사정으로 회수가 지연되는 경우가 있으며 주말,공휴일 제외 3일 동안 기사님으로부터 연락이 없으시다면 저희 마뗑킴 고객센터로 연락 주시면 방문접수 재요청해드리겠습니다.</p>
												</dd>
											</dl>
											<dl class="item-claim">

												<dt>
													<h2>제품이 불량이거나 오배송일 경우에는 어떻게 하면 될까요?</h2>
												</dt>
												<dd>
													<p>불량,오배송의 경우 배송비는 마뗑킴에서 부담하며 게시판에 글을 남겨주시거나 고객센터로 연락주시면 신속히 처리해드리겠습니다.</p>
												</dd>
											</dl>
											<dl class="item-claim">
												<dt>
													<h2>온라인 구매 상품을 오프라인에서 픽업/교환/반품할 수 있나요?</h2>
												</dt>
												<dd>
													<p>
														온/오프라인 상품은 개별 시스템으로 운영되고 있기 때문에 온라인에서 결제 후 오프라인 매장에서의 픽업은 어려운 점 양해 부탁드리며 구매처에서만 교환 및 반품 가능합니다.<br>
													</p>
												</dd>
											</dl>
											<dl class="item-offline item-top5 active">
												<dt>
													<h2>매장에서 구매한 상품을 온라인으로 반품할 수 있나요?</h2>
												</dt>
												<dd>
													<p>
														오프라인매장과 온라인은 개별시스템으로 운영되고 있어 온라인으로 반품은 불가합니다.<br> 매장에서 구매하신 상품은 영수증을 지참하시어 찾아주시면 처리해드리도록 하겠습니다.
													</p>
												</dd>
											</dl>
										</div>
									</div>
									<script>
										document
												.addEventListener(
														"DOMContentLoaded",
														function() {
															// 진입 시 디폴트 카테고리
															$(
																	'.faq-item-block .item-top5')
																	.addClass(
																			'active');

															// 제목 클릭 시
															$(
																	'.faq-item-block dl dt')
																	.each(
																			function(
																					i,
																					elm) {
																				$(
																						elm)
																						.click(
																								function() {
																									if ($(
																											elm)
																											.parent()
																											.hasClass(
																													'open')) {
																										$(
																												elm)
																												.parent()
																												.removeClass(
																														'open');
																									} else {
																										$(
																												elm)
																												.parent()
																												.addClass(
																														'open');
																									}
																								})
																			});
														});
									</script>
								</div>


							</div>



							<div class="btn-group-center submit-block">

								<button type="button" class="btn btn-md btn-white btn-pd32" onclick="location.href='/talks/tlist'">
									<span>취소</span>
								</button>
								<button type="submit" id="registerbtn" class="btn btn-md btn-dark btn-pd32">
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