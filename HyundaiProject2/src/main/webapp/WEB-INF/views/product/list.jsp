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
            <div class="xans-element- xans-product xans-product-normalpaging paginate">
    <!-- <a href="#none">&lt;&lt;</a> -->
    <c:if test="${pageMaker.prev}">
    	<li class="paginate_button previous">
    		<a href="${pageMaker.startPage-1}">&lt;</a>
    	</li>
    </c:if>
    
    <c:forEach var="num" begin= "${pageMaker.startPage }" end = "${pageMaker.endPage }">
    	<li class="paginate_button ${pageMaker.cri.pageNum ==num ? "active":""}">
    		<a href="${num}" class="this xans-record-">${num}</a>
    	</li>
    </c:forEach>
    
    <c:if test = "${pageMaker.next}">
	    <li class="paginate_button next">
	   	 	<a href="${pageMaker.endPage+1}">&gt;</a>
	   	</li>
   	</c:if>
   	<!-- <a href="#">&gt;&gt;</a> -->
    <form id="actionForm" action="/product/list/${category}" method="get">
    	<input type = "hidden" name = "pageNum" value = "${pageMaker.cri.pageNum}">
    	<input type = "hidden" name = "amount" value = "${pageMaker.cri.amount}">
    </form>
    </div>
        </div>
    </div>  
            </div>
        </div>
    </div>
    <script type="text/javascript">
    	$(document).ready(function(){
    		var actionForm = $("#actionForm");
    		
    		$(".paginate_button a").on("click", function(e) {
    			e.preventDefault();
    			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
    			actionForm.submit();
    		});
    		
    	});
    
    </script>
    <%@ include file="../include/footer.jsp"%>
</body>
</html>