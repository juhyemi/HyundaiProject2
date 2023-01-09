<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main1.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main2.css">
<link rel="stylesheet"  type="text/css"  href="${contextPath}/resources/css/talks/talksList.css">
<script type="text/javascript">
// 조회수 증가
function updateView(tno){
	var csrfHeadName="${_csrf.headerName}";
    var csrfTokenValue="${_csrf.token}";
    
	$.ajax({
		url : '/talks/updateView',
		type : 'post',
		data : {
			talks_id : tno
		},
		beforeSend : function(xhr) {
	        xhr.setRequestHeader(csrfHeadName, csrfTokenValue);
	    },
	    success : function(result){
	    	location.href="/talks/tcontent/"+tno;
	    },
	    error : function(error){
	    	console.log(error);
	    }
	});
	
}
	
</script>
</head>
<body class="magiedumatin">
<%@ include file="../include/header2.jsp"%>
   <div id="wrap">
        <div id="container">
            <div id="contents">
    <div class="cscenter-wrap" style="">
        <div class="header">
            <h2>Fashion Talks</h2>
        </div>    
        <div class="cscenter-layout">     
            <div class="xans-element- xans-board xans-board-listpackage-1 xans-board-listpackage xans-board-1 contents-block "><div class="title-block">
                    <h2>Talks List</h2>
                    <button type="button" class="btn btn-sm btn-dark btn-write" onclick="location.href='/talks/tform'"><span>WRITE</span></button>
                </div>
    <div class="board-list-block">
                    <ul class="xans-element- xans-board xans-board-notice-1 xans-board-notice xans-board-1" style="margin-top: 0px;">
                		
                        <li class="notice xans-record-">
                            	<span style="width: 10%;">No</span>
	                            <span style="width: 60%; text-align: center;">Title</span>
	                            <span style="width: 10%; text-align: center;">Writer</span>
	                            <span style="width: 10%; text-align: center;">Date</span>
								<span style="width: 10%; text-align: center;">Views</span>
    </ul>
    
    <ul class="xans-element- xans-board xans-board-list-1 xans-board-list xans-board-1">
   					
                								
    <c:forEach var="tList" items="${talksList}">
	    <li class="xans-record-">
	    						<span style="width: 10%;"><a href="javascript:void(0)" onclick="updateView('${tList.talks_id}');"><c:out value="${tList.talks_title}" /></a></span>
	                            <span style="width: 60%; "><a href="/talks/tcontent/${tList.talks_id}"><c:out value="${tList.talks_title}" /></a></span>
	                            <span style="width: 10%; text-align: center;"><c:out value="${tList.member_mem_id}" /></span>
	                            <span style="width: 10%; text-align: center;"><fmt:formatDate value="${tList.talks_regdate}" pattern="yyyy-MM-dd"/></span>
								<span style="width: 10%; text-align: center;"><c:out value="${tList.views}" /></span>
	     </li>
    </c:forEach>
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
    <input id="board_sort" name="board_sort" value="" type="hidden">

    </form></div>         
        </div> 
    </div>
            </div>
        </div>
    </div>
    <%@ include file="../include/footer.jsp"%>
</body>
</html>