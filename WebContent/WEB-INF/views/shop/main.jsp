<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>


<%@ include file="/WEB-INF/views/include/shopopen_header.jsp"%>

<body>
	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/resources/css/shop/shop_regist.css">
	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/resources/css/shop/shop_main.css" />
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link
		href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap"
		rel="stylesheet">
	<script type="text/javascript"
		src="https://www.gstatic.com/charts/loader.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.min.js"></script>



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
						<li><a href="productList.do">상품목록</a></li>
						<li><a href="orderlist.do">주문리스트 조회</a></li>
						<li><a href="saleslist.do">매출현황</a></li>
						<li><a href="#">배송</a></li>
						<li><a href="#">취소/교환/반품/환불</a></li> &nbsp;&nbsp;&nbsp;
						<li>${loginshop.shop_id }님환영합니다.</li>
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
		<div class="today_list">
			<div class="today">오늘의 할일</div>
			<br>
			<div class="page_link">{regDate}</div>
			<br />

			<div class="card card-body m-b-25" style="width: 900px;">

				<table class="tg" style="table-layout: fixed; width: 837px">
					<colgroup>
						<col style="width: 112.333333px">
						<col style="width: 111.333333px">
						<col style="width: 112.333333px">
						<col style="width: 114.333333px">
						<col style="width: 129.333333px">
						<col style="width: 129.333333px">
						<col style="width: 128.33333299999998px">
					</colgroup>
					<thead>
						<tr>
							<th class="tg-w6kf">결제완료</th>
							<th class="tg-w6kf">배송전</th>
							<th class="tg-w6kf">배송전</th>
							<th class="tg-w6kf">배송완료</th>
							<th class="tg-w6kf">취소(신청/처리중)</th>
							<th class="tg-w6kf">교환(신청/처리중)</th>
							<th class="tg-w6kf">반품(신청/처리</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="tg-p1nr"></td>
							<td class="tg-p1nr"></td>
							<td class="tg-p1nr"></td>
							<td class="tg-0pky"></td>
							<td class="tg-0pky"></td>
							<td class="tg-0pky"></td>
							<td class="tg-0pky"></td>
						</tr>
					</tbody>
				</table>


			</div>
		</div>
		<br />
		<div class="shop_salename">쇼핑몰 판매집계</div>
		<br>
		<div class="sales-list col-lg-12">
			<div class="card card-body"
				style="flex-direction: row; width: 900px;">


				<div id="columnchart_values">

					<script type="text/javascript">
						google.charts.load("current", {
							packages : [ 'corechart' ]
						});
						google.charts.setOnLoadCallback(drawChart);
						function drawChart() {
							var data = google.visualization.arrayToDataTable([
									[ "Element", "매출", {
										role : "style"
									} ], [ "날짜", 10.49, "silver" ],
									[ "날짜", 19.30, "gold" ],
									[ "날짜", 21.45, "color: #e5e4e2" ],
									[ "날짜", 21.45, "color: #e5e4e2" ],
									[ "날짜", 21.45, "color: #e5e4e2" ],
									[ "날짜", 21.45, "color: #e5e4e2" ],
									[ "날짜", 21.45, "color: #e5e4e2" ] ]);

							var view = new google.visualization.DataView(data);
							view.setColumns([ 0, 1, {
								calc : "stringify",
								sourceColumn : 1,
								type : "string",
								role : "annotation"
							}, 2 ]);

							var options = {
								title : "일별 매출현황 그래프",
								width : 500,
								height : 300,
								bar : {
									groupWidth : "95%"
								},
								legend : {
									position : "left"
								},
							};
							var chart = new google.visualization.ColumnChart(
									document
											.getElementById("columnchart_values"));
							chart.draw(view, options);
						}
					</script>
				</div>
				<div class="sales_table">

					<table class="tg"
						style="table-layout: fixed; width: 326px; margin-top: 10px;">
						<colgroup>
							<col style="width: 100.333333px">
							<col style="width: 117.333333px">
							<col style="width: 108.333333px">
						</colgroup>
						<thead>
							<tr>
								<th class="tg-805n">날짜</th>
								<th class="tg-805n">주문</th>
								<th class="tg-805n">취소(환불/반품)</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="tg-0pky"></td>
								<td class="tg-0pky"></td>
								<td class="tg-0pky"></td>
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





</body>




<%@ include file="/WEB-INF/views/include/shopopen_footer.jsp"%>


