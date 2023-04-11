<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<body>
	<%@ include file="/WEB-INF/views/include/adminNav.jsp"%>
	<br />
	<div class="row">
		<div class="col-2"></div>
		<div class="col-8">
			<h2>프로모션 신청 리스트</h2>
		</div>
		<div class="col-2"></div>
	</div>
	<br />
	<div class="row">
		<div class="col-2"></div>
		<div class="col-8">

			<div class="card">
				<div class="card-header">
					<h3 class="card-title">프로모션 신청 목록</h3>
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
								<th>번호</th>
								<th>제목</th>
								<th>신청 가맹점명</th>
								<th>작성날짜</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>8</td>
								<td>gs25 맥주 10캔 1만원 행사</td>
								<td>gs25</td>
								<td>2023.01.11</td>
							</tr>
							<tr>
								<td>8</td>
								<td>gs25 맥주 10캔 1만원 행사</td>
								<td>gs25</td>
								<td>2023.01.11</td>
							</tr>
							<tr>
								<td>8</td>
								<td>gs25 맥주 10캔 1만원 행사</td>
								<td>gs25</td>
								<td>2023.01.11</td>
							</tr>
							<tr>
								<td>8</td>
								<td>gs25 맥주 10캔 1만원 행사</td>
								<td>gs25</td>
								<td>2023.01.11</td>
							</tr>
							<tr>
								<td>8</td>
								<td>gs25 맥주 10캔 1만원 행사</td>
								<td>gs25</td>
								<td>2023.01.11</td>
							</tr>
							<tr>
								<td>8</td>
								<td>gs25 맥주 10캔 1만원 행사</td>
								<td>gs25</td>
								<td>2023.01.11</td>
							</tr>
							<tr>
								<td>8</td>
								<td>gs25 맥주 10캔 1만원 행사</td>
								<td>gs25</td>
								<td>2023.01.11</td>
							</tr>
							<tr>
								<td>8</td>
								<td>gs25 맥주 10캔 1만원 행사</td>
								<td>gs25</td>
								<td>2023.01.11</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="card-footer clearfix row">
					<ul
						class="pagination pagination-sm m-0 d-flex justify-content-center col-12">
						<li class="page-item"><a class="page-link" href="#">«</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">»</a></li>
					</ul>
					<div class="col-12">
						<button type="button" class="btn btn-success float-right"
							onclick="">공지 등록</button>
					</div>
				</div>

			</div>

		</div>

	</div>
	<div class="col-2"></div>

</body>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>