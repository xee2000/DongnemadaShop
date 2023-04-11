<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<body>
	<%@ include file="/WEB-INF/views/include/adminNav.jsp"%>
	<br />
	<div class="row">
		<div class="col-2"></div>
		<div class="col-8">
			<h2>가맹점 상품 목록</h2>
		</div>
		<div class="col-2"></div>
	</div>
	<br />
	<div class="row">
		<div class="col-2"></div>
		<div class="col-8">

			<div class="card">
				<div class="card-header">
					<h3 class="card-title">(해당 가맹점의)상품 목록</h3>
					<div class="card-tools">
						<div class="input-group input-group-sm" style="width: 150px;">
							<input type="text" name="table_search"
								class="form-control float-right" placeholder="Search">
							<div class="input-group-append">
								<button type="submit" class="btn btn-default">
									<i class="fas fa-search"></i>
								</button>
							</div>
						</div>
					</div>
				</div>

				<div class="card-body table-responsive p-0" style="height: 500px;">
					<table class="table table-head-fixed text-nowrap">
						<thead>
							<tr>
								<th></th>
								<th>상품명</th>
								<th>상품 정보</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>사진</td>
								<td>우리집 텃밭 대파</td>
								<td>1000원</td>
							</tr>
							<tr>
								<td>사진</td>
								<td>우리집 텃밭 대파</td>
								<td>1000원</td>
							</tr>
							<tr>
								<td>사진</td>
								<td>우리집 텃밭 대파</td>
								<td>1000원</td>
							</tr>
							<tr>
								<td>사진</td>
								<td>우리집 텃밭 대파</td>
								<td>1000원</td>
							</tr>
							<tr>
								<td>사진</td>
								<td>우리집 텃밭 대파</td>
								<td>1000원</td>
							</tr>
							<tr>
								<td>사진</td>
								<td>우리집 텃밭 대파</td>
								<td>1000원</td>
							</tr>
							<tr>
								<td>사진</td>
								<td>우리집 텃밭 대파</td>
								<td>1000원</td>
							</tr>
							<tr>
								<td>사진</td>
								<td>우리집 텃밭 대파</td>
								<td>1000원</td>
							</tr>
							<tr>
								<td>사진</td>
								<td>우리집 텃밭 대파</td>
								<td>1000원</td>
							</tr>
							
						</tbody>
					</table>
				</div>
				<div class="card-footer clearfix row">
					<ul	class="pagination pagination-sm m-0 d-flex justify-content-center col-12">
						<li class="page-item"><a class="page-link" href="#">«</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">»</a></li>
					</ul>
				</div>

			</div>

		</div>

	</div>
	<div class="col-2"></div>
	
</body>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>