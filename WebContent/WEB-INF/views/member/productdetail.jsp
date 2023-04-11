<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<body>
	<style>
.nice-select {
	display: none;
}
</style>
	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css"
		type="text/css">
	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/resources/bootstrap/css/font-awesome.min.css"
		type="text/css">
	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/resources/bootstrap/css/elegant-icons.css"
		type="text/css">
	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/resources/bootstrap/css/nice-select.css"
		type="text/css">
	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/resources/bootstrap/css/jquery-ui.min.css"
		type="text/css">
	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/resources/bootstrap/css/owl.carousel.min.css"
		type="text/css">
	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/resources/bootstrap/css/slicknav.min.css"
		type="text/css">
	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/resources/bootstrap/css/style.css"
		type="text/css">
	<section class="product-details spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6">
					<div class="product__details__pic">
						<div class="product__details__pic__item">
							<form id="cart-form" method="post"
								action="<%=request.getContextPath()%>/member/productdetail.do">
								<div class="manPicture" name="product_code"
									data-id="${product.product_code }"
									style="font-weight: bold; display: inline-block; border-width: 1px solid red; width: 410px; height: 410px; display: block; margin: 0 auto;"></div>
								<input type="hidden" name="product_code"
									value="${product.product_code }">
						</div>
						<div
							class="product__details__pic__slider owl-carousel owl-loaded owl-drag">



							<div class="owl-stage-outer">
								<div class="owl-stage"
									style="transform: translate3d(-350px, 0px, 0px); transition: all 1.2s ease 0s; width: 1050px;">
									<div class="owl-item cloned"
										style="width: 67.5px; margin-right: 20px;">
										<img
											data-imgbigurl="img/product/details/product-details-2.jpg"
											src="img/product/details/thumb-1.jpg" alt="">
									</div>
									<div class="owl-item cloned"
										style="width: 67.5px; margin-right: 20px;">
										<img
											data-imgbigurl="img/product/details/product-details-3.jpg"
											src="img/product/details/thumb-2.jpg" alt="">
									</div>
									<div class="owl-item cloned"
										style="width: 67.5px; margin-right: 20px;">
										<img
											data-imgbigurl="img/product/details/product-details-5.jpg"
											src="img/product/details/thumb-3.jpg" alt="">
									</div>
									<div class="owl-item cloned"
										style="width: 67.5px; margin-right: 20px;">
										<img
											data-imgbigurl="img/product/details/product-details-4.jpg"
											src="img/product/details/thumb-4.jpg" alt="">
									</div>
									<div class="owl-item active"
										style="width: 67.5px; margin-right: 20px;">
										<img
											data-imgbigurl="img/product/details/product-details-2.jpg"
											src="img/product/details/thumb-1.jpg" alt="">
									</div>
									<div class="owl-item active"
										style="width: 67.5px; margin-right: 20px;">
										<img
											data-imgbigurl="img/product/details/product-details-3.jpg"
											src="img/product/details/thumb-2.jpg" alt="">
									</div>
									<div class="owl-item active"
										style="width: 67.5px; margin-right: 20px;">
										<img
											data-imgbigurl="img/product/details/product-details-5.jpg"
											src="img/product/details/thumb-3.jpg" alt="">
									</div>
									<div class="owl-item active"
										style="width: 67.5px; margin-right: 20px;">
										<img
											data-imgbigurl="img/product/details/product-details-4.jpg"
											src="img/product/details/thumb-4.jpg" alt="">
									</div>
									<div class="owl-item cloned"
										style="width: 67.5px; margin-right: 20px;">
										<img
											data-imgbigurl="img/product/details/product-details-2.jpg"
											src="img/product/details/thumb-1.jpg" alt="">
									</div>
									<div class="owl-item cloned"
										style="width: 67.5px; margin-right: 20px;">
										<img
											data-imgbigurl="img/product/details/product-details-3.jpg"
											src="img/product/details/thumb-2.jpg" alt="">
									</div>
									<div class="owl-item cloned"
										style="width: 67.5px; margin-right: 20px;">
										<img
											data-imgbigurl="img/product/details/product-details-5.jpg"
											src="img/product/details/thumb-3.jpg" alt="">
									</div>
									<div class="owl-item cloned"
										style="width: 67.5px; margin-right: 20px;">
										<img
											data-imgbigurl="img/product/details/product-details-4.jpg"
											src="img/product/details/thumb-4.jpg" alt="">
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
						<h3>${product.product_name }</h3>

						<div class="product__details__price">${product.product_price }</div>
						<p>${product.product_detail }</p>

						<ul>
							<li style="display: flex;">수량<input type="number"
								name="cart_qty" step="1"> <!-- 이마트 또는 롯데마트 홈플러스인 경우 -->
								수령방법 <select name="delivery_option">
									<c:if
										test="${shop_brand == '이마트' || shop_brand == '롯데마트' || shop_brand == '홈플러스'}">
										<option value="-----">선택</option>
										<option value="pickup">직접수령</option>
										<option value="delivery">택배수령</option>
									</c:if>
									<c:if
										test="${shop_brand != '이마트' && shop_brand != '롯데마트' && shop_brand != '홈플러스'}">
										<option value="-----">선택</option>
										<option value="pickup">직접수령</option>
									</c:if>
							</select>

							</li>
							<br />
							<br />

							<li style="display: flex;"><c:if
									test="${empty loginUser && loginUser eq null}">
									<a href="javascript:alert('로그인 후 이용해주세요')" class="primary-btn">장바구니
										담기</a>
								</c:if> <c:if test="${! empty loginUser && loginUser ne null }">
									<a onclick="cartregist();" class="primary-btn">장바구니담기</a>
								</c:if> <c:if test="${empty loginUser && loginUser eq null}">
									<a href="javascript:alert('로그인 후 이용해주세요')" class="primary-btn">바로구매</a>
								</c:if> <c:if test="${! empty loginUser && loginUser ne null }">
									<a href="orderpage.do();" class="primary-btn">바로구매</a>
								</c:if></li>

						</ul>

					</div>
				</div>
				</form>
			</div>
		</div>
		<div class="col-lg-12">
			<div class="product__details__tab">
				<ul class="nav nav-tabs" role="tablist">
					<li class="nav-item"><a class="nav-link active"
						data-toggle="tab" href="#tabs-1" role="tab" aria-selected="true">Description</a>
					</li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#tabs-2" role="tab" aria-selected="false">Information</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#tabs-3" role="tab" aria-selected="false">Reviews <span>(1)</span></a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="tabs-1" role="tabpanel">
						<div class="product__details__tab__desc">
							<div class="product_infomation" style="margin-left: 37.8%;">
								<h6>Products Infomation</h6>
								<table>
									<tbody>
										<tr>
											<th>제조사</th>
											<td>${product.product_maker }</td>
										</tr>
										<tr>
											<th>원산지/제조국가</th>
											<td>${product.product_origin }</td>
										</tr>
										<tr>
											<th>보관방법</th>
											<td>${product.product_keep }</td>
										</tr>
									</tbody>

								</table>

							</div>
						</div>
					</div>


				</div>
			</div>
		</div>
		</div>
		</div>
	</section>
	<script>
    window.onload=function(){
       MemberPictureThumb('<%=request.getContextPath()%>');
		}
	</script>
	<script>
		function cartregist() {
			document.getElementById("cart-form").submit();
			alert("장바구니에 등록되었습니다.");
		}
	</script>
</body>