<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value="${dataMap.productList }"  var="productList"/>
<c:set value="${dataMap.count }"  var="count"/>



<body>
<link rel="stylesheet" type="text/css" href="//img.echosting.cafe24.com/css/ec/v4/layout_beta.css?vs=2303151188" charset="utf-8">
<link rel="stylesheet" type="text/css" href="//img.echosting.cafe24.com/css/ec/v4/suio.css" charset="utf-8">
<link rel="stylesheet" type="text/css" href="//img.echosting.cafe24.com/css/ec/v4/product.css" charset="utf-8">
<link rel="stylesheet" type="text/css" href="//img.echosting.cafe24.com/css/plugin/jquery.mCustomScrollbar.min.css" media="all" charset="utf-8">
<link rel="stylesheet" type="text/css" href="/ind-script/optimizer.php?filename=rZNRTsVACEU30F_XQXQlxh1QhtdiZ8oIQ4yu_o01vgUY_sgNnFxyAXZtDM8vBt10M2yAvcOraQka8MauYcRA7j8Nl-iMRvtNrS1TfoIH4TbH-VPtAPubC-lIB7x_BNsX9BqbnA6Elc-C9ij-Cwq5nP2qS8hCapwGm_3yjWvNIzpXppGKRJo7F9EzjxhDSVuvPPJsrjFGosciWHXLy6VK4bwrnAl73qo4uAsdif6uV2f3NfHzxs7tOpc7&amp;type=css&amp;k=37193a7bcf729702f05d7fb660db4203e0de94fd&amp;t=1669789136">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&amp;display=fallback">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/plugins/fontawesome-free/css/all.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/nice-select.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/style.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/nice-select.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/style.css"
	type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/shop/shop_regist.css">

		<script
	src="<%=request.getContextPath()%>/resources/js/jquery-3.3.1.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/jquery.nice-select.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/jquery-ui.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/jquery.slicknav.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/mixitup.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/main.js"></script>



	<div class="loader" style="display: none;"></div>
	</div>

	<!-- Humberger Begin -->
	<div class="humberger__menu__overlay"></div>
	<div class="humberger__menu__wrapper">
		<div class="humberger__menu__logo">
			<a href="#"><img src="img/logo.png" alt=""></a>
		</div>

	</div>

	<!-- Humberger End -->

	<!-- Header Section Begin -->
	<div class="product_categori">
		<div class="row">
			<div class="col-lg-12">
				<nav class="header__menu">
					<ul>
						<li><a href="#">상품등록</a></li>
						<li><a href="#">주문리스트 조회</a></li>
						<li><a href="#">매출현황</a></li>
						<li><a href="#">배송</a></li>
						<li><a href="#">취소/교환/반품/환불</a></li>
					</ul>
				</nav>

			</div>

		</div>
	</div>
	<!-- Header Section End -->

	<!-- Hero Section Begin -->
	<section class="hero hero-normal">
		<div class="row">
			<div class="col-lg-3"></div>
		</div>
		<div class="col-lg-9" style="margin-left: 25%;">
			<div class="hero__search">
				<div class="hero__search__form">
					<form action="#">
						<div class="hero__search__categories">
							카테고리 <span class=""></span>
						</div>
						<input type="text" placeholder="상품을 입력해주세요"
							style="outline: black; border: 1px solid black;">
						<button type="submit" class="site-btn">검색</button>
					</form>
				</div>
				<div class="hero__search__phone"></div>
			</div>
		</div>
	</section>
       
<style type="text/css">
.icoShop {display:none}
</style>    
	<!-- Blog Section Begin -->
	<section class="col-lg-8" style="margin: 0 auto;">
   <h5 class="col-lg-12">상품목록</h5>
			<div class="m-b-25">
