<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

<div id="wrap">
	<div id="container">
		<div id="contents">







			<div
				class="xans-element- xans-board xans-board-listpackage-9 xans-board-listpackage xans-board-9 myshop-wrap ">
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




							<li class="js-board active"><a
								href="/board/consult/list.html?board_no=9">1:1 문의</a></li>
							<li class="js-recent"><a
								href="/product/recent_view_product.html">최근 본 상품</a></li>
							<li class="js-modify"><a href="/member/modify.html">내 계정</a></li>
							<li><a href="/exec/front/Member/logout/">로그아웃</a></li>
						</ul>
					</div>





					<div class="contents-block">

						<div class="title-block">
							<h2>1:1 Q&amp;A</h2>
						</div>

						<div class="only-pc" style="margin-top: -1px;">
							<table class="table-base">
								<caption>1:1 맞춤상담 목록</caption>
								<colgroup
									class="xans-element- xans-board xans-board-listheader-9 xans-board-listheader xans-board-9 ">
									<col style="width: 77px;" class="">
									<col style="width: 135px;" class="">
									<col style="width: auto;">
									<col style="width: 84px;">
									<col style="width: 55px;">
								</colgroup>
								<thead
									class="xans-element- xans-board xans-board-listheader-9 xans-board-listheader xans-board-9 ">
									<tr>
										<th scope="col" class="">DATE</th>
										<th scope="col" class="">CATEGORY</th>
										<th scope="col">SUBJECT</th>
										<th scope="col">WRITER</th>
										<th scope="col">REPLY</th>
									</tr>
								</thead>
							</table>
							<div
								class="xans-element- xans-board xans-board-empty-9 xans-board-empty xans-board-9 empty-icon-block line-bottom  ">
								<div class="inner">
									<p>검색결과가 없습니다.</p>
								</div>
							</div>
						</div>


						<div class="board-list-block only-mobile">


							<div
								class="xans-element- xans-board xans-board-empty-9 xans-board-empty xans-board-9 empty-icon-block line-bottom  ">
								<div class="inner">
									<p>검색결과가 없습니다.</p>
								</div>
							</div>
						</div>


						<div class="board-search-write-block mt40">
							<div class="board-search-block">
								<form id="boardSearchForm" name=""
									action="/board/consult/list.html" method="get" target="_top"
									enctype="multipart/form-data">
									<input id="board_no" name="board_no" value="9" type="hidden">
									<input id="page" name="page" value="1" type="hidden"> <input
										id="board_sort" name="board_sort" value="" type="hidden">
									<div
										class="xans-element- xans-board xans-board-search-9 xans-board-search xans-board-9 ">
										<ul>
											<li class="search-date"><select id="search_date"
												name="search_date" fw-filter="" fw-label="" fw-msg="">
													<option value="week">일주일</option>
													<option value="month">한달</option>
													<option value="month3">세달</option>
													<option value="all">전체</option>
											</select></li>
											<li class="search-key"><select id="search_key"
												name="search_key" fw-filter="" fw-label="" fw-msg="">
													<option value="subject">제목</option>
													<option value="content">내용</option>
													<option value="writer_name">글쓴이</option>
													<option value="member_id">아이디</option>
													<option value="nick_name">별명</option>
											</select></li>
											<li class="search"><input id="search" name="search"
												fw-filter="" fw-label="" fw-msg="" class="inputTypeText"
												placeholder="" value="" type="text"></li>
											<li class="search-btn"><button type="button"
													class="btn btn-sm btn-white btn-120"
													onclick="BOARD.form_submit('boardSearchForm');">
													<span>SEARCH</span>
												</button></li>
										</ul>
									</div>
								</form>
							</div>

							<div
								class="xans-element- xans-board xans-board-buttonlist-9 xans-board-buttonlist xans-board-9 board-write-btn-block ">
								<div class="btn-group-end">
									<a href="/board/consult/write.html?board_no=9"
										class="btn btn-sm btn-dark btn-120"><span>WRITE</span></a>
								</div>
							</div>
						</div>




					</div>
					<!-- // contents-block -->
				</div>
				<!-- // myshop-layout -->
			</div>

		</div>
	</div>
</div>


<%@ include file="../include/footer.jsp"%>