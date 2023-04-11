
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<body>
	<%@ include file="/WEB-INF/views/include/adminNav.jsp"%>

	<div class="container">
		<h1>QnA 상세</h1>

		<div class="row">
			<div class="col-12">
				<div class="mb-3">
					<label class="form-label">제목</label> <input type="text"
						class="form-control" name="" value="${info.title}" readonly>
				</div>
			</div>

		</div>
		<div class="mb-3">
			<label class="form-label">질문 상세</label>
			<textarea class="form-control" rows="5" name=""
				text="${info.content}" readonly></textarea>
		</div>
		<button type="button" class="btn btn-success" onclick="">이전화면</button>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<button type="button" class="btn btn-primary" onclick="">수정하기</button>
	</div>

</body>