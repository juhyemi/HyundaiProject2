<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

<div id="wrap">
	<div id="container">
		<div id="contents">
			<div class="xans-element- xans-layout xans-layout-logincheck ">
			</div>

			<div class="myshop-wrap">

				<div
					class="xans-element- xans-myshop xans-myshop-asyncbenefit header ">
					<h2>
						Hello, <span><span class="xans-member-var-name">신수진</span></span>
					</h2>
				</div>

				<!-- myshop-layout -->
				<div class="myshop-layout">
					<!-- menu-block -->
					<div class="menu-block">
						<ul>
							<li class="js-order"><a href="/myshop/order/list.html">주문내역</a></li>
							<li class="js-board"><a
								href="/board/consult/list.html?board_no=9">1:1 문의</a></li>
							<li class="js-recent"><a
								href="/product/recent_view_product.html">최근 본 상품</a></li>
							<li class="js-modify active"><a href="/member/modify.html">내
									계정</a></li>
							<li><a href="/exec/front/Member/logout/">로그아웃</a></li>
						</ul>
					</div>
					<div class="contents-block">

						<div class="title-block">
							<h2>내 계정</h2>
						</div>

						<form id="editForm" name="editForm"
							action="/exec/front/Member/edit/" method="post" target="_self"
							enctype="multipart/form-data">
							<div
								class="xans-element- xans-member xans-member-edit modify-form-wrap">
								<div class="layout-block">
									<fieldset>
										<div
											class="xans-element- xans-myshop xans-myshop-asyncbenefit header-info ">
											<h2>
												<span><span class="xans-member-var-name">신수진</span></span>
											</h2>
											<span>회원님은 <span class="xans-member-var-group_name">일반회원</span><span
												class="myshop_benefit_ship_free_message"></span>회원입니다.
											</span>
										</div>

										<div class="">
											<div class="form-block">
												<label class="ePlaceholderEach">
													<p class="form-title active">아이디*</p> <input id="member_id"
													name="member_id"
													fw-filter="isFill&amp;isFill&amp;isMin[4]&amp;isMax[16]&amp;isIdentity"
													fw-label="아이디" fw-msg="" class="inputTypeText"
													placeholder="" readonly="readonly" value="" type="text">
												</label>
											</div>
										</div>

										<div class="form-block">
											<label class="ePlaceholderEach required" title="비밀번호*">
												<p class="form-title">비밀번호*</p> <input id="passwd"
												name="passwd" fw-filter="isMin[4]&amp;isMax[16]"
												fw-label="비밀번호" fw-msg="" autocomplete="off" maxlength="16"
												disabled="1" value="" type="password" placeholder="비밀번호*">
												<div class="info-msg">(영문 대소문자/숫자/특수문자 중 2가지 이상 조합,
													10자~16자)</div>
												<div class="err-msg">비밀번호 항목은 필수 입력값입니다.</div>
											</label>
										</div>

										<div class="form-block">
											<label class="ePlaceholderEach required" title="비밀번호 확인*">
												<p class="form-title">비밀번호 확인*</p> <input
												id="user_passwd_confirm" name="user_passwd_confirm"
												fw-filter="isMatch[passwd]" fw-label="비밀번호 확인"
												fw-msg="비밀번호가 일치하지 않습니다." autocomplete="off" maxlength="16"
												disabled="1" value="" type="password" placeholder="비밀번호 확인*">
												<div class="err-msg">비밀번호 확인 항목은 필수 입력값입니다.</div>
											</label>
										</div>

										<div class="displaynone">
											<label class="select required active">
												<p class="form-title active">비밀번호 확인 질문*</p> <select
												id="hint" name="hint" fw-filter="" fw-label="hint" fw-msg="">
													<option value="hint_01">기억에 남는 추억의 장소는?</option>
													<option value="hint_02">자신의 인생 좌우명은?</option>
													<option value="hint_03">자신의 보물 제1호는?</option>
													<option value="hint_04">가장 기억에 남는 선생님 성함은?</option>
													<option value="hint_05">타인이 모르는 자신만의 신체비밀이 있다면?</option>
													<option value="hint_06">추억하고 싶은 날짜가 있다면?</option>
													<option value="hint_07">받았던 선물 중 기억에 남는 독특한 선물은?</option>
													<option value="hint_08">유년시절 가장 생각나는 친구 이름은?</option>
													<option value="hint_09">인상 깊게 읽은 책 이름은?</option>
													<option value="hint_10">읽은 책 중에서 좋아하는 구절이 있다면?</option>
													<option value="hint_11">자신이 두번째로 존경하는 인물은?</option>
													<option value="hint_12">친구들에게 공개하지 않은 어릴 적 별명이
														있다면?</option>
													<option value="hint_13">초등학교 때 기억에 남는 짝꿍 이름은?</option>
													<option value="hint_14">다시 태어나면 되고 싶은 것은?</option>
													<option value="hint_15">내가 좋아하는 캐릭터는?</option>
											</select>
											</label>
										</div>
										<div class="displaynone">
											<label class="ePlaceholderEach required" title="비밀번호 확인 답변*">
												<p class="form-title">비밀번호 확인 답변*</p> <input
												id="hint_answer" name="hint_answer" fw-filter=""
												fw-label="비밀번호 확인시 답변" fw-msg="" class="inputTypeText"
												placeholder="비밀번호 확인 답변*" value="" type="text">
												<div class="err-msg">비밀번호 확인 답변 항목은 필수 입력값입니다.</div>
											</label>
										</div>

										<div>
											<div class="form-block">
												<label class="ePlaceholderEach required">
													<p class="form-title active">이름*</p> <input id="name"
													name="name" fw-filter="isFill&amp;isMax[30]" fw-label="이름"
													fw-msg="" class="ec-member-name" placeholder=""
													maxlength="30" readonly="readonly" value="신수진" type="text">
												</label>
											</div>
										</div>
										<div class="displaynone">
											<div class="form-block">
												<label class="ePlaceholderEach" data-required="displaynone">
													<p>이름(영문)*</p>
													<input id="name_en" name="name_en"
													fw-filter="isMax[30]&amp;isAlphaSpace" fw-label="이름(영문)"
													fw-msg="" class="ec-member-name" placeholder=""
													maxlength="30" value="" type="text">
													<div class="info-msg">(이름 - 성 형식으로 입력해 주세요.)</div>
													<div class="err-msg">이름(영문) 항목은 필수 입력값입니다.</div>
												</label>
											</div>
										</div>

										<div class="form-block flex-column-2 post-block">
											<label class="ePlaceholderEach required">
												<p class="form-title active">우편번호</p> <input id="postcode1"
												name="postcode1" fw-filter="isLengthRange[1][14]"
												fw-label="우편번호1" fw-msg="" class="inputTypeText"
												placeholder="" readonly="readonly" maxlength="14" value=""
												type="text">
											</label>
											<button type="button"
												class="btn btn-sm btn-gray-border btn-120"
												onclick="execDaumPostcode();">
												<span>우편번호 찾기</span>
											</button>
										</div>

										<!-- Daum 카카오 우편 번호 서비스 -->
										<div id="zipcode_popup"></div>
										<!-- Daum 카카오 우편 번호 서비스 -->


										<div class="form-block form-submit-address mt0">
											<label class="ePlaceholderEach required">
												<p class="form-title active">주소</p> <input id="addr1"
												name="addr1" fw-filter="" fw-label="주소" fw-msg=""
												class="inputTypeText" placeholder="" readonly="readonly"
												value="" type="text"> <input id="addr2" name="addr2"
												fw-filter="" fw-label="주소" fw-msg="" class="inputTypeText"
												placeholder="" value="" type="text">
											</label>
										</div>

										<div class=" ePlaceholderGroup mt40" title="휴대전화*"
											data-required="">
											<div class="form-block phone-block flex-column-2">
												<label class="ePlaceholder required">
													<p class="form-title active">휴대전화*</p>
													<div class="phone">
														<select id="mobile1" name="mobile[]"
															fw-filter="isNumber&amp;isFill" fw-label="휴대전화"
															fw-alone="N" fw-msg="">
															<option value="010">010</option>
															<option value="011">011</option>
															<option value="016">016</option>
															<option value="017">017</option>
															<option value="018">018</option>
															<option value="019">019</option>
														</select>-<input id="mobile2" name="mobile[]" maxlength="4"
															fw-filter="isNumber&amp;isFill" fw-label="휴대전화"
															fw-alone="N" fw-msg="" value="" type="text">-<input
															id="mobile3" name="mobile[]" maxlength="4"
															fw-filter="isNumber&amp;isFill" fw-label="휴대전화"
															fw-alone="N" fw-msg="" value="" type="text">
													</div>
												</label>

											</div>

											<p class="displaynone" id="result_send_verify_mobile_fail"></p>
											<ul class="displaynone"
												id="result_send_verify_mobile_success">
												<li>인증번호가 발송되었습니다.</li>
												<li>인증번호를 받지 못하셨다면 휴대폰 번호를 확인해 주세요.</li>
											</ul>
										</div>

										<div class="displaynone" id="confirm_verify_mobile">
											<div class="form-block phone-verify-block flex-column-2">
												<div class="phone-verify">
													<input id="verify_sms_number" name="verify_sms_number"
														fw-filter="isMax[15]" fw-label="verify_sms_number"
														fw-msg="" class="inputTypeText" placeholder=""
														maxlength="15" value="" type="text"> <span
														class="time" id="expiryTime">2:00</span>
												</div>
												<button type="button" class="btn btn-md btn-white btn-135"
													id="btn_verify_mobile_confirm"
													onclick="memberVerifyMobile.editVerifySmsNumberConfirm(); return false;">확인</button>
											</div>
										</div>

										<div class="mt50">
											<div class="form-block email-block">
												<label class="ePlaceholderEach required">
													<p class="form-title active">이메일*</p> <input id="email1"
													name="email1" fw-filter="isFill&amp;isEmail" fw-label="이메일"
													fw-alone="N" fw-msg="" value="" type="text">
													<div class="err-msg-system" id="emailMsg"></div>
													<div class="err-msg">이메일 항목은 필수 입력값입니다.</div>
												</label>
											</div>
										</div>

										<div class="">
											<div class="form-block birthday-block">
												<div class="birthday">
													<div class="day">
														<label data-required="displaynone" title="생년*"
															msg-for="birthday-msg" class="ePlaceholderEach">
															<p class="form-title">생년</p> <input id="birth_year"
															name="birth_year" fw-filter="" fw-label="생년월일" fw-msg=""
															class="inputTypeText" placeholder="생년" maxlength="4"
															value="" type="text">
														</label> <label data-required="displaynone" title="월*"
															msg-for="birthday-msg" class="ePlaceholderEach">
															<p class="form-title">월</p> <input id="birth_month"
															name="birth_month" fw-filter="" fw-label="생년월일" fw-msg=""
															class="inputTypeText" placeholder="월" maxlength="2"
															value="" type="text">
														</label> <label data-required="displaynone" title="일*"
															msg-for="birthday-msg" class="ePlaceholderEach">
															<p class="form-title">일</p> <input id="birth_day"
															name="birth_day" fw-filter="" fw-label="생년월일" fw-msg=""
															class="inputTypeText" placeholder="일" maxlength="2"
															value="" type="text">
														</label>
													</div>
													<div class="radio-block">
														<span class=""><input id="is_solar_calendar0"
															name="is_solar_calendar" fw-filter="" fw-label="생년월일"
															fw-msg="" value="T" type="radio" checked="checked"><label
															for="is_solar_calendar0">양력</label> <input
															id="is_solar_calendar1" name="is_solar_calendar"
															fw-filter="" fw-label="생년월일" fw-msg="" value="F"
															type="radio"><label for="is_solar_calendar1">음력</label></span>
													</div>
												</div>
												<div class="form-err-msg birthday-msg">생년월일 항목은 필수
													입력값입니다.</div>
											</div>
										</div>

									</fieldset>
								</div>
								<div class="btn-group-between">
									<div class="btn-group-center">
										<a href="javascript:void(0);"
											class="btn btn-md btn-dark btn-150"
											onclick="memberEditAction()"><span>회원정보수정</span></a> <a
											href="/myshop/index.html"
											class="btn btn-md btn-white btn-150"><span>취소</span></a>
									</div>

									<div class="btn-away-block">
										<a href="javascript:void(0);"
											class="btn btn-md btn-gray btn-150"
											onclick="memberDelAction(4000, -1, -1)"><span>탈퇴</span></a>
									</div>
								</div>
							</div>
						</form>
						<!-- // contents-block -->
					</div>
					<!-- // myshop-layout -->
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="../include/footer.jsp"%>