<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<body>

	<%@ include file="/WEB-INF/views/include/adminNav.jsp"%>

	<div class="container">
		<h1>QnA 등록</h1>
		<input type="hidden" name="qna_code" value="${notice.fn_seq('no') }" />
		<form action="<%=request.getContextPath() %>/qna/regist.do" method="post">
			<div class="mb-3">
				<label class="form-label">질문 내용</label>
				<textarea class="form-control" rows="5" name="qna_title"
					text="${qna.qna_title}"></textarea>
			</div>
			<div class="mb-3">
				<label class="form-label">답변 내용</label>
				<textarea class="form-control" rows="5" name="qna_content"
					text="${qna.qna_content}"></textarea>
			</div>
			<button type="button" class="btn btn-success" onclick="">이전으로</button>
			<button type="submit" class="btn btn-primary">&nbsp;등&nbsp;록&nbsp;</button>
		</form>
	</div>

</body>