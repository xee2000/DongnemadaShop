<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<body>

	<%@ include file="/WEB-INF/views/include/adminNav.jsp"%>

	<div class="container">
		<h1>공지사항 수정</h1>
		<input type="hidden" value="${notice.notice_code }"/>
		<form action="<%=request.getContextPath() %>/notice/modify.do?notice_code=${notice.notice_code}" method="post">
			<div class="mb-3">
				<label class="form-label" >제목</label> <input type="text"
					class="form-control" name="notice_title">
			</div>
			<div class="mb-3">
				<label class="form-label">내용</label>
				<textarea class="form-control" rows="5" name="notice_content"></textarea>
			</div>
			<button type="button" class="btn btn-success"
				onclick="location.href='<%=request.getContextPath()%>/notice/list.do'">취소</button>
			<button type="submit" class="btn btn-primary">수정 완료</button>
		</form>
	</div>

</body>