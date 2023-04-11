<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<body>
	<%@ include file="/WEB-INF/views/include/adminNav.jsp"%>


	<section class="product-details spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6">
					<div class="product__details__pic">
						<div class="product__details__pic__item">
							<img class="product__details__pic__item--large"
								src="img/product/details/product-details-1.jpg" alt="상품 이미지-big">
						</div>
						<div
							class="product__details__pic__slider owl-carousel owl-loaded owl-drag">
							<div class="owl-nav disabled">
								<button type="button" role="presentation" class="owl-prev">
									<span aria-label="Previous">‹</span>
								</button>
								<button type="button" role="presentation" class="owl-next">
									<span aria-label="Next">›</span>
								</button>
							</div>
							<div class="owl-dots disabled">
								<button role="button" class="owl-dot active">
									<span></span>
								</button>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="product__details__text">
						<h3>우리집 텃밭 대파</h3>
						<div class="product__details__rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star-half-o"></i> <span>(18 reviews)</span>
						</div>
						<div class="product__details__price">1000원</div>
						<p>간단 상품 설명칸</p>
						<ul>
							<li><b>활용법</b> <span>In Stock</span></li>
							<li><b>배송일수</b> <span>01 day shipping. <samp>Free
										pickup today</samp></span></li>
							<li><b>무게</b> <span>0.5 kg</span></li>
							<div class="share">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa fa-instagram"></i></a> <a href="#"><i
									class="fa fa-pinterest"></i></a>
							</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="product__details__tab">
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="tab" href="#tabs-1" role="tab" aria-selected="true">상품
									이미지</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tabs-2" role="tab" aria-selected="false">상품 정보</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="tabs-1" role="tabpanel">
								<div class="product__details__tab__desc">
									<h6>상품 설명</h6>
									<p>상품 이미지</p>
								</div>
							</div>
							<div class="tab-pane" id="tabs-2" role="tabpanel">
								<div class="product__details__tab__desc">
									<h6>상품 정보</h6>
									<p>상품 정보 설명</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-2">
					<button type="button" class="btn btn-block btn-info">상품
						비활성화</button>
				</div>
				<div class="col-2">
					<button type="button" class="btn btn-block btn-info">상품
						활성화</button>
				</div>
			</div>
		</div>
	</section>

</body>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>