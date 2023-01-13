<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main1.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main2.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/product/c1.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/product/c2.css">
</head>
<body class="magiedumatin">
<%@ include file="../include/header2.jsp"%>
<!--검색 결과가 없는 경우 나타나는 jsp
	작성자 : 김주혜-->
   <div id="wrap" style="height: 600px;">
        <div id="container">
            <div id="contents">
    <div class="product-list-wrap">
        <div class="header">
            <div class="category">
                <h2 class="xans-element- xans-product xans-product-headcategory ">Search Result</h2>
            </div>           
        </div>
      	<p style="margin-top:220px; font-size: 15px; text-align: center;">검색 결과가 없습니다.</p>
     
    </div>  
            </div>
        </div>
    </div>
    
    <%@ include file="../include/footer.jsp"%>
</body>
</html>