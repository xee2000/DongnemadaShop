<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<body>
	<%@ include file="/WEB-INF/views/include/adminNav.jsp"%>
	<br />
	<br />
	<div class="row">
		<div class="col-4"></div>
		<div class="col-4 d-flex justify-content-center">
			<h2>가맹점 목록</h2>
		</div>
		<div class="col-4"></div>
	</div>
	<br />
	<br />


	<div class="row">
		<div class="col-3"></div>
		<div class="col-6">
			<div class="card">
				<div class="card-header">
					<h3 class="card-title">가맹점 목록</h3>
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

				<div class="card-body table-responsive p-0">
					<table class="table table-hover text-nowrap">
						<thead>
							<tr>
								<th>사업자 등록 번호</th>
								<th>가맹점명</th>
								<th>가맹점 주소</th>
								<th>대표자</th>
								<th>대표자 전화번호</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>111-11111-11</td>
								<td>홈플러스</td>
								<td>대전광역시 유성구</td>
								<td>김민중</td>
								<td>010-9545-1652</td>
							</tr>
							<tr>
								<td>219</td>
								<td>Alexander Pierce</td>
								<td>11-7-2014</td>
								<td><span class="tag tag-warning">Pending</span></td>
								<td>Bacon ipsum dolor sit amet salami venison chicken flank
									fatback doner.</td>
							</tr>
							<tr>
								<td>657</td>
								<td>Bob Doe</td>
								<td>11-7-2014</td>
								<td><span class="tag tag-primary">Approved</span></td>
								<td>Bacon ipsum dolor sit amet salami venison chicken flank
									fatback doner.</td>
							</tr>
							<tr>
								<td>175</td>
								<td>Mike Doe</td>
								<td>11-7-2014</td>
								<td><span class="tag tag-danger">Denied</span></td>
								<td>Bacon ipsum dolor sit amet salami venison chicken flank
									fatback doner.</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="card-footer clearfix">
					<ul class="pagination pagination-sm m-0 float-right">
						<li class="page-item"><a class="page-link" href="#">«</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">»</a></li>
					</ul>
				</div>

			</div>

		</div>
		<div class="col-3"></div>
	</div>

</body>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>