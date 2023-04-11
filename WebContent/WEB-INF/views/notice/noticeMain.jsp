<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<body>

	<%@ include file="/WEB-INF/views/include/adminNav.jsp"%>
	<br />
	<br />
	<div class=" d-flex justify-content-center">
		<h2>고객센터 메인페이지</h2>
	</div>
	<br />
	<br />
	<div class="row">
		<div class="col-3"></div>
		<div class="col-6">
			<div class="row">
				<div class="col-3"></div>
				<div class="col-3">
					<button type="button" class="btn btn-block btn-info"
						style="height: 170px;"
						onclick="javascript:location.href='<%=request.getContextPath()%>/notice/list.do'">공지사항 리스트</button>

				</div>
				<div class="col-3">
					<button type="button" class="btn btn-block btn-info"
						style="height: 170px;" onclick="javascript:location.href='<%=request.getContextPath()%>/notice/registForm.do'">공지사항 등록</button>
				</div>
				<div class="col-3"></div>
			</div>
			<br /> <br /> <br /> <br />
		</div>
		<div class="col-3"></div>
	</div>

</body>