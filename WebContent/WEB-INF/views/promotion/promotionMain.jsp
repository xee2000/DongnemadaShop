<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<body>

	<%@ include file="/WEB-INF/views/include/adminNav.jsp"%>
	<br />
	<br />
	<div class=" d-flex justify-content-center">
		<h2>프로모션 메인페이지</h2>
	</div>
	<br />
	<br />
	<div class="row">
		<div class="col-3"></div>
		<div class="col-6">
			<div class="row">
				<div class="col-4"></div>
				<div class="col-2">
					<button type="button" class="btn btn-block btn-info" style="height:160px;">프로모션 리스트</button>
				</div>
				<div class="col-2">
					<button type="button" class="btn btn-block btn-info" style="height:160px;">프로모션 신청 확인</button>
				</div>
				<div class="col-4"></div>
			</div>
			<br /> <br />
			<br /> <br />
		</div>
		<div class="col-3"></div>
	</div>

</body>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>