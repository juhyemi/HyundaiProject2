<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"  type="text/css"  href="./talksList.css">
</head>
<body>
<%-- <%@ include file="/layout/header.jsp"%> --%>
   <div id="wrap">
        <div id="container">
            <div id="contents">
    <div class="cscenter-wrap" style="max-width: 1280px">
        <div class="header">
            <h2>Help</h2>
        </div>    
        <div class="cscenter-layout">     
            <div class="xans-element- xans-board xans-board-listpackage-1 xans-board-listpackage xans-board-1 contents-block "><div class="title-block">
                    <h2>Notice</h2>
                </div>
    <div class="board-list-block">
                    <ul class="xans-element- xans-board xans-board-notice-1 xans-board-notice xans-board-1">
                        <li class="notice xans-record-">
                            <a href="/article/notice/1/240928/">운송장 출력 제한 지역 안내 *업데이트</a>
                            <span>2022-11-22</span>
                        </li>
    <li class="notice xans-record-">
                            <a href="/article/notice/1/235002/">Matinkim 애프터 케어 서비스 규정</a>
                            <span>2022-10-05</span>
                        </li>
    <li class="notice xans-record-">
                            <a href="/article/notice/1/234207/">파리미들백 수선 공지 안내</a>
                            <span>2022-09-26</span>
                        </li>
    <li class="notice xans-record-">
                            <a href="/article/notice/1/227792/">택배사 변경 안내</a>
                            <span>2022-07-28</span>
                        </li>
    <li class="notice xans-record-">
                            <a href="/article/notice/1/214180/">마뗑킴 사칭 안내사항</a>
                            <span>2022-02-18</span>
                        </li>
    <li class="notice xans-record-">
                            <a href="/article/notice/1/206165/">무통장 제한 시간 변경 안내</a>
                            <span>2022-01-05</span>
                        </li>
    <li class="notice xans-record-">
                            <a href="/article/notice/1/170664/">2021.03.22 타사 Collab. 상품 에프터 서비스 안내</a>
                            <span>2021-03-22</span>
                        </li>
    <li class="notice xans-record-">
                            <a href="/article/notice/1/161577/">2020.11.06 EXCLUSIVE DUCKDOWN PUFFER JACKET 관리 방법</a>
                            <span>2020-11-06</span>
                        </li>
    </ul>
    <ul class="xans-element- xans-board xans-board-list-1 xans-board-list xans-board-1">
    <li class="xans-record-">
                            <a href="/article/notice/1/185898/">2021.08.24 Weekly Reviewers 이벤트 종료 안내</a>
                            <span>2021-08-24</span>
                        </li>
    <li class="xans-record-">
                            <a href="/article/notice/1/128356/">2020.03.20 생일 쿠폰 발급 안내</a>
                            <span>2020-03-20</span>
                        </li>
    </ul>
    </div>
    <div class="xans-element- xans-board xans-board-buttonlist-1 xans-board-buttonlist xans-board-1 displaynone btn-group-end mt24 "><a href="/board/free/write.html?board_no=1" class="displaynone btn btn-sm btn-dark btn-pd32"><span>Write</span></a>
    </div>
    <div class="xans-element- xans-board xans-board-paging-1 xans-board-paging xans-board-1 paginate"><a href="?board_no=1&amp;page=1">&lt;</a>
    <a href="?board_no=1&amp;page=1" class="this xans-record-">1</a>
    <a href="?board_no=1&amp;page=1">&gt;</a>
    </div>
    <form id="boardSearchForm" name="" action="/board/free/list.html" method="get" target="_top" enctype="multipart/form-data">
    <input id="board_no" name="board_no" value="1" type="hidden">
    <input id="page" name="page" value="1" type="hidden">
    <input id="board_sort" name="board_sort" value="" type="hidden"><div class="xans-element- xans-board xans-board-search-1 xans-board-search xans-board-1 board-search-block "><ul>
    <li class="search-date"><select id="search_date" name="search_date" fw-filter="" fw-label="" fw-msg="">
    <option value="week">일주일</option>
    <option value="month">한달</option>
    <option value="month3">세달</option>
    <option value="all">전체</option>
    </select></li>
                        <li class="search-key"><select id="search_key" name="search_key" fw-filter="" fw-label="" fw-msg="">
    <option value="subject">제목</option>
    <option value="content">내용</option>
    <option value="writer_name">글쓴이</option>
    <option value="member_id">아이디</option>
    <option value="nick_name">별명</option>
    </select></li>
                        <li class="search"><input id="search" name="search" fw-filter="" fw-label="" fw-msg="" class="inputTypeText" placeholder="" value="" type="text"></li>
                        <li class="search-btn"><button type="button" class="btn btn-sm btn-dark btn-full" onclick="BOARD.form_submit('boardSearchForm');"><span>SEARCH</span></button></li>
                    </ul>
    </div>
    </form></div>         
        </div> 
    </div>
            </div>
        </div>
    </div>
    <%-- <%@ include file="/layout/header.jsp"%> --%>
</body>
</html>