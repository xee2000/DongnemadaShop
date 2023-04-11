<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<body>

	<%@ include file="/WEB-INF/views/include/adminNav.jsp"%>

	<div class="container">
		<h1>프로모션 등록</h1>
		<form action="/board/write/action" method="post">
			<div class="mb-3">
				<label class="form-label">제목</label> <input type="text"
					class="form-control" name="title">
			</div>
			<div class="mb-3">
				<label class="form-label">내용</label>
				<textarea class="form-control" rows="18" name="content" id="content">서머노트 쓸것</textarea>
			</div>
			<button type="button" class="btn btn-success" onclick="">목록으로</button>
			<button type="submit" class="btn btn-primary">등록</button>
		</form>
	</div>
	<script>
		$(function() {
			// Summernote
			$('#summernote').summernote()
		});
	</script>
</body>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>