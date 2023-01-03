<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet"  type="text/css"  href="../resources/css/product/c1.css">
<link rel="stylesheet"  type="text/css"  href="../resources/css/product/c2.css">
</head>
<body>
<%@ include file="../include/header2.jsp"%>
   <div id="wrap">
        <div id="container">
            <div id="contents">
    <div class="product-list-wrap">
        <div class="header">
            <div class="category">
                <h2 class="xans-element- xans-product xans-product-headcategory ">Resell</h2>
                <span class="xans-element- xans-product xans-product-normalmenu count displaynone ">227</span>
            </div>           
        </div>
        <div class="xans-element- xans-product xans-product-normalpackage "><div class="xans-element- xans-product xans-product-listnormal">
    
    <ul class="js-prdList prdList grid4">
    				<c:forEach var="rProduct" items="${rProduct}">
   					<li id="anchorBoxId_3005" class="xans-record-">
                        <div class="thumbnail">
                            <div class="prdImg">
                                <a href="/resell/${rProduct.pro_id}" name="anchorBoxName_3005">
                                    <%-- <img class="thumb1" src="${rProduct.list.get(0).pro_loc}" data-src="${rProduct.list.get(0).pro_loc" id="eListPrdImage3005_1" alt="${rProduct.pro_name}"><br><img class="thumb2" src="${rProduct.list.get(1).pro_loc" alt="${rProduct.pro_name}"><br></a> --%>
                                    <img class="thumb1" src="${rProduct.list.get(0).pro_loc}" data-src="${rProduct.list.get(0).pro_loc}" id="eListPrdImage3004_1" alt="${rProduct.pro_name}"><br><img class="thumb2" src="${rProduct.list.get(1).pro_loc}" alt="${rProduct.pro_name}"><br></a>
                            </div>
                        </div>
                        
                        <div class="description">
                            <p class="name"><a href="/product/detail.html?product_no=3005&amp;cate_no=27&amp;display_group=1" class=""><span style="font-size:12px;color:#555555;">${rProduct.pro_name}</span></a></p>
                            <!-- 
                            <p class="price">
                                <span class="dc-price ">26,600</span>
                                <span class="product-price s">38,000</span>
                                <s class="product-custom displaynone">38,000</s>
                            </p>
                            <p class="summary displaynone"></p>
                            <p class="soldout displaynone">Sold out</p>
                             -->
                            
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