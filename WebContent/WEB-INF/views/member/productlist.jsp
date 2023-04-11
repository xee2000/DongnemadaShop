<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set value="${dataMap.productList }" var="productList" />
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />
<body style="font-family: 'Nanum Gothic', sans-serif;">

	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/resources/css/member/member_productlist.css">

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
		<label for="id" class="col-sm-12"
			style="font-size: 0.9em; margin-left: 25%;"> <i
			style="margin-right: 6x; font-size: 35px; color: #cc0000;"
			class="fa-sharp fa-solid fa-fire-flame-curved"></i>
			<div
				style="margin-top: 10px; margin-bottom: 10px; font-size: 25px; font-weight: bold; display: inline-block; border-width: 1px solid red;">카테고리</div>
		</label>
	</div>
	<%@ include file="/WEB-INF/views/include/category.jsp"%>
	<!-- 지도를 표시할 div 입니다 -->



	<div style="margin-left: 25%; margin-top: 10px; margin-bottom: 10px;">


		<select class="form-control col-md-3" name="searchType"
			id="searchType">
			<option value="">검색구분</option>
			<option value="pn" ${cri.searchType=='pn' ? "selected":"" }>상품명</option>
			<option value="cn" ${cri.searchType=='cn' ? "selected":"" }>카테고리명</option>
			<option value="pm" ${cri.searchType=='pm' ? "selected":"" }>브랜드</option>
		</select>
		<!-- keyword -->
		<input type="text" placeholder="상품을 입력해주세요" value="${cri.keyword }"
			style="outline: #BDBDBD; border: 1px solid black; height: 28px; width: 400px; border-radius: 5px;">
		<button type="button" onclick="list_go(1);"
			style="width: 70px; height: 30px; border: none; background: #fdd023; border-radius: 5px;">검색</button>

	</div>
	<div class="page" style="margin-left: 75%;">
		<select class="form-control col-md-3" name="perPageNum"
			id="perPageNum" onchange="">
			<option value="16" ${cri.perPageNum eq 16 ? 'selected' : '' }>정렬개수</option>
			<option value="10" ${cri.perPageNum eq 10 ? 'selected' : '' }>10개씩</option>
			<option value="20" ${cri.perPageNum eq 20 ? 'selected' : '' }>20개씩</option>
			<option value="30" ${cri.perPageNum eq 30 ? 'selected' : '' }>30개씩</option>
		</select>
	</div>
	<div style="margin: 0 auto; text-align: center;">
		<div style="width: 900px; display: inline-block;">
			<br />
			<div class="card card-body">
				<ul style="display: flex;">
					<c:forEach items="${productList }" var="product">
						<li>
							<div class="manPicture" data-id="${product.product_code }"
								style="width: 120px; height: 120px; display: block; margin: 0 auto;"></div>
							<div class="product_name">${product.product_name }</div>
							<div class="product_price">${product.product_price }</div>
						</li>
					</c:forEach>
				</ul>


			</div>


		</div>
	</div>


	<%@ include file="/WEB-INF/views/module/pagination.jsp"%>

	<script>
  window.onload=function(){
MemberPictureThumb('<%=request.getContextPath()%>
		');
		}
	</script>

</body>
