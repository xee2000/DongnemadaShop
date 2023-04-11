
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<body>
	<%@ include file="/WEB-INF/views/include/adminNav.jsp"%>

	<div class="container">
		<h1>공지 상세</h1>
		<input type="hidden" value="${notice.notice_code }" />
		<div class="row">
			<div class="col-9">
				<div class="mb-3">
					<label class="form-label">제목</label> <input type="text"
						class="form-control" name="" value="${notice.notice_title }"
						readonly>
				</div>
			</div>
			<div class="col-3">

				<div class="mb-3">
					<label for="regDate">작성일</label> <span class="form-control"
						id="notice_regdate" readonly><fmt:formatDate
							value="${notice.notice_regdate }" pattern="yyyy-MM-dd" /></span>

				</div>
			</div>

		</div>
		<div class="mb-3">
			<label class="form-label">공지 내용</label>
			<textarea class="form-control" rows="5" name="" readonly>${notice.notice_content}</textarea>
		</div>
		<button type="button" class="btn btn-success"
			onclick="javascript:location.href='<%=request.getContextPath()%>/notice/list.do'">목록으로</button>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<button type="button" class="btn btn-primary"
			onclick="location.href='<%=request.getContextPath()%>/notice/modifyForm.do?notice_code=${notice.notice_code}'">수정</button>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<button type="button" class="btn btn-danger"
			onclick="javascript:location.href='<%=request.getContextPath()%>/notice/remove.do?notice_code=${notice.notice_code}'">삭제</button>

	</div>



</body>