<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>


<%@ include file="/WEB-INF/views/include/header.jsp"%>
<body class="shop-openpage" style="min-height: 494.802px;">
<style>
.shop_openlink:hover{
text-decoration:underline;
color:blue;
}
</style>
<div class="shop-openbox">
    <div class="col-lg-12">
                            <div class="blog__item">
                                <div class="blog__item__pic">
                                    <img src="img/blog/blog-2.jpg" alt="">
                                </div>
                                <div class="blog__item__text">
                               
                                    <h3 style="margin-bottom:10px;">입점신청 페이지</h3><hr/>
                                    <p>본 가맹점의 경우 입점신청시 다음의 안내에 따라 첨부파일을 작성 및 첨부바랍니다.
입점시 필요 서류 : 사업자등록증, 통장사본, 판매계약서
필요서류가 완료되셨으면 하단의 작성하기를 클릭하여 작성바랍니다. </p><a href="#" class="shop_openlink">판매계약서 다운로드 링크 판매계약서로 이동(Click!!)</a>
                                    <a href="shop_membership_step1.jsp" class="blog__btn">작성하기 <span class=""></span></a>
                                </div>
                            </div>
                        </div>
   </div>

</div>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/shopopen.css">
               
               <%@ include file="/WEB-INF/views/include/footer.jsp"%>