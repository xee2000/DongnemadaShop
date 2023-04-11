
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<body>
	<%@ include file="/WEB-INF/views/include/adminNav.jsp"%>


	<div>
		<div class="row">
			<div class="col-3"></div>
			<div class="col-6">
				<h1>가맹점 신청 상세</h1>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-3"></div>
		<div class="col-5">
			<div class="mb-3">
				<label class="form-label">가맹점명</label> <input type="text"
					class="form-control" name="" value="${info.title}" readonly>
			</div>
		</div>
		<div class="col-1">
			<div class="mb-3">
				<label class="form-label">처리현황</label> <input type="text"
					class="form-control" name="" value="${info.title}" readonly>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-3"></div>
		<div class="col-1">
			<label class="form-label">가맹점 분류</label> <input type="text"
				class="form-control" name="" value="${info.registerId}" readonly>
		</div>
		<div class="col-1">
			<label class="form-label">대표자</label> <input type="text"
				class="form-control" name="" value="${info.registerId}" readonly>
		</div>

		<div class="col-2">
			<label class="form-label">전화번호</label> <input type="text"
				class="form-control" name="" value="${info.registerId}" readonly>
		</div>
		<div class="col-2">
			<label class="form-label">이메일</label> <input type="text"
				class="form-control" name="" value="${info.registerId}" readonly>
		</div>
	</div>

	<div class="row">
		<div class="col-3"></div>
		<div class="mb-3 col-4">
			<label class="form-label">주소</label> <input type="text"
				class="form-control" name="" value="${info.registerId}" readonly>
		</div>
		<div class="mb-3 col-2">
			<label class="form-label">사업자 등록 번호</label> <input type="text"
				class="form-control" name="" value="${info.registerId}" readonly>
		</div>
	</div>

	<div class="row">
		<div class="col-3"></div>
		<div class="mb-3 col-6">
			<label class="form-label">가맹점 등록 계약서</label>
			<textarea class="form-control" rows="5" name=""
				text="${info.content}" readonly></textarea>
		</div>
	</div>
	<div class="row">
		<div class="col-3"></div>
		<div class="row col-6">
			<button type="button"
				class="btn btn-success d-flex justify-content-center" onclick="">목록으로</button>
			&nbsp;&nbsp;
			<button type="button"
				class="btn btn-primary d-flex justify-content-center" onclick="">승인하기</button>
			&nbsp;&nbsp;
			<button type="button"
				class="btn btn-primary d-flex justify-content-center" onclick="">반려하기</button>
		</div>
	</div>
</body>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>