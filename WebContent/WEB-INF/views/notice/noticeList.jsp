<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<body>
	<%@ include file="/WEB-INF/views/include/adminNav.jsp"%>
	<br />
	<div class="row">
		<div class="col-2"></div>
		<div class="col-8">
			<h2>공지사항</h2>
		</div>
		<div class="col-2"></div>
	</div>
	<br />
	<div class="row">
		<div class="col-2"></div>
		<div class="col-8">

			<div class="card">
				<div class="card-header">
					<h3 class="card-title">공지사항 목록</h3>
					<div class="card-tools">
						<div class="input-group input-group-sm" style="width: 150px;">
							<input type="text" name="table_search"
								class="form-control float-right" placeholder="Search">
							<div class="input-group-append">
								<button type="submit" class="btn btn-default">
									<i class="fas fa-search"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
				<div class="card-body table-responsive p-0" style="height: 300px;">
					<table class="table table-head-fixed text-nowrap">
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성날짜</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="notice" items="${dataMap.notice_list}">

								<tr style='font-size: 0.85em; cursor: pointer;'
									onclick="javascript:location.href='<%=request.getContextPath()%>/notice/detail.do?notice_code=${notice.notice_code }'">
									<td>${notice.notice_code }</td>
									<td>${notice.notice_title }</td>
									<td><fmt:formatDate value="${notice.notice_regdate }"
											pattern="yyyy-MM-dd" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="card-footer">
					<%@ include file="/WEB-INF/views/module/pagination.jsp"%>
				</div>

			</div>
			<div class="col-12">
				<button type="button" class="btn btn-success float-right"
					onclick="javascript:location.href='<%=request.getContextPath()%>/notice/registForm.do'">공지
					등록</button>
			</div>

		</div>

	</div>
	<div class="col-2"></div>

</body>