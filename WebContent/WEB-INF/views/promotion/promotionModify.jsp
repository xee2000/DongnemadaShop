<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<body>

	<%@ include file="/WEB-INF/views/include/adminNav.jsp"%>

	<div class="container">
		<h1>프로모션 수정</h1>
		<form action="/board/write/action" method="post">
			<div class="mb-3">
				<label class="form-label" >제목</label> <input type="text"
					class="form-control" name="title">
			</div>
			<div class="mb-3">
				<label class="form-label">내용</label>
				<textarea class="form-control" rows="18" name="content" id="content">서머노트 쓸것</textarea>
			</div>
			<button type="button" class="btn btn-success"
				onclick="">취소</button>
			<button type="submit" class="btn btn-primary">수정 완료</button>
		</form>
	</div>

</body>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>