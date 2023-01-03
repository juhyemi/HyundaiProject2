<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" href="${contextPath}/resources/css/main1.css" type="text/css">
<link rel="stylesheet" href="${contextPath}/resources/css/member/find_id.css" type="text/css">
</head>
<body>    
<%@ include file="../include/header2.jsp"%>

<script type="text/javascript">
function frmSubmit(){
	$("#findIdForm").submit();
}
</script>
  <div id="wrap">
    <div id="container">
      <div id="contents">
        <form id="findIdForm" name="findIdForm" action="/member/findId" method="post">
          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
          <div class="xans-element- xans-member xans-member-findid member-wrap ">
            <div class="title-block">
              <h2>아이디 찾기</h2>
            </div>
            <div class="find-block">
              <fieldset>
                <div class="form-block name fmt" id="name_view" style="">
                  <label class="ePlaceholderEach required" title="이름">
                    <p class="form-title">이름</p>
                    <input id="name" name="mem_name" fw-filter="" fw-label="이름" fw-msg="" class="lostInput" placeholder="이름"
                      value="" type="text">
                  </label>
                </div>

                <div class="form-block email fmt" id="email_view" style="">
                  <label class="ePlaceholderEach required" title="이메일">
                    <p class="form-title">이메일</p>
                    <input id="email" name="mem_email" fw-filter="isEmail" fw-label="이메일" fw-msg="" class="lostInput"
                      placeholder="이메일" value="" type="text">
                  </label>
                </div>

              </fieldset>
              <div class="btn-group-center mt40">
                <button type="button" class="btn btn-md btn-dark btn-pd32"
                  onclick="frmSubmit();"><span>확인</span></button>
              </div>

            </div>
          </div>
        </form>
      </div>
    </div>
  </div>

<%@ include file="../include/footer.jsp"%>