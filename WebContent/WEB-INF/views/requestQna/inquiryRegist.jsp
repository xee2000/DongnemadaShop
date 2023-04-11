<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<body>

	<%@ include file="/WEB-INF/views/include/adminNav.jsp"%>

	<div class="container">
		<h1>1:1 문의 답변</h1>
		<form action="/board/write/action" method="post">
			<div class="row">
			<div class="col-7"><div class="mb-3">
			<label class="form-label">제목</label> <input type="text"
				class="form-control" name="" value="${info.title}" readonly>
		</div></div>
			<div class="row col-5">
				<div class="mb-3 col-4">
					<label class="form-label">작성자</label> <input type="text"
						class="form-control" name="" value="${info.registerId}"
						readonly>
				</div>
				<div class="mb-3 col-5">
					<label class="form-label">작성일</label> <input type="text"
						class="form-control" name="" value="${info.registerId}"
						readonly>
				</div>
				<div class="mb-3 col-3">
					<label class="form-label">처리 현황</label> <input type="text"
						class="form-control" name="" value="${info.registerId}"
						readonly>
				</div>
			</div>

		</div>
		<div class="mb-3">
			<label class="form-label">질문 내용</label>
			<textarea class="form-control" rows="5" name=""
				text="${info.content}" readonly></textarea>
		</div>
		
		<div class="mb-3">
			<label class="form-label">답변</label>
			<textarea class="form-control" rows="5" name=""
				text="${info.content}"></textarea>
		</div>
			<button type="button" class="btn btn-success" onclick="">이전으로</button>
			<button type="submit" class="btn btn-primary">&nbsp;등&nbsp;록&nbsp;</button>
		</form>
	</div>

</body>