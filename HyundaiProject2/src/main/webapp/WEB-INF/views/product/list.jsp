<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main1.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main2.css">
<link rel="stylesheet"  type="text/css"  href="${contextPath}/resources/css/product/c1.css">
<link rel="stylesheet"  type="text/css"  href="${contextPath}/resources/css/product/c2.css">
</head>
<body class="magiedumatin">
<%@ include file="../include/header2.jsp"%>

   <div id="wrap">
        <div id="container">
            <div id="contents">
    <div class="product-list-wrap">
        <div class="header">
            <div class="category">
                <h2 class="xans-element- xans-product xans-product-headcategory ">${category}</h2>
                <span class="xans-element- xans-product xans-product-normalmenu count displaynone ">227</span>
            </div>           
        </div>
        <div class="xans-element- xans-product xans-product-normalpackage "><div class="xans-element- xans-product xans-product-listnormal">
    <ul class="js-prdList prdList grid4">
		<c:forEach var="pList" items = "${list}">
 			   <li id="anchorBoxId_3493" class="xans-record-">
                        <div class="thumbnail">
                            <div class="prdImg">
                                <a href="/product/option/${pList.pro_id }">
                                    <img class="thumb1" src="${pList.loc1}" id="eListPrdImage3493_1" ><br>
                                    <img class="thumb2" src="${pList.loc2}"  ><br></a>
                            </div>
                        </div>
                        <div class="description">
                            <p class="name"><a href="/product/option/${pList.pro_id}" class=""><span style="font-size:12px;color:#555555;"><c:out value="${pList.pro_name }" /></span></a></p>
                            <p class="price">
                                <span class="dc-price displaynone"></span>
                                <span class="product-price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${pList.pro_price}" /></span>
                                <span class="product-custom displaynone">188,000</span>
                            </p>
                            <p class="soldout displaynone">Sold out</p>
                        </div>
               </li>
         </c:forEach>
     </ul>
    </div>
    </div>
        <div class="only-pc">
            <div class="xans-element- xans-product xans-product-normalpaging paginate"><a href="#none">&lt;&lt;</a>
    <a href="#none">&lt;</a>
    <a href="?cate_no=27&amp;page=1" class="this xans-record-">1</a>
    <a href="?cate_no=27&amp;page=2" class="other xans-record-">2</a>
    <a href="?cate_no=27&amp;page=3" class="other xans-record-">3</a>
    <a href="?cate_no=27&amp;page=4" class="other xans-record-">4</a>
    <a href="?cate_no=27&amp;page=5" class="other xans-record-">5</a>
    <a href="?cate_no=27&amp;page=2">&gt;</a>
    <a href="?cate_no=27&amp;page=5">&gt;&gt;</a>
    </div>
        </div>
    </div>  
            </div>
        </div>
    </div>
    <%@ include file="../include/footer.jsp"%>
</body>
</html>