<div class="section" id="QA_list2" style="z-index: 0; position: static;">

    <div class="mState" style="height:50px;">
        <div class="gLeft">
   
        </div>
           <div id="keyword" class="card-tools" style="width:550px;">
   					 <div class="input-group row">
   					 	<!-- search bar -->
   					 	<!-- sort num -->
					  	<select class="form-control col-md-3" name="perPageNum"  id="perPageNum" onchange="">					  		  		
					  		<option value="10" ${cri.perPageNum eq 10 ? 'selected' : '' } >정렬개수</option>
					  		<option value="2" ${cri.perPageNum eq 2 ? 'selected' : '' }>2개씩</option>
					  		<option value="3" ${cri.perPageNum eq 3 ? 'selected' : '' }>3개씩</option>
					  		<option value="5" ${cri.perPageNum eq 5 ? 'selected' : '' }>5개씩</option>
					  	</select>
					  	
					  	
					  	<!-- search bar -->
					 	<select class="form-control col-md-3" name="searchType" id="searchType">
					 		<option value=""  >검색구분</option>
							<option value="i" ${cri.searchType=='i' ? "selected":"" } >아이디</option>
							<option value="n" ${cri.searchType=='n' ? "selected":"" }>이 름</option>
							<option value="p" ${cri.searchType=='p' ? "selected":"" }>전화번호</option>
							<option value="e" ${cri.searchType=='e' ? "selected":"" }>이메일</option>					 						
						</select>
						<!-- keyword -->
   					 	<input  class="form-control" type="text" name="keyword" 
										placeholder="검색어를 입력하세요." value="${cri.keyword }"/>
						<span class="input-group-append">
							<button class="btn" style="background-color:green;color:white;" type="button"
									id="searchBtn" data-card-widget="search" onclick="list_go(1);">
								조회
						</button>
						</span>
					<!-- end : search bar -->		
   					 </div>
   				</div>   
    </div>
    <div class="mCtrl typeHeader setting">
<!-- [Allinone mode] 유틸 버튼(진열함/판매함/복사/삭제/분류수정 등등) -->
        
        <!-- 메인진열관리 / 분류별진열관리 / 상품등록 -->
 <div class="menu-bar">
 	<p class="total">[총 <strong>${count}</strong>개]</p>
 <a href="/disp/admin/shop1/product/productregister" class="btnCtrl eRegProduct"><span>바코드 스캔</span></a>
                 <a href="/disp/admin/shop1/product/productregister" class="btnCtrl eRegProduct"><span>선택 상품삭제</span></a>
     
     <a href="registForm.do" class="btnCtrl eRegProduct"><span>상품등록</span></a>
 </div>

    </div>
    <div class="mBoard typeList gScroll gCell">
        <!--
            항목 추가에따른 th, td 추가시 col도 같이 추가해주세요.
        -->
        
<table class="tg" style="undefined;table-layout: fixed; width: 1090px">

  <tr>
    <th class="tg-eq3i check_box"><input type="checkbox" class="allChk"></th>
    <th class="tg-eq3i">상품이미지</th>
    <th class="tg-eq3i">상품구분</th>
    <th class="tg-eq3i">상품코드</th>
    <th class="tg-eq3i">상품명</th>
    <th class="tg-eq3i">판매가</th>
    <th class="tg-eq3i">할인가</th>
  </tr>
  <c:forEach items="${productList }" var="product">
  <tr>
    <td class="tg-0lax check_box" style="text-align:center;"><input type="checkbox" class="allChk"></td>
    <td style="margin:0;padding:0;padding-top:5px;">
<span class="manPicture" data-id="${product.product_code }" style="width:40px;height:40px;display:block;margin:0 auto;"></span>
</td>
	<td class="tg-0lax">${product.category_name }</td>
    <td class="tg-0lax">${product.product_code }</td>
    <td class="tg-0lax"><a href="detail.do?product_code=${product.product_code }">${product.product_name }</a></td>
    <td class="tg-0lax" id="price">${product.product_price }</td>
    <td class="tg-0lax" id="price_sale">${product.product_discount}</td>	
  </tr>
</c:forEach>
</table>
    </div>
    <div class="mPaginate">
    <!--pagenation  -->
    
    	<%@ include file="/WEB-INF/views/module/pagination.jsp" %>
<script>
  window.onload=function(){
MemberPictureThumb('<%=request.getContextPath()%>');
 }
  </script>
    
    </div>
    </div>
</div>
</div>
<br /> <br />

	</section>

<script
	src="<%=request.getContextPath()%>/resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script
	src="<%=request.getContextPath()%>/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script
	src="<%=request.getContextPath()%>/resources/dist/js/adminlte.min.js"></script>


	

	
</body>






