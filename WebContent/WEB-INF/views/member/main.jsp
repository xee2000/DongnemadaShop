<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set value="${dataMap.martProductList }" var="martproductList" />
<c:set value="${dataMap.storeProductList }" var="storeproductList" />
<c:set value="${dataMap.productMap }" var="productMap" />
<c:set value="${productMap.productList }" var="productList" />
<c:set value="${dataMap.pageMaker }" var="pageMaker" />
<c:set value="${pageMaker.cri }" var="cri" />

<body style="font-family: 'Nanum Gothic', sans-serif;">
<style>
.brand_logo{
	width:50%;
	margin:0 auto;
	
}

</style>
	<script
		src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-element-bundle.min.js"></script>
	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/resources/css/member/member_main.css">

	<script src="https://kit.fontawesome.com/6342f78d2e.js"
		crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a18295f8675a0ecc7892586c7058362c"></script>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link
		href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Noto+Sans+KR:wght@300&display=swap"
		rel="stylesheet">
	<div>
		<div>
			<label for="id" class="col-sm-12"
				style="font-size: 0.9em; margin-left: 25%;"> <i
				style="margin-right: 6x; font-size: 35px; color: #cc0000;"
				class="fa-sharp fa-solid fa-fire-flame-curved"></i>
				<div
					style="margin-top: 10px; margin-bottom: 10px; font-size: 25px; font-weight: bold; display: inline-block; border-width: 1px solid red;">카테고리</div>
			</label>
		</div>
		<!-- 지도를 표시할 div 입니다 -->

		<div style="margin-left: 25%; margin-top: 10px; margin-bottom: 10px;">
			<select class="form-control col-md-3" name="searchType"
				id="searchType">
				<option value="">검색구분</option>
				<option value="pn" ${cri.searchType=='pn' ? "selected" :"" }>상품명</option>
				<option value="cn" ${cri.searchType=='cn' ? "selected" :"" }>카테고리명</option>
				<option value="p" ${cri.searchType=='p' ? "selected" :"" }>가격대</option>
			</select>
			<!-- keyword -->
			<input type="text" placeholder="상품을 입력해주세요" value="${cri.keyword }"
				style="outline: #BDBDBD; border: 1px solid black; height: 38px; width: 400px; border-radius: 5px;">
			<button type="button" onclick="productlist_go(1);"
				style="width: 70px; height: 30px; border: none; background: #fdd023; border-radius: 5px;">검색</button>

		</div>

		<div style="margin: 0 auto; text-align: center;">
			<div style="width: 800px; display: inline-block;">
				<div style="text-align: left;">
					<i
						style="display: inline-block; font-size: 30px; color: #fdd023; margin-right: 5px;"
						class="fa-solid fa-location-dot"></i>
					<div
						style="font-size: 25px; font-weight: bold; display: inline-block; border-width: 1px solid red;">우리동네</div>
					<div
						style="color: #333333; font-size: 12px; display: inline-block;">내
						근처의 마트와 편의점에서 구매를 편리하게!</div>
				</div>
				<div id="map"
					style="width: 800px; height: 350px; border-radius: 10px; margin-top: 8px; margin-bottom: 50px;"></div>
				<div style="text-align: left;">
					<i style="margin-right: 6x; font-size: 35px; color: #cc0000;"
						class="fa-sharp fa-solid fa-fire-flame-curved"></i>
					<div
						style="margin-bottom: 10px; font-size: 25px; font-weight: bold; display: inline-block; border-width: 1px solid red;">오늘의</div>
					<div
						style="margin-bottom: 10px; font-size: 25px; font-weight: bold; display: inline-block; border-width: 1px solid red; color: orange;">할인상품</div>
				</div>

				<div class="row">
					<div
						class="product__discount__slider owl-carousel owl-loaded owl-drag">
						<div class="owl-stage-outer">
							<div class="owl-stage"
								style="transform: translate3d(-840px, 0px, 0px); transition: all 1.2s ease 0s; width: 2520px;">
								<div class="owl-item cloned" style="width: 210px;">
									<div class="col-lg-4">
										<div class="product__discount__item">
											<div class="product__discount__item__pic set-bg"
												data-setbg="<%=request.getContextPath()%>/resources/images/뻥이요.jpg"
												style="background-image: url(&quot;img/product/discount/pd-4.jpg&quot;);">
												<div class="product__discount__percent">-20%</div>
												<ul class="product__item__pic__hover">
													<li><a href="<%=request.getContextPath()%>/member/martlist.do"><i class="fa fa-shopping-cart"></i></a></li>
												</ul>
											</div>
											<div class="product__discount__item__text">
												<h5>
													<a href="<%=request.getContextPath()%>/member/martlist.do"><img class="brand_logo" style="margin:0 auto;width:50%;"src="<%=request.getContextPath()%>/resources/images/롯데마트.jpg"/>뻥이요</a>
												</h5>
												<div class="product__item__price">
													$2,000 <span>$3,000</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item cloned" style="width: 210px;">
									<div class="col-lg-4">
										<div class="product__discount__item">
											<div class="product__discount__item__pic set-bg"
												data-setbg="<%=request.getContextPath()%>/resources/images/오감자.jpg"
												style="background-image: url(&quot;img/product/discount/pd-5.jpg&quot;);">
												<div class="product__discount__percent">-20%</div>
												<ul class="product__item__pic__hover">
													<li><a href="<%=request.getContextPath()%>/member/storelist.do"><i class="fa fa-shopping-cart"></i></a></li>
												</ul>
											</div>
											<div class="product__discount__item__text">
												<h5>
													<a href="<%=request.getContextPath()%>/member/storelist.do"><img class="brand_logo" style="margin:0 auto;width:50%;"src="<%=request.getContextPath()%>/resources/images/세븐.png"/>오감자</a>
												</h5>
												<div class="product__item__price">
													$2,000 <span>$2,500</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item cloned" style="width: 210px;">
									<div class="col-lg-4">
											<div class="product__discount__item">
											<div class="product__discount__item__pic set-bg"
												data-setbg="<%=request.getContextPath()%>/resources/images/포카칩.jpg"
												style="background-image: url(&quot;img/product/discount/pd-4.jpg&quot;);">
												<div class="product__discount__percent">-20%</div>
												<ul class="product__item__pic__hover">
													<li><a href="<%=request.getContextPath()%>/member/martlist.do"><i class="fa fa-shopping-cart"></i></a></li>
												</ul>
											</div>
											<div class="product__discount__item__text">
												<h5>
													<a href="<%=request.getContextPath()%>/member/martlist.do"><img class="brand_logo" style="margin:0 auto;width:50%;" src="<%=request.getContextPath()%>/resources/images/롯데마트.jpg"/>포카칩</a>
												</h5>
												<div class="product__item__price">
													₩2,500 <span>₩3,000</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item" style="width: 210px;">
									<div class="col-lg-4">
										<div class="product__discount__item">
											<div class="product__discount__item__pic set-bg"
												data-setbg="<%=request.getContextPath()%>/resources/images/오징어땅콩.jpg"
												style="background-image: url(&quot;img/product/discount/pd-1.jpg&quot;);">
												<div class="product__discount__percent">-20%</div>
												<ul class="product__item__pic__hover">
													<li><a href="<%=request.getContextPath()%>/member/martlist.do"><i class="fa fa-shopping-cart"></i></a></li>
												</ul>
											</div>
											<div class="product__discount__item__text">
												<h5>
													<a href="<%=request.getContextPath()%>/member/martlist.do"><img class="brand_logo" style="margin:0 auto;width:50%;" src="<%=request.getContextPath()%>/resources/images/이마트.png"/>오징어땅콩</a>
												</h5>
												<div class="product__item__price">
													₩2,000 <span>₩3,000</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item active" style="width: 210px;">
									<div class="col-lg-4">
										<div class="product__discount__item">
											<div class="product__discount__item__pic set-bg"
												data-setbg="<%=request.getContextPath()%>/resources/images/자갈치.jpg"
												style="background-image: url(&quot;img/product/discount/pd-2.jpg&quot;);">
												<div class="product__discount__percent">-20%</div>
												<ul class="product__item__pic__hover">
													<li><a href="<%=request.getContextPath()%>/member/storelist.do">"><i class="fa fa-shopping-cart"></i></a></li>
												</ul>
											</div>
											<div class="product__discount__item__text">
												<h5>
													<a href="<%=request.getContextPath()%>/member/storelist.do"><img class="brand_logo" style="margin:0 auto;width:50%;" src="<%=request.getContextPath()%>/resources/images/CU.png"/>자갈치</a>
												</h5>
												<div class="product__item__price">
													₩2,000 <span>₩2,500</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item active" style="width: 210px;">
									<div class="col-lg-4">
										<div class="product__discount__item">
											<div class="product__discount__item__pic set-bg"
												data-setbg="<%=request.getContextPath()%>/resources/images/치토스.jpg"
												style="background-image: url(&quot;img/product/discount/pd-3.jpg&quot;);">
												<div class="product__discount__percent">-20%</div>
												<ul class="product__item__pic__hover">
													<li><a href="<%=request.getContextPath()%>/member/martlist.do"><i class="fa fa-shopping-cart"></i></a></li>
												</ul>
											</div>
											<div class="product__discount__item__text">
												<h5>
													<a href="<%=request.getContextPath()%>/member/martlist.do"><img class="brand_logo" style="margin:0 auto;width:50%;" src="<%=request.getContextPath()%>/resources/images/이마트.png"/>치토스</a>
												</h5>
												<div class="product__item__price">
													₩2,000 <span>₩3,000</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item" style="width: 210px;">
									<div class="col-lg-4">
										<div class="product__discount__item">
											<div class="product__discount__item__pic set-bg"
												data-setbg="<%=request.getContextPath()%>/resources/images/포카칩.jpg"
												style="background-image: url(&quot;img/product/discount/pd-4.jpg&quot;);">
												<div class="product__discount__percent">-20%</div>
												<ul class="product__item__pic__hover">
													<li><a href="<%=request.getContextPath()%>/member/martlist.do"><i class="fa fa-shopping-cart"></i></a></li>
												</ul>
											</div>
											<div class="product__discount__item__text">
												<h5>
													<a href="<%=request.getContextPath()%>/member/martlist.do"><img class="brand_logo" style="margin:0 auto;width:50%;" src="<%=request.getContextPath()%>/resources/images/이마트.png"/>포카칩</a>
												</h5>
												<div class="product__item__price">
													₩2,000<span>₩3,000</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item" style="width: 210px;">
									<div class="col-lg-4">
										<div class="product__discount__item">
											<div class="product__discount__item__pic set-bg"
												data-setbg="<%=request.getContextPath()%>/resources/images/뻥이요.jpg"
												style="background-image: url(&quot;img/product/discount/pd-5.jpg&quot;);">
												<div class="product__discount__percent">-20%</div>
												<ul class="product__item__pic__hover">
													<li><a href="<%=request.getContextPath()%>/member/martlist.do"><i class="fa fa-shopping-cart"></i></a></li>
												</ul>
											</div>
											<div class="product__discount__item__text">
												<h5>
													<a href="<%=request.getContextPath()%>/member/martlist.do"><img class="brand_logo" style="margin:0 auto;width:50%;" src="<%=request.getContextPath()%>/resources/images/홈플러스.jpg"/>뻥이요</a>
												</h5>
												<div class="product__item__price">
													₩2,000 <span>₩2,500</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item" style="width: 210px;">
									<div class="col-lg-4">
										<div class="product__discount__item">
											<div class="product__discount__item__pic set-bg"
												data-setbg="<%=request.getContextPath()%>/resources/images/오감자.jpg"
												style="background-image: url(&quot;img/product/discount/pd-6.jpg&quot;);">
												<div class="product__discount__percent">-20%</div>
												<ul class="product__item__pic__hover">
													<li><a href="<%=request.getContextPath()%>/member/martlist.do"><i class="fa fa-shopping-cart"></i></a></li>
												</ul>
											</div>
											<div class="product__discount__item__text">
												<h5>
													<a href="<%=request.getContextPath()%>/member/martlist.do"><img class="brand_logo" style="margin:0 auto;width:50%;" src="<%=request.getContextPath()%>/resources/images/롯데마트.jpg"/>오감자</a>
												</h5>
												<div class="product__item__price">
													₩2,000 <span>₩3,000</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item cloned" style="width: 210px;">
									<div class="col-lg-4">
										<div class="product__discount__item">
											<div class="product__discount__item__pic set-bg"
												data-setbg="<%=request.getContextPath()%>/resources/images/치토스.jpg"
												style="background-image: url(&quot;img/product/discount/pd-1.jpg&quot;);">
												<div class="product__discount__percent">-20%</div>
												<ul class="product__item__pic__hover">
													<li><a href="<%=request.getContextPath()%>/member/martlist.do"><i class="fa fa-shopping-cart"></i></a></li>
												</ul>
											</div>
											<div class="product__discount__item__text">
												<h5>
													<a href="<%=request.getContextPath()%>/member/martlist.do"><img class="brand_logo" style="margin:0 auto;width:50%;" src="<%=request.getContextPath()%>/resources/images/롯데마트.jpg"/>치토스</a>
												</h5>
												<div class="product__item__price">
													₩1,500 <span>₩2,000</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item cloned" style="width: 210px;">
									<div class="col-lg-4">
										<div class="product__discount__item">
											<div class="product__discount__item__pic set-bg"
												data-setbg="<%=request.getContextPath()%>/resources/images/오감자.jpg"
												style="background-image: url(&quot;img/product/discount/pd-2.jpg&quot;);">
												<div class="product__discount__percent">-20%</div>
												<ul class="product__item__pic__hover">
													<li><a href="<%=request.getContextPath()%>/member/martlist.do"><i class="fa fa-shopping-cart"></i></a></li>
												</ul>
											</div>
											<div class="product__discount__item__text">
												<h5>
													<a href="<%=request.getContextPath()%>/member/martlist.do"><img class="brand_logo" style="margin:0 auto;width:50%;" src="<%=request.getContextPath()%>/resources/images/이마트.png"/>오감자</a>
												</h5>
												<div class="product__item__price">
													₩1,500 <span>₩2,000</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item cloned" style="width: 210px;">
									<div class="col-lg-4">
										<div class="product__discount__item">
											<div class="product__discount__item__pic set-bg"
												data-setbg="<%=request.getContextPath()%>/resources/images/오징어땅콩.jpg"
												style="background-image: url(&quot;img/product/discount/pd-3.jpg&quot;);">
												<div class="product__discount__percent">-20%</div>
												<ul class="product__item__pic__hover">
													<li><a href="<%=request.getContextPath()%>/member/storelist.do"><i class="fa fa-shopping-cart"></i></a></li>
												</ul>
											</div>
											<div class="product__discount__item__text">
												<h5>
													<a href="<%=request.getContextPath()%>/member/storelist.do"><img class="brand_logo" style="margin:0 auto;width:50%;" src="<%=request.getContextPath()%>/resources/images/세븐.jpg"/>오징어땅콩</a>
												</h5>
												<div class="product__item__price">
													₩1,500 <span>₩2,000</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="owl-nav disabled">
							<button type="button" role="presentation" class="owl-prev">
								<span aria-label="Previous">‹</span>
							</button>
							<button type="button" role="presentation" class="owl-next">
								<span aria-label="Next">›</span>
							</button>
						</div>
					</div>
				</div>

			</div>

			<div style="margin-top: 25px; margin-bottom: 50px;">
				<i style="font-size: 30px; color: #0B3861"
					class="fa-solid fa-cart-shopping"></i>
				<div
					style="margin-bottom: 10px; font-size: 25px; font-weight: bold; display: inline-block; border-width: 1px solid red;">매장별
				</div>
				<div
					style="margin-bottom: 10px; font-size: 25px; font-weight: bold; display: inline-block; border-width: 1px solid red; color: #0B3861;">광고상품</div>
			</div>

			<div class="col-6" style="margin: 0 auto;">
				<div class="card card-primary card-tabs">
					<div class="card-header p-0 pt-1"
						style="background-color: #fdd023;">
						<ul class="nav nav-tabs" id="custom-tabs-one-tab" role="tablist">
							<li class="nav-item" style="width: calc(100%/ 2)"><a
								class="nav-link active" id="custom-tabs-one-home-tab"
								data-toggle="pill" href="#custom-tabs-one-home" role="tab"
								aria-controls="custom-tabs-one-home" aria-selected="true">마트</a>
							</li>
							<li class="nav-item" style="width: calc(100%/ 2)"><a
								class="nav-link" id="custom-tabs-one-profile-tab"
								data-toggle="pill" href="#custom-tabs-one-profile" role="tab"
								aria-controls="custom-tabs-one-profile" aria-selected="false">편의점</a>
							</li>
						</ul>
					</div>
					<div class="card-body">
						<div class="tab-content" id="custom-tabs-one-tabContent">
							<div class="tab-pane fade active show" id="custom-tabs-one-home"
								role="tabpanel" aria-labelledby="custom-tabs-one-home-tab" style="overflow-hodden:auto; overflow-x:auto;">
								<div style="text-align: end;">
									<i style="font-size: 30px; color: #0B3861"
										class="fa-solid fa-cart-shopping"></i><a
										href="<%=request.getContextPath()%>/member/martlist.do">더보기&nbsp;></a>
								</div>
								<ul style="display: flex;">
									<c:forEach items="${martproductList }" var="mart">
										<li><a
											href="<%=request.getContextPath()%>/member/productdetail.do?product_code=${mart.product_code}"><span
												class="manPicture" data-id="${mart.product_code }"
												style="font-weight: bold; display: inline-block; border-width: 1px solid red; width: 224px; height: 224px; display: block; margin: 0 auto;"></span></a>
											<a
											href="<%=request.getContextPath()%>/member/productdetail.do?product_code=${mart.product_code}">
												<div class="product_name">${mart.product_name }</div>
										</a></li>
									</c:forEach>
								</ul>

							</div>
							<div class="tab-pane fade" id="custom-tabs-one-profile"
								role="tabpanel" aria-labelledby="custom-tabs-one-profile-tab">
								<div style="text-align: end;">
									<i style="font-size: 30px; color: #0B3861"
										class="fa-solid fa-cart-shopping"></i><a
										href="<%=request.getContextPath()%>/member/storelist.do">더보기&nbsp;></a>
								</div>
								<ul style="display: flex;">
									<c:forEach items="${storeproductList }" var="store">
										<li><span class="manPicture"
											data-id="${store.product_code }"
											style="font-weight: bold; display: inline-block; border-width: 1px solid red; width: 224px; height: 224px; display: block; margin: 0 auto;"></span>
											<div class="product_name">${store.product_name }</div></li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
	window.onload=function(){
	MemberPictureThumb('<%=request.getContextPath()%>');
		}
	</script>

	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(36.34937938138288, 127.37682489852581), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨 
		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
		if (navigator.geolocation) {

			// GeoLocation을 이용해서 접속 위치를 얻어옵니다
			navigator.geolocation.getCurrentPosition(function(position) {

				var lat = position.coords.latitude, // 위도
				lon = position.coords.longitude; // 경도

				var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
				message = '<div style="padding:5px;">내 위치</div>'; // 인포윈도우에 표시될 내용입니다

				// 마커와 인포윈도우를 표시합니다
				displayMarker(locPosition, message);

			});

		} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

			var locPosition = new kakao.maps.LatLng(33.450701, 126.570667), message = 'geolocation을 사용할수 없어요..'

			displayMarker(locPosition, message);
		}

		// 마커를 표시할 위치와 title 객체 배열입니다 
		var positions = [
		    {
		        title: 'GS25 둔산애플점', 
		        latlng: new kakao.maps.LatLng(36.34937938138288, 127.37682489852581)
		    },
		    {
		        title: '세븐일레븐 둔산수성점', 
		        latlng: new kakao.maps.LatLng(36.350360693182694, 127.37570166676315)
		    },
		    {
		        title: '세븐일레븐 둔산타운점', 
		        latlng: new kakao.maps.LatLng(36.35056289328723, 127.37659665390865)
		    },
		    {
		        title: 'CU 둔산점',
		        latlng: new kakao.maps.LatLng(36.350424957799326, 127.37460743493206)
		    },
		    {
		        title: 'GS25 갈마리쥬점',
		        latlng: new kakao.maps.LatLng(36.34911062378242, 127.37488521299225)
		    },
		    {
		        title: 'GS25 둔산 그랜드점',
		        latlng: new kakao.maps.LatLng(36.35044934369766, 127.3783089381492)
		    },
		    {
		        title: 'CU 현대 대전 청사 셀프점',
		        latlng: new kakao.maps.LatLng(36.34992971633167, 127.37805576764843)
		    },
		    {
		        title: 'GS25 타임월드점',
		        latlng: new kakao.maps.LatLng(36.35090785507989, 127.37722774964861)
		    },
		    {
		        title: '세븐일레븐 8',
		        latlng: new kakao.maps.LatLng(36.349031670213904, 127.37347838874884)
		    },
		    {
		        title: 'GS25 9',
		        latlng: new kakao.maps.LatLng(36.34848146539528, 127.37291318662757)
		    },
		    {
		        title: 'GS25 갈마스타점',
		        latlng: new kakao.maps.LatLng(36.348252885134, 127.37540189851445)
		    },
		    {
		        title: 'CU 12',
		        latlng: new kakao.maps.LatLng(36.3472674613317, 127.3771154995448)
		    },
		    {
		        title: 'EMART24 232',
		        latlng: new kakao.maps.LatLng(36.34890576064194, 127.37983045529732 )
		    },
		    {
		        title: 'CU 4242',
		        latlng: new kakao.maps.LatLng(36.35068186554861, 127.38099768395112  )
		    }
		];

		// 마커 이미지의 이미지 주소입니다
		var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		    
		for (var i = 0; i < positions.length; i ++) {
		    
		    // 마커 이미지의 이미지 크기 입니다
		    var imageSize = new kakao.maps.Size(24, 35); 
		    
		    // 마커 이미지를 생성합니다    
		    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
		    
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng, // 마커를 표시할 위치
		        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		        image : markerImage // 마커 이미지 
		    });
		}
		
		// ...
		// Code for creating the positions array, imageSize, and markerImage remains the same
		// ...

		var currentInfoWindow; // Variable to store the currently open info window

		for (var i = 0; i < positions.length; i++) {
		    // Create markers
		    var marker = new kakao.maps.Marker({
		        map: map, // Map to display markers on
		        position: positions[i].latlng, // Position to display the marker
		        title: positions[i].title, // The title of the marker, hovering the mouse over the marker will display the title
		        image: markerImage // Marker image
		    });

		    // Create an info window with an anchor tag as its content
		    var infoWindow = new kakao.maps.InfoWindow({
        content: '<div style="font-size: 13px; padding: 5px;"><a href="<%=request.getContextPath()%>/member/storelist.do" target="_blank" style="color: inherit; text-decoration: none;">'
								+ positions[i].title + '</a></div>' // The content of the info window with a link and CSS styling
					});

			// Add a click event listener to the marker
			kakao.maps.event.addListener(marker, 'click', makeClickListener(
					map, marker, infoWindow));
		}

		// Function to return a function that opens the infoWindow when the marker is clicked
		function makeClickListener(map, marker, infoWindow) {
			return function() {
				if (currentInfoWindow) {
					currentInfoWindow.close(); // Close the currently open info window
				}
				infoWindow.open(map, marker); // Open the info window on the marker's position
				currentInfoWindow = infoWindow; // Set the newly opened info window as the current one
			};
		}
	</script>

	<script>
		var slideIndex = 1;
		showSlide(slideIndex);

		function prevSlide() {
			showSlide(slideIndex -= 1);
		}

		function nextSlide() {
			showSlide(slideIndex += 1);
		}

		function showSlide(n) {
			var slides = document.getElementsByClassName("slide");
			if (n > slides.length) {
				slideIndex = 1;
			}
			if (n < 1) {
				slideIndex = slides.length;
			}
			for (var i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			slides[slideIndex - 1].style.display = "block";
		}
	</script>


</body>
