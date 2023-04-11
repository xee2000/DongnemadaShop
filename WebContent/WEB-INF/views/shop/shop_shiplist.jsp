<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>


<%@ include file="/WEB-INF/views/include/header.jsp"%>

<body>


	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/shop/shop_main.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&amp;display=fallback">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/plugins/fontawesome-free/css/all.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/css/adminlte.min.css">
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
	<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script
	src="<%=request.getContextPath()%>/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script
	src="<%=request.getContextPath()%>/resources/dist/js/adminlte.min.js"></script>

<style>
th{
padding-left:15px;

}

</style>

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
						<li><a href="product_regist.do">상품등록</a></li>
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
	
	<!-- Hero Section End -->

	<!-- Breadcrumb Section Begin -->

	<!-- Breadcrumb Section End -->

	<!-- Blog Section Begin -->
	<section class="col-lg-8" style="margin: 0 auto;">
		<div class="order_list">
			<div class="today">
				배송 현황조회</div>
			<br><br>

			<div class="card card-body m-b-25">

			<table border="1">
			<tbody>
			<tr>
			<th>기간</th>
			<td>
			<select>
			<option>선택</option>
			<option>오늘</option>
			<option>3일</option>
			<option>7일</option>
			<option>한달</option>
			<option>6개월</option>
			<option>1년</option>
			
			</select>
			</td>
			</tr>
			<tr>
			<th>배송구분</th>
			<td>
			<select>
			<option>선택</option>
			<option>배송전</option>
			<option>배송중</option>
			<option>배송완료</option>
			</select>
			
		<div class="">
	<div class="">
		<form action="#">
			<input type="text" placeholder="상품을 입력해주세요"
				style="outline: black; border: 1px solid black;">
			<button style="height:35px;padding: 10px;" type="submit" class="site-btn btn-sm">검색</button>
		</form>
	</div>
	<div class=""></div>
			</div>
			</td>
			</tr>
			</tbody>
			</table>


			</div>
		</div>
	<br><br>
		<div class="order_list col-lg-12">
			<div class="card card-body" style="flex-direction:row;">


			
				<div class="order_table">

					<table class="tg" style="table-layout: fixed; width:100%;margin-top:10px;">
						<thead>
							<tr>
								<th class="">배송일자/방문일자</th>
								<th class="">주문번호</th>
								<th class="">수량</th>
								<th class="">결제합계</th>
								<th class="">배송상태</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class=""></td>
								<td class=""></td>
								<td class=""></td>
								<td class=""></td>
								<td class=""></td>
							</tr>
						</tbody>
					</table>

				</div>
			</div>
		</div>

		<br /> <br />

	</section>
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

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap"
	rel="stylesheet">
</body>











<%@ include file="/WEB-INF/views/include/footer.jsp"%>


