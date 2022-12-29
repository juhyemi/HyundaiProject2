<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

<div id="wrap">
	<div id="container">
		<div id="contents">
			<form id="findPasswdForm" name="findPasswdForm"
				action="/exec/front/Member/FindPasswd/" method="post" target="_self"
				enctype="multipart/form-data">
				<input id="nextUrl" name="nextUrl"
					value="/member/passwd/find_passwd_question.html" type="hidden">
				<input id="resultURL" name="resultURL" value="" type="hidden">
				<div
					class="xans-element- xans-member xans-member-findpasswd member-wrap ">
					<div class="title-block">
						<h2>비밀번호 찾기</h2>
					</div>
					<div class="find-block">
						<fieldset>
							<div class="form-block mt20">
								<label class="ePlaceholderEach required" title="아이디">
									<p class="form-title">아이디</p> <input id="member_id"
									name="member_id" fw-filter="isFill&amp;isIdentity"
									fw-label="아이디" fw-msg="" class="lostInput" placeholder="아이디"
									value="" type="text">
								</label>
							</div>

							<div class="form-block name mt20">
								<label class="ePlaceholderEach required" title="이름">
									<p class="form-title">이름</p> <input id="name" name="name"
									fw-filter="" fw-label="이름" fw-msg=""
									class="lostInput ec-member-name" placeholder="이름" value=""
									type="text">
								</label>
							</div>

							<div class="form-block email mt20" id="email_view" style="">
								<label class="ePlaceholderEach required" title="이메일">
									<p class="form-title">이메일</p> <input id="email" name="email"
									fw-filter="isEmail" fw-label="이메일" fw-msg="" class="lostInput"
									placeholder="이메일" value="" type="text">
								</label>
							</div>

							<div class="form-block phone-block flex-column-2 mobile mt24"
								id="mobile_view" style="display: none;">
								<label class="ePlaceholder required">
									<p class="form-title active">휴대폰번호</p>
									<div class="phone">
										<input id="mobile1" name="mobile1"
											fw-filter="isMin[3]&amp;isMax[3]&amp;isNumber"
											fw-label="휴대전화 번호" fw-msg="" class="mobile1" placeholder=""
											maxlength="3" value="" type="text"> - <input
											id="mobile2" name="mobile2"
											fw-filter="isMin[3]&amp;isMax[4]&amp;isNumber"
											fw-label="휴대전화 번호" fw-msg="" class="mobile2" placeholder=""
											maxlength="4" value="" type="text"> - <input
											id="mobile3" name="mobile3"
											fw-filter="isMin[4]&amp;isMax[4]&amp;isNumber"
											fw-label="휴대전화 번호" fw-msg="" class="mobile2" placeholder=""
											maxlength="4" value="" type="text">
									</div>
								</label>
							</div>
						</fieldset>
						<div class="btn-group-center mt40">
							<button type="button" class="btn btn-md btn-dark btn-pd32"
								onclick="findPasswd.action('kimdaniyaya' , 'kcp'); return false;">
								<span>확인</span>
							</button>
						</div>

					</div>
				</div>
			</form>
		</div>
	</div>
</div>

<%@ include file="../include/footer.jsp"%>