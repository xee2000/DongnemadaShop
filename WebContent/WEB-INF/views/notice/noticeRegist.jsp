<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<body>

	<%@ include file="/WEB-INF/views/include/adminNav.jsp"%>

	<div class="container">
		<h1>공지사항 등록</h1>
		<input type="hidden" name="notice_code" value="${notice.fn_seq('no') }" />
		<form action="<%=request.getContextPath() %>/notice/regist.do" method="post">
			<div class="mb-3">
				<label class="form-label">제목</label> <input type="text"
					class="form-control" name="notice_title">
			</div>
			<div class="mb-3">
				<label class="form-label">내용</label>
				<textarea class="form-control" rows="18" name="notice_content" id="content"></textarea>
			</div>
			<button type="button" class="btn btn-success" onclick="javascript:location.href='<%=request.getContextPath()%>/notice/list.do'">목록으로</button>
			<button type="submit" class="btn btn-primary">등록</button>
		</form>
	</div>
</body>