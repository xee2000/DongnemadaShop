
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<body>
	<%@ include file="/WEB-INF/views/include/adminNav.jsp"%>

	<div class="container">
		<h1>프로모션 상세</h1>

		<div class="row">
			<div class="col-12">
				<label class="form-label">제목</label> <input type="text"
					class="form-control" name="" value="${info.title}" readonly>
			</div>
		</div>
		<div class="row">
			<div class="col-4">
				<label class="form-label">가맹점명</label> <input type="text"
					class="form-control" name="" value="${info.title}" readonly>
			</div>
			<div class="col-4">
				<label class="form-label">가맹점 분류</label> <input type="text"
					class="form-control" name="" value="${info.registerId}" readonly>
			</div>
			<div class="col-4">
				<label class="form-label">작성일</label> <input type="text"
					class="form-control" name="" value="${info.registerId}" readonly>
			</div>
		</div>
		<div class="mb-3">
			<label class="form-label">프로모션 내용</label>
			<textarea class="form-control" rows="5" name=""
				text="${info.content}" readonly></textarea>
		</div>
		<button type="button" class="btn btn-success" onclick="">목록으로</button>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<button type="button" class="btn btn-primary" onclick="">수정</button>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<button type="button" class="btn btn-danger" onclick="">삭제</button>

	</div>

</body>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>